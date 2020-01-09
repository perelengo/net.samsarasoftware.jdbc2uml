---
-- #%L
-- jdbc2uml
-- %%
-- Copyright (C) 2014 - 2020 Pere Joseph Rodriguez
-- %%
-- Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

     http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
-- #L%
---
-- BEGIN PACKAGE openppm -----------------------------------------------------------------------
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
-- ###################################
-- END PACKAGE openppm -----------------------------------------------------------------------

-- BEGIN PACKAGE openppm -----------------------------------------------------------------------
			-- serializeAssociations actionlesson
			-- ACTLESSON_LESLEARNED_FK
			
					CREATE INDEX ACTIONLESSON_IDLEARNEDLES_I ON  actionlesson ( idLearnedLesson );    -- 1_1
			
			
			
			-- serializeAssociations activityseller
			-- ACTIVITYSELLER_PROJECT_FK
			
					CREATE INDEX ACTIVITYSELL_IDPROJECTASS_I ON  activityseller ( idProjectAssociate );    -- 1_1
			
			
			-- ACTIVITYSELLER_SELLER_FK
			
					CREATE INDEX ACTIVITYSELL_IDSELLER_I ON  activityseller ( idSeller );    -- 1_1
			
			
			-- ACTIVITYSELLER_ACTIVITY_FK
			
					CREATE INDEX ACTIVITYSELL_IDACTIVITY_I ON  activityseller ( idActivity );    -- 1_1
			
			
			
			-- serializeAssociations assumptionreassessmentlog
			-- ASSREALOG_ASSREG_FK
			
					CREATE INDEX ASSUMPTIONRE_IDASSUMPTION_I ON  assumptionreassessmentlog ( IdAssumption );    -- 1_1
			
			
			
			-- serializeAssociations assumptionregister
			-- ASSUMPTIONREGISTER_PROJECT_FK
			
					CREATE INDEX ASSUMPTIONRE_IDPROJECT_I ON  assumptionregister ( IdProject );    -- 1_1
			
			
			
			-- serializeAssociations auditdata
			
			-- serializeAssociations bscdimension
			-- BSCDIM_COMPANY_FK
			
					CREATE INDEX BSCDIMENSION_IDCOMPANY_I ON  bscdimension ( idCompany );    -- 1_1
			
			
			
			-- serializeAssociations budgetaccounts
			-- BUDGETACCOUNTS_COMPANY_FK
			
					CREATE INDEX BUDGETACCOUN_IDCOMPANY_I ON  budgetaccounts ( idCompany );    -- 1_1
			
			
			
			-- serializeAssociations businessdriver
			
			-- serializeAssociations businessdriverset
			
			-- serializeAssociations calendarbase
			-- CALENDARBASE_COMPANY_FK
			
					CREATE INDEX CALENDARBASE_IDCOMPANY_I ON  calendarbase ( idCompany );    -- 1_1
			
			
			
			-- serializeAssociations calendarbaseexceptions
			-- CALBASEEXCEP_CALBASE_FK
			
					CREATE INDEX CALENDARBASE_IDCALENDARBA_I ON  calendarbaseexceptions ( IdCalendarBase );    -- 1_1
			
			
			
			-- serializeAssociations category
			-- CATEGORY_COMPANY_FK
			
					CREATE INDEX CATEGORY_IDCOMPANY_I ON  category ( idCompany );    -- 1_1
			
			
			
			-- serializeAssociations changecontrol
			-- CHANGECONTROL_CHANGETYPE_FK
			
					CREATE INDEX CHANGECONTRO_IDCHANGETYPE_I ON  changecontrol ( IdChangeType );    -- 1_1
			
			
			-- CHANGECONTROL_PROJECT_FK
			
					CREATE INDEX CHANGECONTRO_IDPROJECT_I ON  changecontrol ( IdProject );    -- 1_1
			
			
			-- CHANGECONTROL_WBSNODE_FK
			
					CREATE INDEX CHANGECONTRO_IDWBSNODE_I ON  changecontrol ( IdWBSNode );    -- 1_1
			
			
			
			-- serializeAssociations changerequestwbsnode
			-- CHANGEREQWBSNODE_WBSNODE_FK
			
					CREATE INDEX CHANGEREQUES_IDWBSNODE_I ON  changerequestwbsnode ( idWBSNode );    -- 1_1
			
			
			-- CHANGEREQWBSNODE_CHANGE_FK
			
					CREATE INDEX CHANGEREQUES_IDCHANGE_I ON  changerequestwbsnode ( idChange );    -- 1_1
			
			
			
			-- serializeAssociations changetype
			-- CHANGETYPE_COMPANY_FK
			
					CREATE INDEX CHANGETYPE_IDCOMPANY_I ON  changetype ( idCompany );    -- 1_1
			
			
			
			-- serializeAssociations chargescosts
			-- CHARGESCOSTS_CURRENCY_FK
			
					CREATE INDEX CHARGESCOSTS_IDCURRENCY_I ON  chargescosts ( idCurrency );    -- 1_1
			
			
			-- CHARGESCOSTS_PROJECT_FK
			
					CREATE INDEX CHARGESCOSTS_IDPROJECT_I ON  chargescosts ( idProject );    -- 1_1
			
			
			
			-- serializeAssociations checklist
			-- CHECKLIST_WBSNODE_FK
			
					CREATE INDEX CHECKLIST_IDWBSNODE_I ON  checklist ( idWbsnode );    -- 1_1
			
			
			
			-- serializeAssociations classificationlevel
			-- CLASSIFILEVEL_COMPANY_FK
			
					CREATE INDEX CLASSIFICATI_IDCOMPANY_I ON  classificationlevel ( idCompany );    -- 1_1
			
			
			
			-- serializeAssociations closurecheck
			-- CLOSURECHECK_COMPANY_FK
			
					CREATE INDEX CLOSURECHECK_IDCOMPANY_I ON  closurecheck ( idCompany );    -- 1_1
			
			
			
			-- serializeAssociations closurecheckproject
			-- CLOSCHECKPROJ_PROJECT_FK
			
					CREATE INDEX CLOSURECHECK_IDPROJECT_I ON  closurecheckproject ( idProject );    -- 1_1
			
			
			-- CLOSCHECKPROJ_CLOSURECHECK_FK
			
					CREATE INDEX CLOSURECHECK_IDCLOSURECHE_I ON  closurecheckproject ( idClosureCheck );    -- 1_1
			
			
			-- CLOSCHECKPROJ_DOCUMENT_FK
			
					CREATE INDEX CLOSURECHECK_IDDOCUMENTPR_I ON  closurecheckproject ( idDocumentProject );    -- 1_1
			
			
			
			-- serializeAssociations company
			
			-- serializeAssociations companyfile
			-- COMPANYFILE_COMPANY_FK
			
					CREATE INDEX COMPANYFILE_IDCOMPANY_I ON  companyfile ( idCompany );    -- 1_1
			
			
			-- COMPANYFILE_CONTENTFILE_FK
			
					CREATE INDEX COMPANYFILE_IDCONTENTFIL_I ON  companyfile ( idContentFile );    -- 1_1
			
			
			
			-- serializeAssociations configuration
			-- CONFIGURARION_CONTACT_FK
			
					CREATE INDEX CONFIGURATIO_IDCONTACT_I ON  configuration ( idContact );    -- 1_1
			
			
			
			-- serializeAssociations contact
			-- CONTACT_COMPANY_FK
			
					CREATE INDEX CONTACT_IDCOMPANY_I ON  contact ( IdCompany );    -- 1_1
			
			
			
			-- serializeAssociations contactnotification
			-- CONTACTNOTIFICATION_NOTI_FK
			
					CREATE INDEX CONTACTNOTIF_IDNOTIFICATI_I ON  contactnotification ( idNotification );    -- 1_1
			
			
			-- CONTACTNOTIFICATION_CONTACT_FK
			
					CREATE INDEX CONTACTNOTIF_IDCONTACT_I ON  contactnotification ( idContact );    -- 1_1
			
			
			
			-- serializeAssociations contentfile
			
			-- serializeAssociations contracttype
			-- CONTRACTTYPE_COMPANY_FK
			
					CREATE INDEX CONTRACTTYPE_IDCOMPANY_I ON  contracttype ( idCompany );    -- 1_1
			
			
			
			-- serializeAssociations currency
			-- CURRENCY_COMPANY_FK
			
					CREATE INDEX CURRENCY_IDCOMPANY_I ON  currency ( idCompany );    -- 1_1
			
			
			
			-- serializeAssociations customer
			-- CUSTOMER_CUSTOMERTYPE_FK
			
					CREATE INDEX CUSTOMER_IDCUSTOMERTY_I ON  customer ( idCustomerType );    -- 1_1
			
			
			-- CUSTOMER_COMPANY_FK
			
					CREATE INDEX CUSTOMER_IDCOMPANY_I ON  customer ( IdCompany );    -- 1_1
			
			
			
			-- serializeAssociations customertype
			-- CUSTOMERTYPE_COMPANY_FK
			
					CREATE INDEX CUSTOMERTYPE_IDCOMPANY_I ON  customertype ( idCompany );    -- 1_1
			
			
			
			-- serializeAssociations directcosts
			-- DIRECTCOSTS_BUDGETACCOUNTS_FK
			
					CREATE INDEX DIRECTCOSTS_IDBUDGETACCO_I ON  directcosts ( IdBudgetAccount );    -- 1_1
			
			
			-- DIRECTCOSTS_PROJECTCOSTS_FK
			
					CREATE INDEX DIRECTCOSTS_IDPROJECTCOS_I ON  directcosts ( IdProjectCosts );    -- 1_1
			
			
			
			-- serializeAssociations documentation
			-- DOCUMENTATION_COMPANY_FK
			
					CREATE INDEX DOCUMENTATIO_IDCOMPANY_I ON  documentation ( idCompany );    -- 1_1
			
			
			-- DOCUMENTATION_CONTENTFILE_FK
			
					CREATE INDEX DOCUMENTATIO_IDCONTENTFIL_I ON  documentation ( idContentFile );    -- 1_1
			
			
			
			-- serializeAssociations documentproject
			-- DOCUMENTPROJECT_PROJECT_FK
			
					CREATE INDEX DOCUMENTPROJ_IDPROJECT_I ON  documentproject ( idProject );    -- 1_1
			
			
			
			-- serializeAssociations employee
			-- EMPLOYEE_SELLER_FK
			
					CREATE INDEX EMPLOYEE_IDSELLER_I ON  employee ( idSeller );    -- 1_1
			
			
			-- EMPLOYEE_PERFORG_FK
			
					CREATE INDEX EMPLOYEE_IDPERFORG_I ON  employee ( idPerfOrg );    -- 1_1
			
			
			-- EMPLOYEE_RESPROFILES_FK
			
					CREATE INDEX EMPLOYEE_IDPROFILE_I ON  employee ( idProfile );    -- 1_1
			
			
			-- EMPLOYEE_CONTACT_FK
			
					CREATE INDEX EMPLOYEE_IDCONTACT_I ON  employee ( idContact );    -- 1_1
			
			
			-- EMPLOYEE_RESOURCEPOOL_FK
			
					CREATE INDEX EMPLOYEE_IDRESOURCEPO_I ON  employee ( idResourcePool );    -- 1_1
			
			
			-- EMPLOYEE_CALENDARBASE_FK
			
					CREATE INDEX EMPLOYEE_IDCALENDARBA_I ON  employee ( idCalendarBase );    -- 1_1
			
			
			
			-- serializeAssociations employeeoperationdate
			-- EMPLOPEDATE_OPERATION_FK
			
					CREATE INDEX EMPLOYEEOPER_IDOPERATION_I ON  employeeoperationdate ( idOperation );    -- 1_1
			
			
			-- EMPLOPEDATE_EMPLOYEE_FK
			
					CREATE INDEX EMPLOYEEOPER_IDEMPLOYEE_I ON  employeeoperationdate ( idEmployee );    -- 1_1
			
			
			
			-- serializeAssociations executivereport
			-- EXECUTIVEREPORT_PROJECT_FK
			
					CREATE INDEX EXECUTIVEREP_IDPROJECT_I ON  executivereport ( idProject );    -- 1_1
			
			
			
			-- serializeAssociations expenseaccounts
			-- EXPENSEACCOUNTS_COMPANY_FK
			
					CREATE INDEX EXPENSEACCOU_IDCOMPANY_I ON  expenseaccounts ( idCompany );    -- 1_1
			
			
			
			-- serializeAssociations expenses
			-- EXPENSES_BUDGETACCOUNTS_FK
			
					CREATE INDEX EXPENSES_IDBUDGETACCO_I ON  expenses ( IdBudgetAccount );    -- 1_1
			
			
			-- EXPENSES_PROJECTCOSTS_FK
			
					CREATE INDEX EXPENSES_IDPROJECTCOS_I ON  expenses ( IdProjectCosts );    -- 1_1
			
			
			
			-- serializeAssociations expensesheet
			-- EXPENSESHEET_EXPENSE_FK
			
					CREATE INDEX EXPENSESHEET_IDEXPENSE_I ON  expensesheet ( idExpense );    -- 1_1
			
			
			-- EXPENSESHEET_PROJECT_FK
			
					CREATE INDEX EXPENSESHEET_IDPROJECT_I ON  expensesheet ( idProject );    -- 1_1
			
			
			-- EXPENSESHEET_OPERATION_FK
			
					CREATE INDEX EXPENSESHEET_IDOPERATION_I ON  expensesheet ( idOperation );    -- 1_1
			
			
			-- EXPENSESHEET_EXPACCOUNTS_FK
			
					CREATE INDEX EXPENSESHEET_IDEXPENSEACC_I ON  expensesheet ( idExpenseAccount );    -- 1_1
			
			
			-- EXPENSESHEET_EMPLOYEE_FK
			
					CREATE INDEX EXPENSESHEET_IDEMPLOYEE_I ON  expensesheet ( idEmployee );    -- 1_1
			
			
			
			-- serializeAssociations expensesheetcomment
			-- EXPSHEETCOMMENT_EXPSHEET_FK
			
					CREATE INDEX EXPENSESHEET_IDEXPENSESHE_I ON  expensesheetcomment ( idExpenseSheet );    -- 1_1
			
			
			
			-- serializeAssociations fundingsource
			-- FUNDINGSOURCE_COMPANY_FK
			
					CREATE INDEX FUNDINGSOURC_IDCOMPANY_I ON  fundingsource ( idCompany );    -- 1_1
			
			
			
			-- serializeAssociations geography
			-- GEOGRAPHY_COMPANY_FK
			
					CREATE INDEX GEOGRAPHY_IDCOMPANY_I ON  geography ( idCompany );    -- 1_1
			
			
			
			-- serializeAssociations historickpi
			-- HISTORICKPI_PROJECTKPI_FK
			
					CREATE INDEX HISTORICKPI_IDPROJECTKPI_I ON  historickpi ( idProjectKpi );    -- 1_1
			
			
			-- HISTORICKPI_EMPLOYEE_FK
			
					CREATE INDEX HISTORICKPI_IDEMPLOYEE_I ON  historickpi ( idEmployee );    -- 1_1
			
			
			
			-- serializeAssociations historicrisk
			
			-- serializeAssociations incomes
			-- INCOMES_PROJECT_FK
			
					CREATE INDEX INCOMES_IDPROJECT_I ON  incomes ( idProject );    -- 1_1
			
			
			
			-- serializeAssociations issuelog
			-- ISSUELOG_PROJECT_FK
			
					CREATE INDEX ISSUELOG_IDPROJECT_I ON  issuelog ( IdProject );    -- 1_1
			
			
			
			-- serializeAssociations iwo
			-- IWO_PROJECTCOSTS_FK
			
					CREATE INDEX IWO_IDPROJECTCOS_I ON  iwo ( IdProjectCosts );    -- 1_1
			
			
			
			-- serializeAssociations jobcategory
			-- JOBCATEGORY_COMPANY_FK
			
					CREATE INDEX JOBCATEGORY_IDCOMPANY_I ON  jobcategory ( idCompany );    -- 1_1
			
			
			
			-- serializeAssociations jobcatemployee
			-- JOBCATEMPLOYEE_JOBCATEGORY_FK
			
					CREATE INDEX JOBCATEMPLOY_IDJOBCATEGOR_I ON  jobcatemployee ( idJobCategory );    -- 1_1
			
			
			-- JOBCATEMPLOYEE_EMPLOYEE_FK
			
					CREATE INDEX JOBCATEMPLOY_IDEMPLOYEE_I ON  jobcatemployee ( idEmployee );    -- 1_1
			
			
			
			-- serializeAssociations knowledgearea
			-- KNOWLEDGEAREA_COMPANY_FK
			
					CREATE INDEX KNOWLEDGEARE_IDCOMPANY_I ON  knowledgearea ( idCompany );    -- 1_1
			
			
			
			-- serializeAssociations label
			-- LABEL_COMPANY_FK
			
					CREATE INDEX LABEL_IDCOMPANY_I ON  label ( idCompany );    -- 1_1
			
			
			
			-- serializeAssociations learnedlesson
			-- LEARNEDLESSON_PROFILE_FK
			
					CREATE INDEX LEARNEDLESSO_IDPROFILE_I ON  learnedlesson ( idProfile );    -- 1_1
			
			
			-- LEARNEDLESSON_CONTACT_FK
			
					CREATE INDEX LEARNEDLESSO_IDCONTACT_I ON  learnedlesson ( idContact );    -- 1_1
			
			
			-- LEARNEDLESSON_PROGRAM_FK
			
					CREATE INDEX LEARNEDLESSO_IDPROGRAM_I ON  learnedlesson ( idProgram );    -- 1_1
			
			
			-- LEARNEDLESSON_CUSTOMER_FK
			
					CREATE INDEX LEARNEDLESSO_IDCUSTOMER_I ON  learnedlesson ( idCustomer );    -- 1_1
			
			
			-- LEARNEDLESSON_FUNDING_FK
			
					CREATE INDEX LEARNEDLESSO_IDFUNDINGSOU_I ON  learnedlesson ( idFundingSource );    -- 1_1
			
			
			-- LEARNEDLESSON_SELLER_FK
			
					CREATE INDEX LEARNEDLESSO_IDSELLER_I ON  learnedlesson ( idSeller );    -- 1_1
			
			
			-- LEARNEDLESSON_GEOGRAPHIC_FK
			
					CREATE INDEX LEARNEDLESSO_IDGEOGRAPHY_I ON  learnedlesson ( idGeography );    -- 1_1
			
			
			-- LEARNEDLESSON_COMPANY_FK
			
					CREATE INDEX LEARNEDLESSO_IDCOMPANY_I ON  learnedlesson ( idCompany );    -- 1_1
			
			
			-- LEARNEDLESSON_KNOWLEDGEAREA_FK
			
					CREATE INDEX LEARNEDLESSO_IDKNOWLEDGEA_I ON  learnedlesson ( idKnowledgeArea );    -- 1_1
			
			
			-- LEARNEDLESSON_CONTRACT_FK
			
					CREATE INDEX LEARNEDLESSO_IDCONTRACTTY_I ON  learnedlesson ( idContractType );    -- 1_1
			
			
			
			-- serializeAssociations learnedlessonlink
			-- USEDLESSON_LESSON_FK
			
					CREATE INDEX LEARNEDLESSO_IDLEARNEDLES_I ON  learnedlessonlink ( idLearnedLesson );    -- 1_1
			
			
			-- USEDLESSON_PROJECT_FK
			
					CREATE INDEX LEARNEDLESSO_IDPROJECT_I ON  learnedlessonlink ( idProject );    -- 1_1
			
			
			
			-- serializeAssociations learnedlessonproject
			-- PROGENLESSON_LESSON_FK
			
					CREATE INDEX LEARNEDLESSO_IDLEARNEDLES_I ON  learnedlessonproject ( idLearnedLesson );    -- 1_1
			
			
			-- PROGENLESSON_PROJECT_FK
			
					CREATE INDEX LEARNEDLESSO_IDPROJECT_I ON  learnedlessonproject ( idProject );    -- 1_1
			
			
			
			-- serializeAssociations logprojectstatus
			-- LOGPROJECTSTATUS_PROJECT_FK
			
					CREATE INDEX LOGPROJECTST_IDPROJECT_I ON  logprojectstatus ( idProject );    -- 1_1
			
			
			-- LOGPROJECTSTATUS_EMPLOYEE_FK
			
					CREATE INDEX LOGPROJECTST_IDEMPLOYEE_I ON  logprojectstatus ( idEmployee );    -- 1_1
			
			
			
			-- serializeAssociations managepool
			-- idResourceManager
			
					CREATE INDEX MANAGEPOOL_IDRESOURCEMA_I ON  managepool ( idResourceManager );    -- 1_1
			
			
			-- idResourcePool
			
					CREATE INDEX MANAGEPOOL_IDRESOURCEPO_I ON  managepool ( idResourcePool );    -- 1_1
			
			
			
			-- serializeAssociations market
			
			-- serializeAssociations metrickpi
			-- METRICKPI_BSCDIMENSION_FK
			
					CREATE INDEX METRICKPI_IDBSCDIMENSI_I ON  metrickpi ( idBscDimension );    -- 1_1
			
			
			-- METRICKPI_COMPANY_FK
			
					CREATE INDEX METRICKPI_IDCOMPANY_I ON  metrickpi ( idCompany );    -- 1_1
			
			
			
			-- serializeAssociations milestonecategory
			-- MILESTONECATEGORY_COMPANY_FK
			
					CREATE INDEX MILESTONECAT_IDCOMPANY_I ON  milestonecategory ( idCompany );    -- 1_1
			
			
			
			-- serializeAssociations milestones
			-- MILESTONE_MILESTONETYPE_FK
			
					CREATE INDEX MILESTONES_IDMILESTONET_I ON  milestones ( idMilestoneType );    -- 1_1
			
			
			-- MILESTONE_MILESTONECATEGORY_FK
			
					CREATE INDEX MILESTONES_IDMILESTONEC_I ON  milestones ( idMilestoneCategory );    -- 1_1
			
			
			-- MILESTONE_PROJECT_FK
			
					CREATE INDEX MILESTONES_IDPROJECT_I ON  milestones ( IdProject );    -- 1_1
			
			
			-- MILESTONE_ACTIVITY_FK
			
					CREATE INDEX MILESTONES_IDACTIVITY_I ON  milestones ( IdActivity );    -- 1_1
			
			
			
			-- serializeAssociations milestonetype
			-- MILESTONETYPE_COMPANY_FK
			
					CREATE INDEX MILESTONETYP_IDCOMPANY_I ON  milestonetype ( idCompany );    -- 1_1
			
			
			
			-- serializeAssociations notification
			
			-- serializeAssociations notificationemployee
			-- NOTIFEMPLOYEE_NOTIFTYPE_FK
			
					CREATE INDEX NOTIFICATION_IDNOTIFICATI_I ON  notificationemployee ( idNotificationType );    -- 1_1
			
			
			-- NOTIFEMPLOYEE_EMPLOYEE_FK
			
					CREATE INDEX NOTIFICATION_IDEMPLOYEE_I ON  notificationemployee ( idEmployee );    -- 1_1
			
			
			
			-- serializeAssociations notificationprofile
			-- NOTIFPROFILE_RESPROFILES_FK
			
					CREATE INDEX NOTIFICATION_IDPROFILE_I ON  notificationprofile ( idProfile );    -- 1_1
			
			
			-- NOTIFPROFILE_NOTIFTYPE_FK
			
					CREATE INDEX NOTIFICATION_IDNOTIFICATI_I ON  notificationprofile ( idNotificationType );    -- 1_1
			
			
			
			-- serializeAssociations notificationproject
			-- NOTIFPROJECT_NOTIFTYPE_FK
			
					CREATE INDEX NOTIFICATION_IDNOTIFICATI_I ON  notificationproject ( idNotificationType );    -- 1_1
			
			
			-- NOTIFPROJECT_PROJECT_FK
			
					CREATE INDEX NOTIFICATION_IDPROJECT_I ON  notificationproject ( idProject );    -- 1_1
			
			
			
			-- serializeAssociations notificationtype
			-- NOTIFICATIONTYPE_COMPANY_FK
			
					CREATE INDEX NOTIFICATION_IDCOMPANY_I ON  notificationtype ( idCompany );    -- 1_1
			
			
			
			-- serializeAssociations operation
			-- OPERATION_OPERATIONACCOUNT_FK
			
					CREATE INDEX OPERATION_IDOPACCOUNT_I ON  operation ( IdOpAccount );    -- 1_1
			
			
			
			-- serializeAssociations operationaccount
			-- OPERATIONACCOUNT_COMPANY_FK
			
					CREATE INDEX OPERATIONACC_IDCOMPANY_I ON  operationaccount ( idCompany );    -- 1_1
			
			
			
			-- serializeAssociations performingorg
			-- PERFORMINGORG_EMPLOYEE_FK
			
					CREATE INDEX PERFORMINGOR_MANAGER_I ON  performingorg ( Manager );    -- 1_1
			
			
			-- PERFORMINGORG_COMPANY_FK
			
					CREATE INDEX PERFORMINGOR_IDCOMPANY_I ON  performingorg ( IdCompany );    -- 1_1
			
			
			
			-- serializeAssociations plugin
			-- PLUGIN_COMPANY_FK
			
					CREATE INDEX PLUGIN_IDCOMPANY_I ON  plugin ( idCompany );    -- 1_1
			
			
			
			-- serializeAssociations pluginconfiguration
			-- PLUGINCONF_PLUGIN_FK
			
					CREATE INDEX PLUGINCONFIG_IDPLUGIN_I ON  pluginconfiguration ( idPlugin );    -- 1_1
			
			
			
			-- serializeAssociations pluginfile
			-- PLUGINFILE_PLUGIN_FK
			
					CREATE INDEX PLUGINFILE_IDPLUGIN_I ON  pluginfile ( idPlugin );    -- 1_1
			
			
			-- PLUGINFILE_CONTENTFILE_FK
			
					CREATE INDEX PLUGINFILE_IDCONTENTFIL_I ON  pluginfile ( idContentFile );    -- 1_1
			
			
			
			-- serializeAssociations problemcheck
			-- PROBLEMCHECK_COMPANY_FK
			
					CREATE INDEX PROBLEMCHECK_IDCOMPANY_I ON  problemcheck ( idCompany );    -- 1_1
			
			
			
			-- serializeAssociations problemcheckproject
			-- PROBLCHECKPROJ_PROBLEMCHECK_FK
			
					CREATE INDEX PROBLEMCHECK_IDPROBLEMCHE_I ON  problemcheckproject ( idProblemCheck );    -- 1_1
			
			
			-- PROBLCHECKPROJ_PROJECT_FK
			
					CREATE INDEX PROBLEMCHECK_IDPROJECT_I ON  problemcheckproject ( idProject );    -- 1_1
			
			
			
			-- serializeAssociations procurementpayments
			-- PROCPAYMENTS_PROJECT_FK
			
					CREATE INDEX PROCUREMENTP_IDPROJECT_I ON  procurementpayments ( idProject );    -- 1_1
			
			
			-- PROCPAYMENTS_SELLER_FK
			
					CREATE INDEX PROCUREMENTP_IDSELLER_I ON  procurementpayments ( idSeller );    -- 1_1
			
			
			
			-- serializeAssociations profile
			-- PROFILE_COMPANY_FK
			
					CREATE INDEX PROFILE_IDCOMPANY_I ON  profile ( idCompany );    -- 1_1
			
			
			
			-- serializeAssociations program
			-- PROGRAM_PERFORMINGORG_FK
			
					CREATE INDEX PROGRAM_IDPERFORG_I ON  program ( idPerfOrg );    -- 1_1
			
			
			-- PROGRAM_PMEMPLOYEE_FK
			
					CREATE INDEX PROGRAM_PROGRAMMANAG_I ON  program ( ProgramManager );    -- 1_1
			
			
			
			-- serializeAssociations project
			-- PROJECT_CATEGORY_FK
			
					CREATE INDEX PROJECT_IDCATEGORY_I ON  project ( idCategory );    -- 1_1
			
			
			-- PROJECT_PERFORMINGORG_FK
			
					CREATE INDEX PROJECT_IDPERFORG_I ON  project ( idPerfOrg );    -- 1_1
			
			
			-- PROJECT_SPEMPLOYEE_FK
			
					CREATE INDEX PROJECT_SPONSOR_I ON  project ( sponsor );    -- 1_1
			
			
			-- PROJECT_FMEMPLOYEE_FK
			
					CREATE INDEX PROJECT_FUNCTIONALMA_I ON  project ( functionalManager );    -- 1_1
			
			
			-- PROJECT_PROJECTCALENDAR_FK
			
					CREATE INDEX PROJECT_IDPROJECTCAL_I ON  project ( idProjectCalendar );    -- 1_1
			
			
			-- PROJECT_CUSTOMER_FK
			
					CREATE INDEX PROJECT_IDCUSTOMER_I ON  project ( idCustomer );    -- 1_1
			
			
			-- PROJECT_PROGRAM_FK
			
					CREATE INDEX PROJECT_IDPROGRAM_I ON  project ( idProgram );    -- 1_1
			
			
			-- PROJECT_CONTRACTTYPE_FK
			
					CREATE INDEX PROJECT_IDCONTRACTTY_I ON  project ( IdContractType );    -- 1_1
			
			
			-- PROJECT_GEOGRAPHY_FK
			
					CREATE INDEX PROJECT_IDGEOGRAPHY_I ON  project ( idGeography );    -- 1_1
			
			
			-- PROJECT_PMEMPLOYEE_FK
			
					CREATE INDEX PROJECT_PROJECTMANAG_I ON  project ( projectManager );    -- 1_1
			
			
			-- PROJECT_STAGEGATE_FK
			
					CREATE INDEX PROJECT_IDSTAGEGATE_I ON  project ( idStageGate );    -- 1_1
			
			
			-- PROJECT_CLASSIFICATIONLEVEL_FK
			
					CREATE INDEX PROJECT_IDCLASSIFICA_I ON  project ( idClassificationlevel );    -- 1_1
			
			
			-- PROJECT_IMEMPLOYEE_FK
			
					CREATE INDEX PROJECT_INVESTMENTMA_I ON  project ( investmentManager );    -- 1_1
			
			
			
			-- serializeAssociations projectactivity
			-- PROJECTACTIVITY_PROJECT_FK
			
					CREATE INDEX PROJECTACTIV_IDPROJECT_I ON  projectactivity ( idProject );    -- 1_1
			
			
			-- PROJECTACTIVITY_WBSNODE_FK
			
					CREATE INDEX PROJECTACTIV_WORKPACKAGE_I ON  projectactivity ( WorkPackage );    -- 1_1
			
			
			
			-- serializeAssociations projectassociation
			-- PROJSSOCIATION_LEADPROJECT_FK
			
					CREATE INDEX PROJECTASSOC_LEAD_I ON  projectassociation ( lead );    -- 1_1
			
			
			-- PROJSSOCIATION_DEPPROJECT_FK
			
					CREATE INDEX PROJECTASSOC_DEPENDENT_I ON  projectassociation ( dependent );    -- 1_1
			
			
			
			-- serializeAssociations projectcalendar
			-- PROJCALENDAR_CALENDARBASE_FK
			
					CREATE INDEX PROJECTCALEN_IDCALENDARBA_I ON  projectcalendar ( idCalendarBase );    -- 1_1
			
			
			
			-- serializeAssociations projectcalendarexceptions
			-- PROJCALEXCEPTIONS_PROJCAL_FK
			
					CREATE INDEX PROJECTCALEN_IDPROJECTCAL_I ON  projectcalendarexceptions ( IdProjectCalendar );    -- 1_1
			
			
			
			-- serializeAssociations projectcharter
			-- PROJECTCHARTER_PROJECT_FK
			
					CREATE INDEX PROJECTCHART_IDPROJECT_I ON  projectcharter ( IdProject );    -- 1_1
			
			
			
			-- serializeAssociations projectclosure
			-- PROJECTCLOSURE_PROJECT_FK
			
					CREATE INDEX PROJECTCLOSU_IDPROJECT_I ON  projectclosure ( idProject );    -- 1_1
			
			
			
			-- serializeAssociations projectcosts
			-- PROJECTCOSTS_PROJECT_FK
			
					CREATE INDEX PROJECTCOSTS_IDPROJECT_I ON  projectcosts ( IdProject );    -- 1_1
			
			
			
			-- serializeAssociations projectdata
			-- projectdata_ibfk_1
			
					CREATE INDEX PROJECTDATA_IDPROJECT_I ON  projectdata ( idProject );    -- 1_1
			
			
			
			-- serializeAssociations projectfollowup
			-- PROJECTFOLLOWUP_PROJECT_FK
			
					CREATE INDEX PROJECTFOLLO_IDPROJECT_I ON  projectfollowup ( IdProject );    -- 1_1
			
			
			
			-- serializeAssociations projectfundingsource
			-- PROJFUNDSOURC_FOUNDSOURC_FK
			
					CREATE INDEX PROJECTFUNDI_IDFUNDINGSOU_I ON  projectfundingsource ( idFundingSource );    -- 1_1
			
			
			-- PROJFUNDSOURC_PROJECT_FK
			
					CREATE INDEX PROJECTFUNDI_IDPROJECT_I ON  projectfundingsource ( idProject );    -- 1_1
			
			
			
			-- serializeAssociations projectkpi
			-- PROJECTKPI_PROJECT_FK
			
					CREATE INDEX PROJECTKPI_IDPROJECT_I ON  projectkpi ( IdProject );    -- 1_1
			
			
			-- PROJECTKPI_METRICKPI_FK
			
					CREATE INDEX PROJECTKPI_IDMETRICKPI_I ON  projectkpi ( idMetricKpi );    -- 1_1
			
			
			
			-- serializeAssociations projectlabel
			-- PROJLABEL_PROJ_FK
			
					CREATE INDEX PROJECTLABEL_IDPROJECT_I ON  projectlabel ( idProject );    -- 1_1
			
			
			-- PROJLABEL_LABEL_FK
			
					CREATE INDEX PROJECTLABEL_IDLABEL_I ON  projectlabel ( idLabel );    -- 1_1
			
			
			
			-- serializeAssociations projecttechnology
			-- PROJTECHNOLOGY_TECHNOLOGY_FK
			
					CREATE INDEX PROJECTTECHN_IDTECHNOLOGY_I ON  projecttechnology ( idTechnology );    -- 1_1
			
			
			-- PROJTECHNOLOGY_PROJ_FK
			
					CREATE INDEX PROJECTTECHN_IDPROJECT_I ON  projecttechnology ( idProject );    -- 1_1
			
			
			
			-- serializeAssociations recommendationlesson
			-- RECLESSON_LESLEARNED_FK
			
					CREATE INDEX RECOMMENDATI_IDLEARNEDLES_I ON  recommendationlesson ( idLearnedLesson );    -- 1_1
			
			
			
			-- serializeAssociations resourcepool
			-- idCompany
			
					CREATE INDEX RESOURCEPOOL_IDCOMPANY_I ON  resourcepool ( idCompany );    -- 1_1
			
			
			
			-- serializeAssociations resourceprofiles
			
			-- serializeAssociations riskcategories
			
			-- serializeAssociations riskcategory
			-- RISKCATEGORY_COMPANY_FK
			
					CREATE INDEX RISKCATEGORY_IDCOMPANY_I ON  riskcategory ( idCompany );    -- 1_1
			
			
			
			-- serializeAssociations riskreassessmentlog
			-- RISKREASSLOG_RISKREGISTER_FK
			
					CREATE INDEX RISKREASSESS_IDRISK_I ON  riskreassessmentlog ( IdRisk );    -- 1_1
			
			
			-- RISKLOG_EMPLOYEE_FK
			
					CREATE INDEX RISKREASSESS_IDEMPLOYEE_I ON  riskreassessmentlog ( idEmployee );    -- 1_1
			
			
			
			-- serializeAssociations riskregister
			-- RISKREGISTER_RISKCATEGORIES_FK
			
					CREATE INDEX RISKREGISTER_IDRISKCATEGO_I ON  riskregister ( IdRiskCategory );    -- 1_1
			
			
			-- RISKREGISTER_PROJECT_FK
			
					CREATE INDEX RISKREGISTER_IDPROJECT_I ON  riskregister ( IdProject );    -- 1_1
			
			
			-- RISKREGISTER_RISKCATEGORY_FK
			
					CREATE INDEX RISKREGISTER_IDRISKCATEGO_I ON  riskregister ( idRiskcategoryTemp );    -- 1_1
			
			
			
			-- serializeAssociations riskregistertemplate
			-- RISKREGISTERTEMPLATE_RISKCATEGORIES_FK
			
					CREATE INDEX RISKREGISTER_IDRISKCATEGO_I ON  riskregistertemplate ( IdRiskCategory );    -- 1_1
			
			
			-- RISKREGTEMPL_RISKCATEGORY_FK
			
					CREATE INDEX RISKREGISTER_IDRISKCATEG_I ON  riskregistertemplate ( idRiskCateg );    -- 1_1
			
			
			-- RISKREGISTERTEMPLATE_COMPANY_FK
			
					CREATE INDEX RISKREGISTER_IDCOMPANY_I ON  riskregistertemplate ( idCompany );    -- 1_1
			
			
			
			-- serializeAssociations security
			-- SECURITY_CONTACT_FK
			
					CREATE INDEX SECURITY_IDCONTACT_I ON  security ( idContact );    -- 1_1
			
			
			
			-- serializeAssociations seller
			-- SELLER_COMPANY_FK
			
					CREATE INDEX SELLER_IDCOMPANY_I ON  seller ( idCompany );    -- 1_1
			
			
			
			-- serializeAssociations setting
			-- SETTING_COMPANY_FK
			
					CREATE INDEX SETTING_IDCOMPANY_I ON  setting ( idCompany );    -- 1_1
			
			
			
			-- serializeAssociations skill
			-- SKILL_COMPANY_FK
			
					CREATE INDEX SKILL_IDCOMPANY_I ON  skill ( idCompany );    -- 1_1
			
			
			
			-- serializeAssociations skillsemployee
			-- SKILLSEMPLOYEE_SKILL_FK
			
					CREATE INDEX SKILLSEMPLOY_IDSKILL_I ON  skillsemployee ( idSkill );    -- 1_1
			
			
			-- SKILLSEMPLOYEE_EMPLOYEE_FK
			
					CREATE INDEX SKILLSEMPLOY_IDEMPLOYEE_I ON  skillsemployee ( idEmployee );    -- 1_1
			
			
			
			-- serializeAssociations stagegate
			-- STAGE_COMPANY_FK
			
					CREATE INDEX STAGEGATE_IDCOMPANY_I ON  stagegate ( idCompany );    -- 1_1
			
			
			
			-- serializeAssociations stakeholder
			-- STAKEHOLDER_PROJECT_FK
			
					CREATE INDEX STAKEHOLDER_IDPROJECT_I ON  stakeholder ( IdProject );    -- 1_1
			
			
			-- STAKEHOLDER_SHCLASSIF_FK
			
					CREATE INDEX STAKEHOLDER_IDSTAKEHOLDE_I ON  stakeholder ( idStakeholderClassification );    -- 1_1
			
			
			-- STAKEHOLDER_EMPLESTAKEHOLDER_FK
			
					CREATE INDEX STAKEHOLDER_IDEMPLOYEE_I ON  stakeholder ( idEmployee );    -- 1_1
			
			
			
			-- serializeAssociations stakeholderclassification
			-- SHCLASSIFICATION_COMPANY_FK
			
					CREATE INDEX STAKEHOLDERC_IDCOMPANY_I ON  stakeholderclassification ( idCompany );    -- 1_1
			
			
			
			-- serializeAssociations teammember
			-- TEAMMEMBER_ACTIVITY_FK
			
					CREATE INDEX TEAMMEMBER_IDACTIVITY_I ON  teammember ( IdActivity );    -- 1_1
			
			
			-- TEAMMEMBER_JOBCATEGORY_FK
			
					CREATE INDEX TEAMMEMBER_IDJOBCATEGOR_I ON  teammember ( idJobCategory );    -- 1_1
			
			
			-- TEAMMEMBER_EMPLOYEE_FK
			
					CREATE INDEX TEAMMEMBER_IDEMPLOYEE_I ON  teammember ( idEmployee );    -- 1_1
			
			
			
			-- serializeAssociations technology
			-- TECHNOLOGY_COMPANY_FK
			
					CREATE INDEX TECHNOLOGY_IDCOMPANY_I ON  technology ( idCompany );    -- 1_1
			
			
			
			-- serializeAssociations timeline
			-- TIMELINE_TIMELINETYPE_FK
			
					CREATE INDEX TIMELINE_IDTIMELINETY_I ON  timeline ( idTimelineType );    -- 1_1
			
			
			-- TIMELINE_DOCUMENT_FK
			
					CREATE INDEX TIMELINE_IDDOCUMENTPR_I ON  timeline ( idDocumentProject );    -- 1_1
			
			
			-- TIMELINE_PROJECT_FK
			
					CREATE INDEX TIMELINE_IDPROJECT_I ON  timeline ( idProject );    -- 1_1
			
			
			
			-- serializeAssociations timelinetype
			-- TIMELINETYPE_CNY_FK
			
					CREATE INDEX TIMELINETYPE_IDCOMPANY_I ON  timelinetype ( idCompany );    -- 1_1
			
			
			
			-- serializeAssociations timesheet
			-- TIMESHEET_OPERATION_FK
			
					CREATE INDEX TIMESHEET_IDOPERATION_I ON  timesheet ( idOperation );    -- 1_1
			
			
			-- TIMESHEET_ACTIVITY_FK
			
					CREATE INDEX TIMESHEET_IDACTIVITY_I ON  timesheet ( idActivity );    -- 1_1
			
			
			-- TIMESHEET_EMPLOYEE_FK
			
					CREATE INDEX TIMESHEET_IDEMPLOYEE_I ON  timesheet ( idEmployee );    -- 1_1
			
			
			
			-- serializeAssociations timesheetcomment
			-- TIMESHEETCOMMENT_TIMESHEET_FK
			
					CREATE INDEX TIMESHEETCOM_IDTIMESHEET_I ON  timesheetcomment ( idTimeSheet );    -- 1_1
			
			
			
			-- serializeAssociations wbsnode
			-- WBSNODE_PARENT_FK
			
					CREATE INDEX WBSNODE_PARENT_I ON  wbsnode ( Parent );    -- 1_1
			
			
			-- WBSNODE_PROJECT_FK
			
					CREATE INDEX WBSNODE_IDPROJECT_I ON  wbsnode ( idProject );    -- 1_1
			
			
			
			-- serializeAssociations wbstemplate
			
			-- serializeAssociations workingcosts
			-- WORKINGCOSTS_PROJECT_FK
			
					CREATE INDEX WORKINGCOSTS_IDPROJECT_I ON  workingcosts ( idProject );    -- 1_1
			
			
			-- WORKINGCOSTS_CURRENCY_FK
			
					CREATE INDEX WORKINGCOSTS_IDCURRENCY_I ON  workingcosts ( idCurrency );    -- 1_1
			
			
			
-- END PACKAGE openppm -----------------------------------------------------------------------
