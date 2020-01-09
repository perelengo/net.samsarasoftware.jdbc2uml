package net.samsarasoftware.jdbc2uml;

/*-
 * #%L
 * jdbc2uml
 * %%
 * Copyright (C) 2014 - 2017 Pere Joseph Rodriguez
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

public class ExportedKeyMetaData {
	
	//primary key table catalog (may be null) 
	String PKTABLE_CAT;
	
	//primary key table schema (may be null)
	String PKTABLE_SCHEM;
	
	//primary key table name 
	String PKTABLE_NAME;
	
	//primary key column name
	String PKCOLUMN_NAME ;
	
	//foreign key table catalog (may be null) being exported (may be null) 
	String FKTABLE_CAT;
	
	//foreign key table schema (may be null) being exported (may be null)
	String FKTABLE_SCHEM;
	
	//foreign key table name being exported 
	String FKTABLE_NAME;
	
	//foreign key column name being exported 
	String FKCOLUMN_NAME;
	
	//sequence number within foreign key( a value of 1 represents the first column of the foreign key, a value of 2 would represent the second column within the foreign key)
	String KEY_SEQ;
	
	//What happens to foreign key when primary is updated: ? importedNoAction - do not allow update of primary key if it has been imported 
	// importedKeyCascade - change imported key to agree with primary key update 
	// importedKeySetNull - change imported key to NULL if its primary key has been updated 
	// importedKeySetDefault - change imported key to default values if its primary key has been updated 
	// importedKeyRestrict - same as importedKeyNoAction (for ODBC 2.x compatibility)
	String UPDATE_RULE ;

	//What happens to the foreign key when primary is deleted. ? importedKeyNoAction - do not allow delete of primary key if it has been imported 
	// importedKeyCascade - delete rows that import a deleted key 
	// importedKeySetNull - change imported key to NULL if its primary key has been deleted 
	// importedKeyRestrict - same as importedKeyNoAction (for ODBC 2.x compatibility)
	// importedKeySetDefault - change imported key to default if its primary key has been deleted
	String DELETE_RULE;

	//foreign key name (may be null) 
	String FK_NAME;
	
	//primary key name (may be null) 
	String PK_NAME;
	
	//can the evaluation of foreign key constraints be deferred until commit ? importedKeyInitiallyDeferred - see SQL92 for definition 
	// importedKeyInitiallyImmediate - see SQL92 for definition 
	// importedKeyNotDeferrable - see SQL92 for definition 
	String DEFERRABILITY;
	
}
