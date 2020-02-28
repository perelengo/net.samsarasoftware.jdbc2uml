package net.samsarasoftware.jdbc2uml;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.PrintStream;

/*-
 * #%L
 * net.samsarasoftware.jdbc2uml
 * %%
 * Copyright (C) 2014 - 2020 Pere Joseph Rodriguez
 * %%
 * Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

     http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
 * #L%
 */

import java.math.BigDecimal;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.sql.Connection;
import java.sql.DatabaseMetaData;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Types;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.Vector;

import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSession;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;

import org.apache.commons.beanutils.BeanUtilsBean;
import org.apache.commons.beanutils.ConvertUtilsBean;
import org.apache.log4j.Level;
import org.apache.log4j.Logger;
import org.apache.log4j.PropertyConfigurator;


public final class Jdbc2uml implements LoginCallback{
	protected static ConvertUtilsBean conversor=null;
	
	static{
		PropertyConfigurator.configure(Jdbc2uml.class.getClassLoader().getResource("log4j.properties"));
		Logger.getRootLogger().setLevel(Level.WARN);
		conversor = BeanUtilsBean.getInstance().getConvertUtils();
    	conversor.register(false, true, -1);
	}
	
	private static Logger log=Logger.getLogger(Jdbc2uml.class.getName());

	
	String JDBC_DRIVER_ORIGEN = "sun.jdbc.odbc.JdbcOdbcDriver";  
    String DB_URL_ORIGEN = "";
    String USER_ORIGEN = null;
    String PASS_ORIGEN = null;
	String catalogPattern   = null;
	String schemaPattern    = null;    
	String DTYPE = "DTYPE";
	PrintStream outputStream;
   Connection c_origen = null;
   
   Hashtable<String, PrimaryKeyMetaData> primaryKeys=new Hashtable<String, PrimaryKeyMetaData>();
   Hashtable<String,String> joinedTableGeneralizations=new Hashtable<String,String>();
   Hashtable<String,Hashtable<String,Hashtable<String,String>>> profiles=new Hashtable<String,Hashtable<String,Hashtable<String,String>>>();

   
   
   public Jdbc2uml(String jDBC_DRIVER_ORIGEN, String dB_URL_ORIGEN, String uSER_ORIGEN, String pASS_ORIGEN,
		String catalogPattern, String schemaPattern, String dTYPE, String outputFileName) throws FileNotFoundException {
	super();
	JDBC_DRIVER_ORIGEN = jDBC_DRIVER_ORIGEN;
	DB_URL_ORIGEN = dB_URL_ORIGEN;
	USER_ORIGEN = uSER_ORIGEN;
	PASS_ORIGEN = pASS_ORIGEN;
	this.catalogPattern = catalogPattern;
	this.schemaPattern = schemaPattern;
	DTYPE = dTYPE;
	if(outputFileName!=null){
		File f=new File(outputFileName);
		f.getParentFile().mkdirs();
		outputStream=new PrintStream(f);
	}else{
		outputStream=System.out;
	}
}


public Jdbc2uml(String[] args) throws Exception{
	   parseParams(args);
	   outputStream=System.out;
	   run();   
   }
   
	
   private void parseParams(String[] args) throws Exception {
		if(args.length<4) printUsage();

	   for (int i=0;i<args.length;i++) {
			if("-url_origen".equals(args[i])){
				DB_URL_ORIGEN=args[++i];
			}else if("-driver".equals(args[i])){
				JDBC_DRIVER_ORIGEN=args[++i];
			}else if("-catalog".equals(args[i])){
				catalogPattern=args[++i];
			}else if("-schema".equals(args[i])){
				schemaPattern=args[++i];
			}else if("-user".equals(args[i])){
				USER_ORIGEN=args[++i];
			}else if("-password".equals(args[i])){
				PASS_ORIGEN=args[++i];
			}else if("-DTYPE".equals(args[i])){
				DTYPE=args[++i];
			}else{
				printUsage();
			}
		}
		
	}
   
   
	private void printUsage() throws Exception {
		throw new Exception("Errores en los argumentos. Uso:\n java -jar <nombrejar>.jar \n "
				+ "-url_origen <URL JDBC without user nor pass >\n "
				+ "-driver <oracle.jdbc.driver.OracleDriver | com.mysql.cj.jdbc.Driver | >"	
				+ "[-catalog <catalog>]"
				+ "[-schema <schema>]"
				+ "[-user <user>]"
				+ "[-password <password>]"
				+ "[-DTYPE <DTYPE>]"
				+ "");
	}

	
	private final void configure() throws SQLException, ClassNotFoundException {
	   profiles.put("column",new Hashtable<String,Hashtable<String,String>>());
	   profiles.put("foreignKey",new Hashtable<String,Hashtable<String,String>>());
	   profiles.put("table",new Hashtable<String,Hashtable<String,String>>());

		
		if(USER_ORIGEN==null) CredencialesWindow.login(this);
		
		Class.forName(JDBC_DRIVER_ORIGEN);
		c_origen=DriverManager.getConnection(DB_URL_ORIGEN,USER_ORIGEN,PASS_ORIGEN);
		try{
			configure2();
		}catch(Exception e){
			System.exit(1);
		}
        
	}
	private final void configure2()  {
		
		// Create a trust manager which does not validate certificate chains
    		TrustManager[] trustAllCerts = new TrustManager[]{new X509TrustManager() {
    		    public java.security.cert.X509Certificate[] getAcceptedIssuers() {
    		        return null;
    		    }
    		 
				public void checkClientTrusted(X509Certificate[] chain, String authType) throws CertificateException {
					
				}

				public void checkServerTrusted(X509Certificate[] chain, String authType) throws CertificateException {
					
				}
    		}
    		};
    		 
    		// Create all trusting host name verifier
    		HostnameVerifier allHostsValid = new HostnameVerifier() {
    		    public boolean verify(String hostname, SSLSession session) {
    		        return true;
    		    }
    		};
    		 
    		try {
    		    // Install the trust manager
    		    SSLContext sc = SSLContext.getInstance("SSL");
    		    sc.init(null, trustAllCerts, new java.security.SecureRandom());
    		    HttpsURLConnection.setDefaultSSLSocketFactory(sc.getSocketFactory());
    		    // Install the host verifier
    		    HttpsURLConnection.setDefaultHostnameVerifier(allHostsValid);
    		} catch (Exception ex) {
    		    ex.printStackTrace();
    		}

    		
	}
 
	public void setUser(String user) {
		USER_ORIGEN=user;
	}

	public void setPassword(String password) {
		PASS_ORIGEN=password;
	}	
	
	public static void main(String[] args) {
		Jdbc2uml s=null;
		try {
		
			s = new Jdbc2uml(args);
			
		} catch (Exception e) {
			e.printStackTrace(); 
		}finally{
			try {
				if(s.c_origen!=null) s.c_origen.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
	}


	public final void run() throws SQLException, ClassNotFoundException {

		configure();
		
		DatabaseMetaData databaseMetaData = c_origen.getMetaData();


		String   tableNamePattern = null;
		String[] types            = null;
		String   columnNamePattern = null;


		StringBuffer buf=initializeModel(catalogPattern, schemaPattern);

		ResultSet t_result = databaseMetaData.getTables( catalogPattern, schemaPattern, tableNamePattern, types );

		while(t_result.next()) {
			String catalog=t_result.getString(1);
		    String schema = t_result.getString(2);
			String tableName = t_result.getString(3);
			String type=t_result.getString("TABLE_TYPE");
			
			Hashtable<String, ColumnMetaData> c_index=new Hashtable<String, ColumnMetaData>(); 
			Hashtable<String, PrimaryKeyMetaData> pk_index=new Hashtable<String, PrimaryKeyMetaData>(); 
			Hashtable<String, ExportedKeyMetaData> ex_fk_index=new Hashtable<String, ExportedKeyMetaData>(); 
			Hashtable<String, ImportedKeyMetaData> im_fk_index=new Hashtable<String, ImportedKeyMetaData>(); 
			Hashtable<String, Vector<IndexMetaData>> column_indexes_meta_index=new Hashtable<String, Vector<IndexMetaData>>();
			Hashtable<String, Vector<IndexMetaData>> index_meta_index=new Hashtable<String, Vector<IndexMetaData>>();
			
			
			switch(type){
				case "TABLE":
					getTableMetaData(databaseMetaData,catalog,schema,tableName,c_index,pk_index,ex_fk_index,im_fk_index,column_indexes_meta_index,index_meta_index);
					break;
				case "SEQUENCE":
					
					break;
				default:
			}
				
			generateUML(databaseMetaData,catalog,schema,tableName,c_index,pk_index,ex_fk_index,im_fk_index,buf,column_indexes_meta_index,index_meta_index);
			
			

		}

		finalizeModel(catalogPattern, schemaPattern,buf);
		outputStream.println(buf.toString());		
	}


	private void finalizeModel(String catalog, String schema,StringBuffer b) {
		//2
		if(schema!=null)
			b.append("</packagedElement>\n");
		//1
		if(catalog!=null)
			b.append("</packagedElement>\n");
		b.append("</nestedClassifier>\n");
		b.append("</packagedElement>\n");
		b.append("<profileApplication xmi:id=\"_ewg9gBt1Eea5NKvb7KrMNA\">\n");
		b.append("<eAnnotations xmi:id=\"_ewkn4Bt1Eea5NKvb7KrMNA\" source=\"http://www.eclipse.org/uml2/2.0.0/UML\">\n");
		b.append("<references xmi:type=\"ecore:EPackage\" href=\"http://www.eclipse.org/uml2/5.0.0/UML/Profile/Standard#/\"/>\n");
		b.append("</eAnnotations>\n");
		b.append("<appliedProfile href=\"pathmap://UML_PROFILES/Standard.profile.uml#_0\"/>\n");
		b.append("</profileApplication>\n");
		b.append("<profileApplication xmi:id=\"_6LVh8BemEeaLGOn060Nbgw\">\n");
		b.append("<eAnnotations xmi:id=\"_U1T6gQvQEeaFYrGxsbtraQ\" source=\"http://www.eclipse.org/uml2/2.0.0/UML\">\n");
		b.append("<references xmi:type=\"ecore:EPackage\" href=\"platform:/plugin/net.samsarasoftware.metamodels/profiles/database.profile.uml#_0UMZQC_QEeqNRJUKtSQxPw\"/>\n");
		b.append("</eAnnotations>\n");
		b.append("<appliedProfile href=\"platform:/plugin/net.samsarasoftware.metamodels/profiles/database.profile.uml#_HfyHIGHXEeWubbGE4ctGJQ\"/>\n");
		b.append("</profileApplication>\n");
		b.append("</uml:Model>\n");
		b.append("<standard:Entity xmi:id=\"_fUo-QBt1Eea5NKvb7KrMNA\" base_Component=\"entities\"/>\n");
		b.append("<standard:Subsystem xmi:id=\"_fUo-QBt1Eea5NKvb7KrMNA\" base_Component=\"subsystem\"/>\n");
		b.append("<standard:Implement xmi:id=\"_fUo-QBt1Eea5NKvb7KrLNA\" base_Component=\"subsystem\"/>\n");
		b.append("<standard:Type xmi:id=\"TimeDataType_type\" base_Class=\"TimeDataType\"/>\n");
		b.append("<standard:Type xmi:id=\"TimestampDataType_type\" base_Class=\"TimestampDataType\"/>\n");
		b.append("<standard:Type xmi:id=\"DateDataType_type\" base_Class=\"DateDataType\"/>\n");
		b.append("<standard:Type xmi:id=\"BlobDataType_type\" base_Class=\"BlobDataType\"/>\n");
		b.append("<standard:Type xmi:id=\"ClobDataType_type\" base_Class=\"ClobDataType\"/>\n");

		//ahora las primary keys son columnas y se gestionan como tales m?s abajo
		//for (String pk : primaryKeys.keySet()) {
		//		b.append("<database:primaryKey xmi:id=\""+pk+"_database_primaryKey\" base_Property=\""+pk+"\"/>\n");
		//}
		for (String jtg : joinedTableGeneralizations.keySet()) {
			b.append("<database:joinedTableInheritance xmi:id=\""+joinedTableGeneralizations.get(jtg)+"_database_joinedTableInheritance\" base_Generalization=\""+joinedTableGeneralizations.get(jtg)+"\"/>\n");
		}
		for (String prk : profiles.keySet()) {
			for (String cpk : profiles.get(prk).keySet()) {
				//Las primary keys son columnas as? que hacemos la substituci?n de clases
				String prkSpecific=prk;
				
				if("column".equals(prk.toLowerCase()) && primaryKeys.get(cpk)!=null) 
					prkSpecific="PrimaryKey";
				
				b.append("<database:"+prkSpecific.substring(0,1).toUpperCase()+prkSpecific.substring(1)+" xmi:id=\""+cpk+"_database_"+prkSpecific+"\"");
				switch(prk.toLowerCase()){
				case "table":
					b.append(" base_Class=\""+cpk+"\"");
					break;
				case "column":
					b.append(" base_Property=\""+cpk+"\"");
					break;
				case "foreignkey":
					b.append(" base_Association=\""+cpk+"\"");
					break;
				}
				
				for (String cptk : profiles.get(prk).get(cpk).keySet()) {
					b.append(" "+cptk+"=\""+profiles.get(prk).get(cpk).get(cptk)+"\"");
				}
				b.append("/>\n");			
			}
		}
		b.append("</xmi:XMI>\n");
	}


	private StringBuffer initializeModel(String catalog, String schema) {
		StringBuffer b=new StringBuffer();
		b.append("<?xml version=\"1.0\" encoding=\"UTF-8\"?>");
		b.append("<xmi:XMI xmi:version=\"20131001\" xmlns:xmi=\"http://www.omg.org/spec/XMI/20131001\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:database=\"http://www.samsarasoftware.net/database.profile\" xmlns:ecore=\"http://www.eclipse.org/emf/2002/Ecore\" xmlns:standard=\"http://www.eclipse.org/uml2/5.0.0/UML/Profile/Standard\" xmlns:uml=\"http://www.eclipse.org/uml2/5.0.0/UML\" xsi:schemaLocation=\"http://www.samsarasoftware.net/database.profile platform:/plugin/net.samsarasoftware.metamodels/profiles/database.profile.uml#_0UMZQC_QEeqNRJUKtSQxPw\">\n");
		b.append("<uml:Model xmi:id=\"jdbc2uml\" name=\"Model\">\n");
		b.append("<packagedElement xmi:type=\"uml:Component\" xmi:id=\"external-classes\" name=\"external-classes\">");
		b.append("<packagedElement xmi:type=\"uml:Package\" xmi:id=\"utils\" name=\"utils\">");
		b.append("<packagedElement xmi:type=\"uml:Class\" xmi:id=\"TimeDataType\" name=\"Time\"/>");
		b.append("<packagedElement xmi:type=\"uml:Class\" xmi:id=\"TimestampDataType\" name=\"TimeStamp\"/>");
		b.append("<packagedElement xmi:type=\"uml:Class\" xmi:id=\"DateDataType\" name=\"Date\"/>");
		b.append("<packagedElement xmi:type=\"uml:Class\" xmi:id=\"BlobDataType\" name=\"Blob\"/>");
		b.append("<packagedElement xmi:type=\"uml:Class\" xmi:id=\"ClobDataType\" name=\"Clob\"/>");
		b.append("</packagedElement>");
		//unsupported data types
		b.append("<packagedElement xmi:type=\"uml:Package\" xmi:id=\"unsupported\" name=\"unsupported\">");
		b.append("<packagedElement xmi:type=\"uml:Class\" xmi:id=\"ARRAY\" name=\"ARRAY\"/>");
		b.append("<packagedElement xmi:type=\"uml:Class\" xmi:id=\"BINARY\" name=\"BINARY\"/>");
		b.append("<packagedElement xmi:type=\"uml:Class\" xmi:id=\"DISTINCT\" name=\"DISTINCT\"/>");
		b.append("<packagedElement xmi:type=\"uml:Class\" xmi:id=\"LONGVARBINARY\" name=\"LONGVARBINARY\"/>");
		b.append("<packagedElement xmi:type=\"uml:Class\" xmi:id=\"NCLOB\" name=\"NCLOB\"/>");
		b.append("<packagedElement xmi:type=\"uml:Class\" xmi:id=\"OTHER\" name=\"OTHER\"/>");
		b.append("<packagedElement xmi:type=\"uml:Class\" xmi:id=\"REF\" name=\"REF\"/>");
		b.append("<packagedElement xmi:type=\"uml:Class\" xmi:id=\"ROWID\" name=\"ROWID\"/>");
		b.append("<packagedElement xmi:type=\"uml:Class\" xmi:id=\"TINYINT\" name=\"TINYINT\"/>");
		b.append("<packagedElement xmi:type=\"uml:Class\" xmi:id=\"VARBINARY\" name=\"VARBINARY\"/>");
		b.append("</packagedElement>");
		b.append("</packagedElement>");
		b.append("<packagedElement xmi:type=\"uml:Component\" xmi:id=\"subsystem\" name=\"Subsystem\">");
		b.append("<nestedClassifier xmi:type=\"uml:Component\" xmi:id=\"entities\" name=\""+USER_ORIGEN+"\">");

		//1
		if(catalog!=null)
			b.append("<packagedElement xmi:type=\"uml:Package\" xmi:id=\""+catalog+"\" name=\""+catalog+"\">\n");
		//2
		if(schema!=null)
			b.append("<packagedElement xmi:type=\"uml:Package\" xmi:id=\""+schema+"\" name=\""+schema+"\">\n");

		return b;
	}


	private void generateUML(DatabaseMetaData databaseMetaData,String catalog, String schema, String tableName,
			Hashtable<String, ColumnMetaData> c_index,
			Hashtable<String, PrimaryKeyMetaData> pk_index,
			Hashtable<String, ExportedKeyMetaData> ex_fk_index,
			Hashtable<String, ImportedKeyMetaData> im_fk_index,
			StringBuffer b,
			Hashtable<String, Vector<IndexMetaData>> column_indexes_meta_index,
			Hashtable<String, Vector<IndexMetaData>> index_meta_index) 
					throws SQLException {


			//3
			b.append("<packagedElement xmi:type=\"uml:Class\" xmi:id=\""+tableName+"\" name=\""+tableName+"\">\n");
			Hashtable<String,String> tableProfile=new Hashtable<String,String>();
			tableProfile.put("name", tableName);
			profiles.get("table").put(tableName, tableProfile);
			
			Iterator<String> pkIt = pk_index.keySet().iterator();
			while(pkIt.hasNext()){
				String columnName=pkIt.next();
				PrimaryKeyMetaData pkMeta = pk_index.get(columnName);
				primaryKeys.put(pkMeta.TABLE_NAME+"_"+pkMeta.COLUMN_NAME, pkMeta);
			}
			
			Iterator<String> cit=c_index.keySet().iterator();
			while(cit.hasNext()){
				String columnName=cit.next();
				ColumnMetaData column=c_index.get(columnName);
				ImportedKeyMetaData im_fk=im_fk_index.get(columnName);
				ExportedKeyMetaData ex_fk=ex_fk_index.get(columnName);
				
				String typeString="";
				boolean isAttribute=true;
				Hashtable<String,String> columnProfileAtttributes=new Hashtable<String,String>();

				
				if(ex_fk!=null && primaryKeys.get(tableName+"_"+columnName)==null){
					b.append("<ownedAttribute xmi:type=\"uml:Property\" xmi:id=\""+tableName+"_"+columnName+"\" name=\""+columnName+"\" ");
					if(!isUmlPrimitiveType(column.DATA_TYPE)){
						b.append(" type=\""+getType(columnName,column.DATA_TYPE, column.COLUMN_SIZE, column.DECIMAL_DIGITS,columnProfileAtttributes)+"\" ");
					}else{
						if(isUmlPrimitiveType(column.DATA_TYPE))
							typeString=getType(columnName,column.DATA_TYPE, column.COLUMN_SIZE, column.DECIMAL_DIGITS,columnProfileAtttributes);
					}
					columnProfileAtttributes.put("name", columnName);
					profiles.get("column").put(tableName+"_"+columnName, columnProfileAtttributes);

				} else if(im_fk!=null  && primaryKeys.get(tableName+"_"+columnName)==null){
//					b.append("<ownedAttribute xmi:type=\"uml:Property\" xmi:id=\""+tableName+"_"+columnName+"\" name=\""+columnName+"\" ");
//					b.append("type=\""+im_fk.PKTABLE_NAME+"\"  aggregation=\"shared\" association=\""+im_fk.FK_NAME+"\"");
					b.append("<ownedAttribute xmi:type=\"uml:Property\" xmi:id=\""+tableName+"_"+columnName+"\" name=\""+columnName+"\" ");
					b.append("type=\""+im_fk.PKTABLE_NAME+"\"  association=\""+im_fk.FK_NAME+"\"");
					
					if(column.COLUMN_SIZE!=null) columnProfileAtttributes.put("size", column.COLUMN_SIZE);
					if(column.DECIMAL_DIGITS!=null) columnProfileAtttributes.put("decimals", column.DECIMAL_DIGITS);
					columnProfileAtttributes.put("name", columnName);
					profiles.get("column").put(tableName+"_"+columnName, columnProfileAtttributes);

				} else if(im_fk!=null && primaryKeys.get(tableName+"_"+columnName)!=null){
					b.append("<ownedAttribute xmi:type=\"uml:Property\" xmi:id=\""+tableName+"_"+columnName+"\" name=\""+columnName+"\" ");
					if(!isUmlPrimitiveType(column.DATA_TYPE)){
						b.append(" type=\""+getType(columnName,column.DATA_TYPE, column.COLUMN_SIZE, column.DECIMAL_DIGITS,columnProfileAtttributes)+"\" ");
					}else{
						if(isUmlPrimitiveType(column.DATA_TYPE))
							typeString=getType(columnName,column.DATA_TYPE, column.COLUMN_SIZE, column.DECIMAL_DIGITS,columnProfileAtttributes);
					}
					profiles.get("column").put(tableName+"_"+columnName, columnProfileAtttributes);
				}else if(!columnName.equals(DTYPE)){
					b.append("<ownedAttribute xmi:type=\"uml:Property\" xmi:id=\""+tableName+"_"+columnName+"\" name=\""+columnName+"\" ");
					if(!isUmlPrimitiveType(column.DATA_TYPE)){
						b.append(" type=\""+getType(columnName,column.DATA_TYPE, column.COLUMN_SIZE, column.DECIMAL_DIGITS,columnProfileAtttributes)+"\" ");
					}else{
						if(isUmlPrimitiveType(column.DATA_TYPE))
							typeString=getType(columnName,column.DATA_TYPE, column.COLUMN_SIZE, column.DECIMAL_DIGITS,columnProfileAtttributes);
					}
					columnProfileAtttributes.put("name", columnName);
					profiles.get("column").put(tableName+"_"+columnName, columnProfileAtttributes);
				}else{
					isAttribute=false;
				}
				
				
				if(isAttribute){
					b.append(">\n");
					b.append(typeString);
	
					b.append("<lowerValue xmi:type=\"uml:LiteralInteger\" xmi:id=\""+tableName+"_"+columnName+"_lower\"");
					if("NO".equals(column.IS_NULLABLE)) b.append(" value=\"1\" ");
					b.append("/>\n");
					b.append("<upperValue xmi:type=\"uml:LiteralUnlimitedNatural\" xmi:id=\""+tableName+"_"+columnName+"_upper\"");
					b.append(" value=\"1\" ");
					b.append("/>\n");
					b.append("</ownedAttribute>\n");
				}
				if(im_fk!=null && primaryKeys.get(tableName+"_"+columnName)!=null){
					b.append("<generalization xmi:id=\""+im_fk.FK_NAME+"\" general=\""+im_fk.PKTABLE_NAME+"\"/>\n");
					isAttribute=false;
					joinedTableGeneralizations.put(tableName+"_"+columnName,im_fk.FK_NAME);
				}
			}
			
			//3
			b.append("</packagedElement>\n");

			Iterator<String> imfkit=im_fk_index.keySet().iterator();
			while(imfkit.hasNext()){
				String columnName=imfkit.next();
				if(primaryKeys.get(tableName+"_"+columnName)==null){
					ImportedKeyMetaData column=im_fk_index.get(columnName);
					
					if(column!=null){
						b.append("<packagedElement xmi:type=\"uml:Association\" xmi:id=\""+column.FK_NAME+"\" name=\""+column.FK_NAME+"\" memberEnd=\""+column.FKTABLE_NAME+"_"+column.FKCOLUMN_NAME+" "+column.FK_NAME+"_"+column.FKCOLUMN_NAME+"\" navigableOwnedEnd=\""+column.FK_NAME+"_"+column.FKCOLUMN_NAME+"\" >\n");
						b.append("<ownedEnd xmi:type=\"uml:Property\" xmi:id=\""+column.FK_NAME+"_"+column.FKCOLUMN_NAME+"\" name=\""+column.FKTABLE_NAME+"\" type=\""+column.FKTABLE_NAME+"\" association=\""+column.FK_NAME+"\" aggregation=\"shared\" >");
	
						b.append("<lowerValue xmi:type=\"uml:LiteralInteger\" xmi:id=\""+column.FK_NAME+"_"+column.FKCOLUMN_NAME+"_lower\"");
	
						b.append(" value=\"0\" ");
						
						
						b.append("/>\n");
						b.append("<upperValue xmi:type=\"uml:LiteralUnlimitedNatural\" xmi:id=\""+column.FK_NAME+"_"+column.FKCOLUMN_NAME+"_upper\"");
						
						Hashtable<String,String> columnProfileAtttributes=new Hashtable<String,String>();
						columnProfileAtttributes.put("name", column.PKCOLUMN_NAME);
						profiles.get("column").put(column.FK_NAME+"_"+column.FKCOLUMN_NAME, columnProfileAtttributes);
						Hashtable<String, String> foreignKeyProfileAttributes=new Hashtable<String,String>();
						foreignKeyProfileAttributes.put("name", column.FK_NAME);
						profiles.get("foreignKey").put(column.FK_NAME,foreignKeyProfileAttributes );

						boolean isUnique=false;
						if(column_indexes_meta_index.get(columnName)!=null){
							Vector<IndexMetaData> indexed = column_indexes_meta_index.get(columnName);
							Iterator<IndexMetaData> it = indexed.iterator();
							while(it.hasNext()){
								IndexMetaData meta=it.next();
								Vector<IndexMetaData> index = index_meta_index.get(meta.INDEX_NAME);
								if(index.size()==1 && meta.NON_UNIQUE!=null 
										&& !(Boolean.parseBoolean(meta.NON_UNIQUE)) 
										&& Short.parseShort(meta.TYPE)!=DatabaseMetaData.tableIndexStatistic
									){
									isUnique=true;
									break;
								}
							}
							
						}
							
						if(isUnique){
							b.append(" value=\"1\" ");
						}else{
							b.append(" value=\"*\" ");
						}
						b.append("/>\n");
						b.append("</ownedEnd>");
	
					}
					b.append("</packagedElement>\n");
				}
			}
			
	}




	private boolean isUmlPrimitiveType(String DATA_TYPE) throws SQLException {
		switch(Integer.parseInt(DATA_TYPE)){
		case Types.ARRAY:
			return false;
		case Types.BIGINT:
			return true;
		case Types.BINARY:
			return false;
		case Types.BIT:
			return true;
		case Types.BLOB:
			return false;
		case Types.BOOLEAN:
			return true;
		case Types.CHAR:
			return true;
		case Types.CLOB:
			return false;
		case Types.DATE:
			return false;
		case Types.DECIMAL:
			return true;
		case Types.DISTINCT:
			return false;
		case Types.DOUBLE:
			return true;
		case Types.FLOAT:
			return true;
		case Types.INTEGER:
			return true;
		case Types.LONGNVARCHAR:
			return true;
		case Types.LONGVARBINARY:
			return false;
		case Types.LONGVARCHAR:
			return true;
		case Types.NCHAR:
			return true;
		case Types.NCLOB:
			return false;
		case Types.NUMERIC:
			return true;
		case Types.NVARCHAR:
			return true;
		case Types.OTHER:
			return false;
		case Types.REAL:
			return true;
		case Types.REF:
			return false;
		case Types.ROWID:
			return false;
		case Types.SMALLINT:
			return true;
		case Types.TIME:
			return false;
		case Types.TIMESTAMP:
			return false;
		case Types.TINYINT:
			return false;				
		case Types.VARBINARY:
			return false;
		case Types.VARCHAR:
			return true;
		default:
			return false;
		}
	}


	private String getType(String columnName,String DATA_TYPE, String COLUMN_SIZE,String DECIMAL_DIGITS, Hashtable<String, String> columnProfileAtttributes) throws SQLException {
		StringBuffer out=new StringBuffer();
		
		switch(Integer.parseInt(DATA_TYPE)){
			case Types.ARRAY:
				log.error("Unsupported SQL Type: "+DATA_TYPE);
				if(COLUMN_SIZE!=null) columnProfileAtttributes.put("size", COLUMN_SIZE);
				columnProfileAtttributes.put("name", columnName);
				out.append("ARRAY");
				break;
			case Types.BIGINT:
				if(COLUMN_SIZE!=null) columnProfileAtttributes.put("size", COLUMN_SIZE);
				out.append("<type xmi:type=\"uml:PrimitiveType\" href=\"pathmap://UML_LIBRARIES/UMLPrimitiveTypes.library.uml#UnlimitedNatural\"/>");
				break;
			case Types.BINARY:
				log.error("Unsupported SQL Type: "+DATA_TYPE);
				out.append("BINARY");
				break;
			case Types.BIT:
				if(COLUMN_SIZE!=null) columnProfileAtttributes.put("size", COLUMN_SIZE);
				out.append("<type xmi:type=\"uml:PrimitiveType\" href=\"pathmap://UML_LIBRARIES/UMLPrimitiveTypes.library.uml#Boolean\"/>");
				break;
			case Types.BLOB:
				if(COLUMN_SIZE!=null) columnProfileAtttributes.put("size", COLUMN_SIZE);
				out.append("BlobDataType");
				break;
			case Types.BOOLEAN:
				out.append("<type xmi:type=\"uml:PrimitiveType\" href=\"pathmap://UML_LIBRARIES/UMLPrimitiveTypes.library.uml#Boolean\"/>");
				break;
			case Types.CHAR:
				if(COLUMN_SIZE!=null) columnProfileAtttributes.put("size", COLUMN_SIZE);
				out.append("<type xmi:type=\"uml:PrimitiveType\" href=\"pathmap://UML_LIBRARIES/UMLPrimitiveTypes.library.uml#String\"/>");
				break;
			case Types.CLOB:
				if(COLUMN_SIZE!=null) columnProfileAtttributes.put("size", COLUMN_SIZE);
				out.append("ClobDataType");
				break;
			case Types.DATE:
				out.append("DateDataType");
				break;
			case Types.DECIMAL:
				if(DECIMAL_DIGITS!=null && DECIMAL_DIGITS.equals(new BigDecimal(0)))
					out.append("<type xmi:type=\"uml:PrimitiveType\" href=\"pathmap://UML_LIBRARIES/UMLPrimitiveTypes.library.uml#UnlimitedNatural\"/>");
				else
					out.append("<type xmi:type=\"uml:PrimitiveType\" href=\"pathmap://UML_LIBRARIES/UMLPrimitiveTypes.library.uml#Real\"/>");
				if(COLUMN_SIZE!=null) columnProfileAtttributes.put("size", COLUMN_SIZE);
				if(DECIMAL_DIGITS!=null) columnProfileAtttributes.put("decimals", DECIMAL_DIGITS);
				break;
			case Types.DISTINCT:
				log.error("Unsupported SQL Type: "+DATA_TYPE);
				if(COLUMN_SIZE!=null) columnProfileAtttributes.put("size", COLUMN_SIZE);
				out.append("DISTINCT");
				break;
			case Types.DOUBLE:
					out.append("<type xmi:type=\"uml:PrimitiveType\" href=\"pathmap://UML_LIBRARIES/UMLPrimitiveTypes.library.uml#Real\"/>");
					//if(COLUMN_SIZE!=null) columnProfileAtttributes.put("size", COLUMN_SIZE);
					columnProfileAtttributes.put("decimals","15"); // adoptado segun https://en.wikipedia.org/wiki/Double-precision_floating-point_format
				break;
			case Types.FLOAT:
					out.append("<type xmi:type=\"uml:PrimitiveType\" href=\"pathmap://UML_LIBRARIES/UMLPrimitiveTypes.library.uml#Real\"/>");
					//if(COLUMN_SIZE!=null) columnProfileAtttributes.put("size", COLUMN_SIZE);
					columnProfileAtttributes.put("decimals","7"); // adoptado segun https://en.wikipedia.org/wiki/Single-precision_floating-point_format
				break;
			case Types.INTEGER:
				out.append("<type xmi:type=\"uml:PrimitiveType\" href=\"pathmap://UML_LIBRARIES/UMLPrimitiveTypes.library.uml#Integer\"/>");
				if(COLUMN_SIZE!=null) columnProfileAtttributes.put("size", COLUMN_SIZE);
				break;
			case Types.LONGNVARCHAR:
				out.append("<type xmi:type=\"uml:PrimitiveType\" href=\"pathmap://UML_LIBRARIES/UMLPrimitiveTypes.library.uml#String\"/>");
				if(COLUMN_SIZE!=null) columnProfileAtttributes.put("size", COLUMN_SIZE);
				break;
			case Types.LONGVARBINARY:
				log.error("Unsupported SQL Type: "+DATA_TYPE);
				if(COLUMN_SIZE!=null) columnProfileAtttributes.put("size", COLUMN_SIZE);
				out.append("LONGVARBINARY");
				break;
			case Types.LONGVARCHAR:
				out.append("ClobDataType");
				if(COLUMN_SIZE!=null) columnProfileAtttributes.put("size", COLUMN_SIZE);
				break;
			case Types.NCHAR:
				out.append("<type xmi:type=\"uml:PrimitiveType\" href=\"pathmap://UML_LIBRARIES/UMLPrimitiveTypes.library.uml#String\"/>");
				if(COLUMN_SIZE!=null) columnProfileAtttributes.put("size", COLUMN_SIZE);
				break;
			case Types.NCLOB:
				log.error("Unsupported SQL Type: "+DATA_TYPE);
				if(COLUMN_SIZE!=null) columnProfileAtttributes.put("size", COLUMN_SIZE);
				out.append("NCLOB");
				break;
			case Types.NUMERIC:
				if(DECIMAL_DIGITS!=null && DECIMAL_DIGITS.equals(new BigDecimal(0)))
					out.append("<type xmi:type=\"uml:PrimitiveType\" href=\"pathmap://UML_LIBRARIES/UMLPrimitiveTypes.library.uml#UnlimitedNatural\"/>");
				else
					out.append("<type xmi:type=\"uml:PrimitiveType\" href=\"pathmap://UML_LIBRARIES/UMLPrimitiveTypes.library.uml#Real\"/>");
				if(COLUMN_SIZE!=null) columnProfileAtttributes.put("size", COLUMN_SIZE);
				if(DECIMAL_DIGITS!=null) columnProfileAtttributes.put("decimals", DECIMAL_DIGITS);
				break;
			case Types.NVARCHAR:
				out.append("<type xmi:type=\"uml:PrimitiveType\" href=\"pathmap://UML_LIBRARIES/UMLPrimitiveTypes.library.uml#String\"/>");
				if(COLUMN_SIZE!=null) columnProfileAtttributes.put("size", COLUMN_SIZE);
				break;
			case Types.OTHER:
				log.error("Unsupported SQL Type: "+DATA_TYPE);
				if(COLUMN_SIZE!=null) columnProfileAtttributes.put("size", COLUMN_SIZE);
				out.append("OTHER");
				break;
			case Types.REAL:
					out.append("<type xmi:type=\"uml:PrimitiveType\" href=\"pathmap://UML_LIBRARIES/UMLPrimitiveTypes.library.uml#Real\"/>");
					columnProfileAtttributes.put("decimals","7"); // adoptado segun https://en.wikipedia.org/wiki/Single-precision_floating-point_format
				break;
			case Types.REF:
				log.error("Unsupported SQL Type: "+DATA_TYPE);
				out.append("REF");
				if(COLUMN_SIZE!=null) columnProfileAtttributes.put("size", COLUMN_SIZE);
				break;
			case Types.ROWID:
				log.error("Unsupported SQL Type: "+DATA_TYPE);
				out.append("ROWID");
				if(COLUMN_SIZE!=null) columnProfileAtttributes.put("size", COLUMN_SIZE);
				break;
			case Types.SMALLINT:
				out.append("<type xmi:type=\"uml:PrimitiveType\" href=\"pathmap://UML_LIBRARIES/UMLPrimitiveTypes.library.uml#Integer\"/>");
				if(COLUMN_SIZE!=null) columnProfileAtttributes.put("size", COLUMN_SIZE);
				break;
			case Types.TIME:
				out.append("TimeDataType");
				break;
			case Types.TIMESTAMP:
				out.append("TimestampDataType");
				break;
			case Types.TINYINT:
				log.error("Unsupported SQL Type: "+DATA_TYPE);				
				out.append("TINYINT");
				if(COLUMN_SIZE!=null) columnProfileAtttributes.put("size", COLUMN_SIZE);
				break;
			case Types.VARBINARY:
				log.error("Unsupported SQL Type: "+DATA_TYPE);
				if(COLUMN_SIZE!=null) columnProfileAtttributes.put("size", COLUMN_SIZE);
				out.append("VARBINARY");
				break;
			case Types.VARCHAR:
				out.append("<type xmi:type=\"uml:PrimitiveType\" href=\"pathmap://UML_LIBRARIES/UMLPrimitiveTypes.library.uml#String\"/>");
				if(COLUMN_SIZE!=null) columnProfileAtttributes.put("size", COLUMN_SIZE);
				break;
			default:
				throw new SQLException("Unknown SQL Type: "+DATA_TYPE);
		}
		return out.toString();
	}


	private void getTableMetaData(DatabaseMetaData databaseMetaData,String catalog,String schema, String tableName,
			Hashtable<String, ColumnMetaData> c_index,
			Hashtable<String, PrimaryKeyMetaData> pk_index,
			Hashtable<String, ExportedKeyMetaData> ex_fk_index,
			Hashtable<String, ImportedKeyMetaData> im_fk_index,
			Hashtable<String, Vector<IndexMetaData>> column_indexes_meta_index,
			Hashtable<String, Vector<IndexMetaData>> index_meta_index
			
			) throws SQLException{
		ResultSet c_result = databaseMetaData.getColumns(catalog, schema,  tableName, null);
		while(c_result.next()){
			ColumnMetaData c_meta = extractColumnMetadata(c_result);
			c_index.put(c_meta.COLUMN_NAME, c_meta);
		}
		c_result.close();
		
		ResultSet pk_result = databaseMetaData.getPrimaryKeys(catalog, schema, tableName);
		while(pk_result.next()){
			PrimaryKeyMetaData pk_meta = extractPrimaryKeyMetadata(pk_result);
			pk_index.put(pk_meta.COLUMN_NAME, pk_meta);
		}
		pk_result.close();
		
		//Retrieves a description of the foreign key columns that reference the given table's primary key columns (the foreign keys exported by a table). They are ordered by FKTABLE_CAT, FKTABLE_SCHEM, FKTABLE_NAME, and KEY_SEQ.
		ResultSet ex_fk_result = databaseMetaData.getExportedKeys(catalog, schema, tableName);
		while(ex_fk_result.next()){
			ExportedKeyMetaData ex_fk_meta = extractExportedKeyMetadata(ex_fk_result);
			ex_fk_index.put(ex_fk_meta.PKCOLUMN_NAME, ex_fk_meta);
		}
		ex_fk_result.close();
		
		//Retrieves a description of the primary key columns that are referenced by the given table's foreign key columns (the primary keys imported by a table). They are ordered by PKTABLE_CAT, PKTABLE_SCHEM, PKTABLE_NAME, and KEY_SEQ. 
		ResultSet im_fk_result = databaseMetaData.getImportedKeys(catalog, schema, tableName);
		while(im_fk_result.next()){
			ImportedKeyMetaData im_fk_meta = extractImportedKeyMetadata(im_fk_result);
			im_fk_index.put(im_fk_meta.FKCOLUMN_NAME, im_fk_meta);
		}	
		im_fk_result.close();
		
		//Retrieves a description of the indexes in which each column is involved 
		//and the description of each index
		//for unique and non unique constraints
		ResultSet c_index_info = databaseMetaData.getIndexInfo(catalog, schema, tableName,false, true);
		while(c_index_info.next()){
			IndexMetaData index_meta = extractIndexMetaData(c_index_info);
			if(Short.parseShort(index_meta.TYPE)==DatabaseMetaData.tableIndexStatistic) continue;
			
			Vector<IndexMetaData> m=column_indexes_meta_index.get(index_meta.COLUMN_NAME);
			if(m==null) m=new Vector<IndexMetaData>();
			m.add(index_meta);
			column_indexes_meta_index.put(index_meta.COLUMN_NAME, m);
			
			Vector<IndexMetaData> m2=index_meta_index.get(index_meta.INDEX_NAME);
			if(m2==null) m2=new Vector<IndexMetaData>();
			m2.add(index_meta);
			index_meta_index.put(index_meta.INDEX_NAME, m2);
		}	
		c_index_info.close();
		
		
	}


	private IndexMetaData extractIndexMetaData(ResultSet rs) throws SQLException {
		IndexMetaData m=new IndexMetaData();
		m.TABLE_CAT=(String) convertTo(rs.getObject("TABLE_CAT"),String.class);
		m.TABLE_SCHEM =(String) convertTo(rs.getObject("TABLE_SCHEM"),String.class);
		m.TABLE_NAME =(String) convertTo(rs.getObject("TABLE_NAME"),String.class);
		m.NON_UNIQUE =(String) convertTo(rs.getObject("NON_UNIQUE"),String.class);
		m.INDEX_QUALIFIER =(String) convertTo(rs.getObject("INDEX_QUALIFIER"),String.class);
		m.INDEX_NAME =(String) convertTo(rs.getObject("INDEX_NAME"),String.class);
		m.TYPE =(String) convertTo(rs.getObject("TYPE"),String.class);
		m.ORDINAL_POSITION  =(String) convertTo(rs.getObject("ORDINAL_POSITION"),String.class);
		m.COLUMN_NAME  =(String) convertTo(rs.getObject("COLUMN_NAME"),String.class);
		m.ASC_OR_DESC  =(String) convertTo(rs.getObject("ASC_OR_DESC"),String.class);
		m.CARDINALITY  =(String) convertTo(rs.getObject("CARDINALITY"),String.class);
		m.PAGES  =(String) convertTo(rs.getObject("PAGES"),String.class);
		m.FILTER_CONDITION  =(String) convertTo(rs.getObject("FILTER_CONDITION"),String.class);
		return m;
	}


	private ImportedKeyMetaData extractImportedKeyMetadata(ResultSet rs) throws SQLException {
		ImportedKeyMetaData m=new ImportedKeyMetaData();
		m.PKTABLE_CAT=(String) convertTo(rs.getObject("PKTABLE_CAT"),String.class);
		m.PKTABLE_SCHEM=(String) convertTo(rs.getObject("PKTABLE_SCHEM"),String.class);
		m.PKTABLE_NAME=(String) convertTo(rs.getObject("PKTABLE_NAME"),String.class);
		m.PKCOLUMN_NAME=(String) convertTo(rs.getObject("PKCOLUMN_NAME"),String.class);
		m.FKTABLE_CAT=(String) convertTo(rs.getObject("FKTABLE_CAT"),String.class);
		m.FKTABLE_SCHEM=(String) convertTo(rs.getObject("FKTABLE_SCHEM"),String.class);
		m.FKTABLE_NAME=(String) convertTo(rs.getObject("FKTABLE_NAME"),String.class);
		m.FKCOLUMN_NAME=(String) convertTo(rs.getObject("FKCOLUMN_NAME"),String.class);
		m.KEY_SEQ=(String) convertTo(rs.getObject("KEY_SEQ"),String.class);
		m.UPDATE_RULE=(String) convertTo(rs.getObject("UPDATE_RULE"),String.class);
		m.DELETE_RULE=(String) convertTo(rs.getObject("DELETE_RULE"),String.class);
		m.FK_NAME =(String) convertTo(rs.getObject("FK_NAME"),String.class);
		m.PK_NAME =(String) convertTo(rs.getObject("PK_NAME"),String.class);
		m.DEFERRABILITY=(String) convertTo(rs.getObject("DEFERRABILITY"),String.class);
		
		return m;
	}


	private ExportedKeyMetaData extractExportedKeyMetadata(ResultSet rs) throws SQLException {
		ExportedKeyMetaData m =new ExportedKeyMetaData();
		m.PKTABLE_CAT=(String) convertTo(rs.getObject("PKTABLE_CAT"),String.class);
		m.PKTABLE_SCHEM=(String) convertTo(rs.getObject("PKTABLE_SCHEM"),String.class);
		m.PKTABLE_NAME=(String) convertTo(rs.getObject("PKTABLE_NAME"),String.class);
		m.PKCOLUMN_NAME =(String) convertTo(rs.getObject("PKCOLUMN_NAME"),String.class);
		m.FKTABLE_CAT=(String) convertTo(rs.getObject("FKTABLE_CAT"),String.class);
		m.FKTABLE_SCHEM=(String) convertTo(rs.getObject("FKTABLE_SCHEM"),String.class);
		m.FKTABLE_NAME=(String) convertTo(rs.getObject("FKTABLE_NAME"),String.class);
		m.FKCOLUMN_NAME=(String) convertTo(rs.getObject("FKCOLUMN_NAME"),String.class);
		m.KEY_SEQ=(String) convertTo(rs.getObject("KEY_SEQ"),String.class);
		m.UPDATE_RULE =(String) convertTo(rs.getObject("UPDATE_RULE"),String.class);
		m.DELETE_RULE=(String) convertTo(rs.getObject("DELETE_RULE"),String.class);
		m.FK_NAME=(String) convertTo(rs.getObject("FK_NAME"),String.class);
		m.PK_NAME=(String) convertTo(rs.getObject("PK_NAME"),String.class);
		m.DEFERRABILITY=(String) convertTo(rs.getObject("DEFERRABILITY"),String.class);
		
		return m;
	}


	private PrimaryKeyMetaData extractPrimaryKeyMetadata(ResultSet rs) throws SQLException {
		PrimaryKeyMetaData m =new PrimaryKeyMetaData();
		m.TABLE_CAT=(String) convertTo(rs.getObject("TABLE_CAT"),String.class);
		m.TABLE_SCHEM=(String) convertTo(rs.getObject("TABLE_SCHEM"),String.class);
		m.TABLE_NAME=(String) convertTo(rs.getObject("TABLE_NAME"),String.class);
		m.COLUMN_NAME=(String) convertTo(rs.getObject("COLUMN_NAME"),String.class);
		m.KEY_SEQ=(String) convertTo(rs.getObject("KEY_SEQ"),String.class);
		m.PK_NAME=(String) convertTo(rs.getObject("PK_NAME"),String.class);
		
		return m;
	}


	private ColumnMetaData extractColumnMetadata(ResultSet rs) throws SQLException {
		ColumnMetaData m=new ColumnMetaData();
		m.TABLE_CAT=(String) convertTo(rs.getObject("TABLE_CAT"),String.class);
		m.TABLE_SCHEM=(String) convertTo(rs.getObject("TABLE_SCHEM"),String.class);
		m.TABLE_NAME=(String) convertTo(rs.getObject("TABLE_NAME"),String.class);
		m.COLUMN_NAME=(String) convertTo(rs.getObject("COLUMN_NAME"),String.class);
		m.DATA_TYPE=(String) convertTo(rs.getObject("DATA_TYPE"),String.class);
		m.TYPE_NAME=(String) convertTo(rs.getObject("TYPE_NAME"),String.class);
		m.COLUMN_SIZE=(String) convertTo(rs.getObject("COLUMN_SIZE"),String.class);
		m.BUFFER_LENGTH=(String) convertTo(rs.getObject("BUFFER_LENGTH"),String.class);
		m.DECIMAL_DIGITS=(String) convertTo(rs.getObject("DECIMAL_DIGITS"),String.class);
		m.NUM_PREC_RADIX=(String) convertTo(rs.getObject("NUM_PREC_RADIX"),String.class);
		m.NULLABLE=(String) convertTo(rs.getObject("NULLABLE"),String.class);
		m.REMARKS =(String) convertTo(rs.getObject("REMARKS"),String.class);
		m.COLUMN_DEF=(String) convertTo(rs.getObject("COLUMN_DEF"),String.class);
		m.SQL_DATA_TYPE =(String) convertTo(rs.getObject("SQL_DATA_TYPE"),String.class);
		m.SQL_DATETIME_SUB=(String) convertTo(rs.getObject("SQL_DATETIME_SUB"),String.class);
		m.CHAR_OCTET_LENGTH =(String) convertTo(rs.getObject("CHAR_OCTET_LENGTH"),String.class);
		m.ORDINAL_POSITION=(String) convertTo(rs.getObject("ORDINAL_POSITION"),String.class);
		m.IS_NULLABLE=(String)  convertTo(rs.getObject("IS_NULLABLE"),String.class);
//		m.SCOPE_CATALOG=(String) rs.getObject(19);
//		m.SCOPE_SCHEMA=(String) rs.getObject(20);
//		m.SCOPE_TABLE=(String) rs.getObject(21);
//		m.SOURCE_DATA_TYPE=(Short) rs.getObject(22);
//		m.IS_AUTOINCREMENT=(String) rs.getObject(23);
//		m.IS_GENERATEDCOLUMN =(String) rs.getObject(24);
		
//		m.TABLE_CAT=(String) rs.getObject(1);
//		m.TABLE_SCHEM=(String) rs.getObject(2);
//		m.TABLE_NAME=(String) rs.getObject(3);
//		m.COLUMN_NAME=(String) rs.getObject(4);
//		m.DATA_TYPE=(BigDecimal) rs.getObject(5);
//		m.TYPE_NAME=(String) rs.getObject(6);
//		m.COLUMN_SIZE=(BigDecimal) rs.getObject(7);
//		m.BUFFER_LENGTH=(BigDecimal) rs.getObject(8);
//		m.DECIMAL_DIGITS=(BigDecimal) rs.getObject(9);
//		m.NUM_PREC_RADIX=(BigDecimal) rs.getObject(10);
//		m.NULLABLE=(BigDecimal) rs.getObject(11);
//		m.REMARKS =(String) rs.getObject(12);
//		m.COLUMN_DEF=(String) rs.getObject(13);
//		m.SQL_DATA_TYPE =(BigDecimal) rs.getObject(14);
//		m.SQL_DATETIME_SUB=(BigDecimal) rs.getObject(15);
//		m.CHAR_OCTET_LENGTH =(BigDecimal) rs.getObject(16);
//		m.ORDINAL_POSITION=(BigDecimal) rs.getObject(17);
//		m.IS_NULLABLE=(String) rs.getObject(18);

		return m;
	}

	public static Object convertTo(Object sourceObject, Class<?> targetClass) throws org.apache.commons.beanutils.ConversionException {
		if(sourceObject==null)
			 return null;
		else
			return conversor.convert(sourceObject, targetClass);
 	}
	
	
	
}
