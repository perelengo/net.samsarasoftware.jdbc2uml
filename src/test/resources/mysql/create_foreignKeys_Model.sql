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
			-- actionlesson
			
			-- serializeAssociations actionlesson
			-- ACTLESSON_LESLEARNED_FK
					ALTER TABLE actionlesson -- 1_1
						ADD CONSTRAINT ACTLESSON_LESLEARNED_FK FOREIGN KEY (
							idLearnedLesson 
						)	REFERENCES 
							learnedlesson
								(
									idLearnedLesson
								)
						;
			

			-- activityseller
			
			-- serializeAssociations activityseller
			-- ACTIVITYSELLER_PROJECT_FK
					ALTER TABLE activityseller -- 1_1
						ADD CONSTRAINT ACTIVITYSELLER_PROJECT_FK FOREIGN KEY (
							idProjectAssociate 
						)	REFERENCES 
							project
								(
									idProject
								)
						;
			-- ACTIVITYSELLER_SELLER_FK
					ALTER TABLE activityseller -- 1_1
						ADD CONSTRAINT ACTIVITYSELLER_SELLER_FK FOREIGN KEY (
							idSeller 
						)	REFERENCES 
							seller
								(
									idSeller
								)
						;
			-- ACTIVITYSELLER_ACTIVITY_FK
					ALTER TABLE activityseller -- 1_1
						ADD CONSTRAINT ACTIVITYSELLER_ACTIVITY_FK FOREIGN KEY (
							idActivity 
						)	REFERENCES 
							projectactivity
								(
									IdActivity
								)
						;
			

			-- assumptionreassessmentlog
			
			-- serializeAssociations assumptionreassessmentlog
			-- ASSREALOG_ASSREG_FK
					ALTER TABLE assumptionreassessmentlog -- 1_1
						ADD CONSTRAINT ASSREALOG_ASSREG_FK FOREIGN KEY (
							IdAssumption 
						)	REFERENCES 
							assumptionregister
								(
									IdAssumption
								)
						;
			

			-- assumptionregister
			
			-- serializeAssociations assumptionregister
			-- ASSUMPTIONREGISTER_PROJECT_FK
					ALTER TABLE assumptionregister -- 1_1
						ADD CONSTRAINT ASSUMPTIONREGISTER_PROJECT_FK FOREIGN KEY (
							IdProject 
						)	REFERENCES 
							project
								(
									idProject
								)
						;
			

			-- auditdata
			
			-- serializeAssociations auditdata
			

			-- bscdimension
			
			-- serializeAssociations bscdimension
			-- BSCDIM_COMPANY_FK
					ALTER TABLE bscdimension -- 1_1
						ADD CONSTRAINT BSCDIM_COMPANY_FK FOREIGN KEY (
							idCompany 
						)	REFERENCES 
							company
								(
									IdCompany
								)
						;
			

			-- budgetaccounts
			
			-- serializeAssociations budgetaccounts
			-- BUDGETACCOUNTS_COMPANY_FK
					ALTER TABLE budgetaccounts -- 1_1
						ADD CONSTRAINT BUDGETACCOUNTS_COMPANY_FK FOREIGN KEY (
							idCompany 
						)	REFERENCES 
							company
								(
									IdCompany
								)
						;
			

			-- businessdriver
			
			-- serializeAssociations businessdriver
			

			-- businessdriverset
			
			-- serializeAssociations businessdriverset
			

			-- calendarbase
			
			-- serializeAssociations calendarbase
			-- CALENDARBASE_COMPANY_FK
					ALTER TABLE calendarbase -- 1_1
						ADD CONSTRAINT CALENDARBASE_COMPANY_FK FOREIGN KEY (
							idCompany 
						)	REFERENCES 
							company
								(
									IdCompany
								)
						;
			

			-- calendarbaseexceptions
			
			-- serializeAssociations calendarbaseexceptions
			-- CALBASEEXCEP_CALBASE_FK
					ALTER TABLE calendarbaseexceptions -- 1_1
						ADD CONSTRAINT CALBASEEXCEP_CALBASE_FK FOREIGN KEY (
							IdCalendarBase 
						)	REFERENCES 
							calendarbase
								(
									idCalendarBase
								)
						;
			

			-- category
			
			-- serializeAssociations category
			-- CATEGORY_COMPANY_FK
					ALTER TABLE category -- 1_1
						ADD CONSTRAINT CATEGORY_COMPANY_FK FOREIGN KEY (
							idCompany 
						)	REFERENCES 
							company
								(
									IdCompany
								)
						;
			

			-- changecontrol
			
			-- serializeAssociations changecontrol
			-- CHANGECONTROL_CHANGETYPE_FK
					ALTER TABLE changecontrol -- 1_1
						ADD CONSTRAINT CHANGECONTROL_CHANGETYPE_FK FOREIGN KEY (
							IdChangeType 
						)	REFERENCES 
							changetype
								(
									idChangeType
								)
						;
			-- CHANGECONTROL_PROJECT_FK
					ALTER TABLE changecontrol -- 1_1
						ADD CONSTRAINT CHANGECONTROL_PROJECT_FK FOREIGN KEY (
							IdProject 
						)	REFERENCES 
							project
								(
									idProject
								)
						;
			-- CHANGECONTROL_WBSNODE_FK
					ALTER TABLE changecontrol -- 1_1
						ADD CONSTRAINT CHANGECONTROL_WBSNODE_FK FOREIGN KEY (
							IdWBSNode 
						)	REFERENCES 
							wbsnode
								(
									IdWBSNode
								)
						;
			

			-- changerequestwbsnode
			
			-- serializeAssociations changerequestwbsnode
			-- CHANGEREQWBSNODE_WBSNODE_FK
					ALTER TABLE changerequestwbsnode -- 1_1
						ADD CONSTRAINT CHANGEREQWBSNODE_WBSNODE_FK FOREIGN KEY (
							idWBSNode 
						)	REFERENCES 
							wbsnode
								(
									IdWBSNode
								)
						;
			-- CHANGEREQWBSNODE_CHANGE_FK
					ALTER TABLE changerequestwbsnode -- 1_1
						ADD CONSTRAINT CHANGEREQWBSNODE_CHANGE_FK FOREIGN KEY (
							idChange 
						)	REFERENCES 
							changecontrol
								(
									IdChange
								)
						;
			

			-- changetype
			
			-- serializeAssociations changetype
			-- CHANGETYPE_COMPANY_FK
					ALTER TABLE changetype -- 1_1
						ADD CONSTRAINT CHANGETYPE_COMPANY_FK FOREIGN KEY (
							idCompany 
						)	REFERENCES 
							company
								(
									IdCompany
								)
						;
			

			-- chargescosts
			
			-- serializeAssociations chargescosts
			-- CHARGESCOSTS_CURRENCY_FK
					ALTER TABLE chargescosts -- 1_1
						ADD CONSTRAINT CHARGESCOSTS_CURRENCY_FK FOREIGN KEY (
							idCurrency 
						)	REFERENCES 
							currency
								(
									idCurrency
								)
						;
			-- CHARGESCOSTS_PROJECT_FK
					ALTER TABLE chargescosts -- 1_1
						ADD CONSTRAINT CHARGESCOSTS_PROJECT_FK FOREIGN KEY (
							idProject 
						)	REFERENCES 
							project
								(
									idProject
								)
						;
			

			-- checklist
			
			-- serializeAssociations checklist
			-- CHECKLIST_WBSNODE_FK
					ALTER TABLE checklist -- 1_1
						ADD CONSTRAINT CHECKLIST_WBSNODE_FK FOREIGN KEY (
							idWbsnode 
						)	REFERENCES 
							wbsnode
								(
									IdWBSNode
								)
						;
			

			-- classificationlevel
			
			-- serializeAssociations classificationlevel
			-- CLASSIFILEVEL_COMPANY_FK
					ALTER TABLE classificationlevel -- 1_1
						ADD CONSTRAINT CLASSIFILEVEL_COMPANY_FK FOREIGN KEY (
							idCompany 
						)	REFERENCES 
							company
								(
									IdCompany
								)
						;
			

			-- closurecheck
			
			-- serializeAssociations closurecheck
			-- CLOSURECHECK_COMPANY_FK
					ALTER TABLE closurecheck -- 1_1
						ADD CONSTRAINT CLOSURECHECK_COMPANY_FK FOREIGN KEY (
							idCompany 
						)	REFERENCES 
							company
								(
									IdCompany
								)
						;
			

			-- closurecheckproject
			
			-- serializeAssociations closurecheckproject
			-- CLOSCHECKPROJ_PROJECT_FK
					ALTER TABLE closurecheckproject -- 1_1
						ADD CONSTRAINT CLOSCHECKPROJ_PROJECT_FK FOREIGN KEY (
							idProject 
						)	REFERENCES 
							project
								(
									idProject
								)
						;
			-- CLOSCHECKPROJ_CLOSURECHECK_FK
					ALTER TABLE closurecheckproject -- 1_1
						ADD CONSTRAINT CLOSCHECKPROJ_CLOSURECHECK_FK FOREIGN KEY (
							idClosureCheck 
						)	REFERENCES 
							closurecheck
								(
									idClosureCheck
								)
						;
			-- CLOSCHECKPROJ_DOCUMENT_FK
					ALTER TABLE closurecheckproject -- 1_1
						ADD CONSTRAINT CLOSCHECKPROJ_DOCUMENT_FK FOREIGN KEY (
							idDocumentProject 
						)	REFERENCES 
							documentproject
								(
									idDocumentProject
								)
						;
			

			-- company
			
			-- serializeAssociations company
			

			-- companyfile
			
			-- serializeAssociations companyfile
			-- COMPANYFILE_COMPANY_FK
					ALTER TABLE companyfile -- 1_1
						ADD CONSTRAINT COMPANYFILE_COMPANY_FK FOREIGN KEY (
							idCompany 
						)	REFERENCES 
							company
								(
									IdCompany
								)
						;
			-- COMPANYFILE_CONTENTFILE_FK
					ALTER TABLE companyfile -- 1_1
						ADD CONSTRAINT COMPANYFILE_CONTENTFILE_FK FOREIGN KEY (
							idContentFile 
						)	REFERENCES 
							contentfile
								(
									idContentFile
								)
						;
			

			-- configuration
			
			-- serializeAssociations configuration
			-- CONFIGURARION_CONTACT_FK
					ALTER TABLE configuration -- 1_1
						ADD CONSTRAINT CONFIGURARION_CONTACT_FK FOREIGN KEY (
							idContact 
						)	REFERENCES 
							contact
								(
									IdContact
								)
						;
			

			-- contact
			
			-- serializeAssociations contact
			-- CONTACT_COMPANY_FK
					ALTER TABLE contact -- 1_1
						ADD CONSTRAINT CONTACT_COMPANY_FK FOREIGN KEY (
							IdCompany 
						)	REFERENCES 
							company
								(
									IdCompany
								)
						;
			

			-- contactnotification
			
			-- serializeAssociations contactnotification
			-- CONTACTNOTIFICATION_NOTI_FK
					ALTER TABLE contactnotification -- 1_1
						ADD CONSTRAINT CONTACTNOTIFICATION_NOTI_FK FOREIGN KEY (
							idNotification 
						)	REFERENCES 
							notification
								(
									idNotification
								)
						;
			-- CONTACTNOTIFICATION_CONTACT_FK
					ALTER TABLE contactnotification -- 1_1
						ADD CONSTRAINT CONTACTNOTIFICATION_CONTACT_FK FOREIGN KEY (
							idContact 
						)	REFERENCES 
							contact
								(
									IdContact
								)
						;
			

			-- contentfile
			
			-- serializeAssociations contentfile
			

			-- contracttype
			
			-- serializeAssociations contracttype
			-- CONTRACTTYPE_COMPANY_FK
					ALTER TABLE contracttype -- 1_1
						ADD CONSTRAINT CONTRACTTYPE_COMPANY_FK FOREIGN KEY (
							idCompany 
						)	REFERENCES 
							company
								(
									IdCompany
								)
						;
			

			-- currency
			
			-- serializeAssociations currency
			-- CURRENCY_COMPANY_FK
					ALTER TABLE currency -- 1_1
						ADD CONSTRAINT CURRENCY_COMPANY_FK FOREIGN KEY (
							idCompany 
						)	REFERENCES 
							company
								(
									IdCompany
								)
						;
			

			-- customer
			
			-- serializeAssociations customer
			-- CUSTOMER_CUSTOMERTYPE_FK
					ALTER TABLE customer -- 1_1
						ADD CONSTRAINT CUSTOMER_CUSTOMERTYPE_FK FOREIGN KEY (
							idCustomerType 
						)	REFERENCES 
							customertype
								(
									idCustomerType
								)
						;
			-- CUSTOMER_COMPANY_FK
					ALTER TABLE customer -- 1_1
						ADD CONSTRAINT CUSTOMER_COMPANY_FK FOREIGN KEY (
							IdCompany 
						)	REFERENCES 
							company
								(
									IdCompany
								)
						;
			

			-- customertype
			
			-- serializeAssociations customertype
			-- CUSTOMERTYPE_COMPANY_FK
					ALTER TABLE customertype -- 1_1
						ADD CONSTRAINT CUSTOMERTYPE_COMPANY_FK FOREIGN KEY (
							idCompany 
						)	REFERENCES 
							company
								(
									IdCompany
								)
						;
			

			-- directcosts
			
			-- serializeAssociations directcosts
			-- DIRECTCOSTS_BUDGETACCOUNTS_FK
					ALTER TABLE directcosts -- 1_1
						ADD CONSTRAINT DIRECTCOSTS_BUDGETACCOUNTS_FK FOREIGN KEY (
							IdBudgetAccount 
						)	REFERENCES 
							budgetaccounts
								(
									IdBudgetAccount
								)
						;
			-- DIRECTCOSTS_PROJECTCOSTS_FK
					ALTER TABLE directcosts -- 1_1
						ADD CONSTRAINT DIRECTCOSTS_PROJECTCOSTS_FK FOREIGN KEY (
							IdProjectCosts 
						)	REFERENCES 
							projectcosts
								(
									IdProjectCosts
								)
						;
			

			-- documentation
			
			-- serializeAssociations documentation
			-- DOCUMENTATION_COMPANY_FK
					ALTER TABLE documentation -- 1_1
						ADD CONSTRAINT DOCUMENTATION_COMPANY_FK FOREIGN KEY (
							idCompany 
						)	REFERENCES 
							company
								(
									IdCompany
								)
						;
			-- DOCUMENTATION_CONTENTFILE_FK
					ALTER TABLE documentation -- 1_1
						ADD CONSTRAINT DOCUMENTATION_CONTENTFILE_FK FOREIGN KEY (
							idContentFile 
						)	REFERENCES 
							contentfile
								(
									idContentFile
								)
						;
			

			-- documentproject
			
			-- serializeAssociations documentproject
			-- DOCUMENTPROJECT_PROJECT_FK
					ALTER TABLE documentproject -- 1_1
						ADD CONSTRAINT DOCUMENTPROJECT_PROJECT_FK FOREIGN KEY (
							idProject 
						)	REFERENCES 
							project
								(
									idProject
								)
						;
			

			-- employee
			
			-- serializeAssociations employee
			-- EMPLOYEE_SELLER_FK
					ALTER TABLE employee -- 1_1
						ADD CONSTRAINT EMPLOYEE_SELLER_FK FOREIGN KEY (
							idSeller 
						)	REFERENCES 
							seller
								(
									idSeller
								)
						;
			-- EMPLOYEE_PERFORG_FK
					ALTER TABLE employee -- 1_1
						ADD CONSTRAINT EMPLOYEE_PERFORG_FK FOREIGN KEY (
							idPerfOrg 
						)	REFERENCES 
							performingorg
								(
									IdPerfOrg
								)
						;
			-- EMPLOYEE_RESPROFILES_FK
					ALTER TABLE employee -- 1_1
						ADD CONSTRAINT EMPLOYEE_RESPROFILES_FK FOREIGN KEY (
							idProfile 
						)	REFERENCES 
							resourceprofiles
								(
									IdProfile
								)
						;
			-- EMPLOYEE_CONTACT_FK
					ALTER TABLE employee -- 1_1
						ADD CONSTRAINT EMPLOYEE_CONTACT_FK FOREIGN KEY (
							idContact 
						)	REFERENCES 
							contact
								(
									IdContact
								)
						;
			-- EMPLOYEE_RESOURCEPOOL_FK
					ALTER TABLE employee -- 1_1
						ADD CONSTRAINT EMPLOYEE_RESOURCEPOOL_FK FOREIGN KEY (
							idResourcePool 
						)	REFERENCES 
							resourcepool
								(
									idResourcepool
								)
						;
			-- EMPLOYEE_CALENDARBASE_FK
					ALTER TABLE employee -- 1_1
						ADD CONSTRAINT EMPLOYEE_CALENDARBASE_FK FOREIGN KEY (
							idCalendarBase 
						)	REFERENCES 
							calendarbase
								(
									idCalendarBase
								)
						;
			

			-- employeeoperationdate
			
			-- serializeAssociations employeeoperationdate
			-- EMPLOPEDATE_OPERATION_FK
					ALTER TABLE employeeoperationdate -- 1_1
						ADD CONSTRAINT EMPLOPEDATE_OPERATION_FK FOREIGN KEY (
							idOperation 
						)	REFERENCES 
							operation
								(
									IdOperation
								)
						;
			-- EMPLOPEDATE_EMPLOYEE_FK
					ALTER TABLE employeeoperationdate -- 1_1
						ADD CONSTRAINT EMPLOPEDATE_EMPLOYEE_FK FOREIGN KEY (
							idEmployee 
						)	REFERENCES 
							employee
								(
									idEmployee
								)
						;
			

			-- executivereport
			
			-- serializeAssociations executivereport
			-- EXECUTIVEREPORT_PROJECT_FK
					ALTER TABLE executivereport -- 1_1
						ADD CONSTRAINT EXECUTIVEREPORT_PROJECT_FK FOREIGN KEY (
							idProject 
						)	REFERENCES 
							project
								(
									idProject
								)
						;
			

			-- expenseaccounts
			
			-- serializeAssociations expenseaccounts
			-- EXPENSEACCOUNTS_COMPANY_FK
					ALTER TABLE expenseaccounts -- 1_1
						ADD CONSTRAINT EXPENSEACCOUNTS_COMPANY_FK FOREIGN KEY (
							idCompany 
						)	REFERENCES 
							company
								(
									IdCompany
								)
						;
			

			-- expenses
			
			-- serializeAssociations expenses
			-- EXPENSES_BUDGETACCOUNTS_FK
					ALTER TABLE expenses -- 1_1
						ADD CONSTRAINT EXPENSES_BUDGETACCOUNTS_FK FOREIGN KEY (
							IdBudgetAccount 
						)	REFERENCES 
							budgetaccounts
								(
									IdBudgetAccount
								)
						;
			-- EXPENSES_PROJECTCOSTS_FK
					ALTER TABLE expenses -- 1_1
						ADD CONSTRAINT EXPENSES_PROJECTCOSTS_FK FOREIGN KEY (
							IdProjectCosts 
						)	REFERENCES 
							projectcosts
								(
									IdProjectCosts
								)
						;
			

			-- expensesheet
			
			-- serializeAssociations expensesheet
			-- EXPENSESHEET_EXPENSE_FK
					ALTER TABLE expensesheet -- 1_1
						ADD CONSTRAINT EXPENSESHEET_EXPENSE_FK FOREIGN KEY (
							idExpense 
						)	REFERENCES 
							expenses
								(
									IdExpense
								)
						;
			-- EXPENSESHEET_PROJECT_FK
					ALTER TABLE expensesheet -- 1_1
						ADD CONSTRAINT EXPENSESHEET_PROJECT_FK FOREIGN KEY (
							idProject 
						)	REFERENCES 
							project
								(
									idProject
								)
						;
			-- EXPENSESHEET_OPERATION_FK
					ALTER TABLE expensesheet -- 1_1
						ADD CONSTRAINT EXPENSESHEET_OPERATION_FK FOREIGN KEY (
							idOperation 
						)	REFERENCES 
							operation
								(
									IdOperation
								)
						;
			-- EXPENSESHEET_EXPACCOUNTS_FK
					ALTER TABLE expensesheet -- 1_1
						ADD CONSTRAINT EXPENSESHEET_EXPACCOUNTS_FK FOREIGN KEY (
							idExpenseAccount 
						)	REFERENCES 
							expenseaccounts
								(
									IdExpenseAccount
								)
						;
			-- EXPENSESHEET_EMPLOYEE_FK
					ALTER TABLE expensesheet -- 1_1
						ADD CONSTRAINT EXPENSESHEET_EMPLOYEE_FK FOREIGN KEY (
							idEmployee 
						)	REFERENCES 
							employee
								(
									idEmployee
								)
						;
			

			-- expensesheetcomment
			
			-- serializeAssociations expensesheetcomment
			-- EXPSHEETCOMMENT_EXPSHEET_FK
					ALTER TABLE expensesheetcomment -- 1_1
						ADD CONSTRAINT EXPSHEETCOMMENT_EXPSHEET_FK FOREIGN KEY (
							idExpenseSheet 
						)	REFERENCES 
							expensesheet
								(
									idExpenseSheet
								)
						;
			

			-- fundingsource
			
			-- serializeAssociations fundingsource
			-- FUNDINGSOURCE_COMPANY_FK
					ALTER TABLE fundingsource -- 1_1
						ADD CONSTRAINT FUNDINGSOURCE_COMPANY_FK FOREIGN KEY (
							idCompany 
						)	REFERENCES 
							company
								(
									IdCompany
								)
						;
			

			-- geography
			
			-- serializeAssociations geography
			-- GEOGRAPHY_COMPANY_FK
					ALTER TABLE geography -- 1_1
						ADD CONSTRAINT GEOGRAPHY_COMPANY_FK FOREIGN KEY (
							idCompany 
						)	REFERENCES 
							company
								(
									IdCompany
								)
						;
			

			-- historickpi
			
			-- serializeAssociations historickpi
			-- HISTORICKPI_PROJECTKPI_FK
					ALTER TABLE historickpi -- 1_1
						ADD CONSTRAINT HISTORICKPI_PROJECTKPI_FK FOREIGN KEY (
							idProjectKpi 
						)	REFERENCES 
							projectkpi
								(
									IdProjectKPI
								)
						;
			-- HISTORICKPI_EMPLOYEE_FK
					ALTER TABLE historickpi -- 1_1
						ADD CONSTRAINT HISTORICKPI_EMPLOYEE_FK FOREIGN KEY (
							idEmployee 
						)	REFERENCES 
							employee
								(
									idEmployee
								)
						;
			

			-- historicrisk
			
			-- serializeAssociations historicrisk
			

			-- incomes
			
			-- serializeAssociations incomes
			-- INCOMES_PROJECT_FK
					ALTER TABLE incomes -- 1_1
						ADD CONSTRAINT INCOMES_PROJECT_FK FOREIGN KEY (
							idProject 
						)	REFERENCES 
							project
								(
									idProject
								)
						;
			

			-- issuelog
			
			-- serializeAssociations issuelog
			-- ISSUELOG_PROJECT_FK
					ALTER TABLE issuelog -- 1_1
						ADD CONSTRAINT ISSUELOG_PROJECT_FK FOREIGN KEY (
							IdProject 
						)	REFERENCES 
							project
								(
									idProject
								)
						;
			

			-- iwo
			
			-- serializeAssociations iwo
			-- IWO_PROJECTCOSTS_FK
					ALTER TABLE iwo -- 1_1
						ADD CONSTRAINT IWO_PROJECTCOSTS_FK FOREIGN KEY (
							IdProjectCosts 
						)	REFERENCES 
							projectcosts
								(
									IdProjectCosts
								)
						;
			

			-- jobcategory
			
			-- serializeAssociations jobcategory
			-- JOBCATEGORY_COMPANY_FK
					ALTER TABLE jobcategory -- 1_1
						ADD CONSTRAINT JOBCATEGORY_COMPANY_FK FOREIGN KEY (
							idCompany 
						)	REFERENCES 
							company
								(
									IdCompany
								)
						;
			

			-- jobcatemployee
			
			-- serializeAssociations jobcatemployee
			-- JOBCATEMPLOYEE_JOBCATEGORY_FK
					ALTER TABLE jobcatemployee -- 1_1
						ADD CONSTRAINT JOBCATEMPLOYEE_JOBCATEGORY_FK FOREIGN KEY (
							idJobCategory 
						)	REFERENCES 
							jobcategory
								(
									idJobCategory
								)
						;
			-- JOBCATEMPLOYEE_EMPLOYEE_FK
					ALTER TABLE jobcatemployee -- 1_1
						ADD CONSTRAINT JOBCATEMPLOYEE_EMPLOYEE_FK FOREIGN KEY (
							idEmployee 
						)	REFERENCES 
							employee
								(
									idEmployee
								)
						;
			

			-- knowledgearea
			
			-- serializeAssociations knowledgearea
			-- KNOWLEDGEAREA_COMPANY_FK
					ALTER TABLE knowledgearea -- 1_1
						ADD CONSTRAINT KNOWLEDGEAREA_COMPANY_FK FOREIGN KEY (
							idCompany 
						)	REFERENCES 
							company
								(
									IdCompany
								)
						;
			

			-- label
			
			-- serializeAssociations label
			-- LABEL_COMPANY_FK
					ALTER TABLE label -- 1_1
						ADD CONSTRAINT LABEL_COMPANY_FK FOREIGN KEY (
							idCompany 
						)	REFERENCES 
							company
								(
									IdCompany
								)
						;
			

			-- learnedlesson
			
			-- serializeAssociations learnedlesson
			-- LEARNEDLESSON_PROFILE_FK
					ALTER TABLE learnedlesson -- 1_1
						ADD CONSTRAINT LEARNEDLESSON_PROFILE_FK FOREIGN KEY (
							idProfile 
						)	REFERENCES 
							profile
								(
									idProfile
								)
						;
			-- LEARNEDLESSON_CONTACT_FK
					ALTER TABLE learnedlesson -- 1_1
						ADD CONSTRAINT LEARNEDLESSON_CONTACT_FK FOREIGN KEY (
							idContact 
						)	REFERENCES 
							contact
								(
									IdContact
								)
						;
			-- LEARNEDLESSON_PROGRAM_FK
					ALTER TABLE learnedlesson -- 1_1
						ADD CONSTRAINT LEARNEDLESSON_PROGRAM_FK FOREIGN KEY (
							idProgram 
						)	REFERENCES 
							program
								(
									IdProgram
								)
						;
			-- LEARNEDLESSON_CUSTOMER_FK
					ALTER TABLE learnedlesson -- 1_1
						ADD CONSTRAINT LEARNEDLESSON_CUSTOMER_FK FOREIGN KEY (
							idCustomer 
						)	REFERENCES 
							customer
								(
									IdCustomer
								)
						;
			-- LEARNEDLESSON_FUNDING_FK
					ALTER TABLE learnedlesson -- 1_1
						ADD CONSTRAINT LEARNEDLESSON_FUNDING_FK FOREIGN KEY (
							idFundingSource 
						)	REFERENCES 
							fundingsource
								(
									idFundingSource
								)
						;
			-- LEARNEDLESSON_SELLER_FK
					ALTER TABLE learnedlesson -- 1_1
						ADD CONSTRAINT LEARNEDLESSON_SELLER_FK FOREIGN KEY (
							idSeller 
						)	REFERENCES 
							seller
								(
									idSeller
								)
						;
			-- LEARNEDLESSON_GEOGRAPHIC_FK
					ALTER TABLE learnedlesson -- 1_1
						ADD CONSTRAINT LEARNEDLESSON_GEOGRAPHIC_FK FOREIGN KEY (
							idGeography 
						)	REFERENCES 
							geography
								(
									idGeography
								)
						;
			-- LEARNEDLESSON_COMPANY_FK
					ALTER TABLE learnedlesson -- 1_1
						ADD CONSTRAINT LEARNEDLESSON_COMPANY_FK FOREIGN KEY (
							idCompany 
						)	REFERENCES 
							company
								(
									IdCompany
								)
						;
			-- LEARNEDLESSON_KNOWLEDGEAREA_FK
					ALTER TABLE learnedlesson -- 1_1
						ADD CONSTRAINT LEARNEDLESSON_KNOWLEDGEAREA_FK FOREIGN KEY (
							idKnowledgeArea 
						)	REFERENCES 
							knowledgearea
								(
									idKnowledgeArea
								)
						;
			-- LEARNEDLESSON_CONTRACT_FK
					ALTER TABLE learnedlesson -- 1_1
						ADD CONSTRAINT LEARNEDLESSON_CONTRACT_FK FOREIGN KEY (
							idContractType 
						)	REFERENCES 
							contracttype
								(
									IdContractType
								)
						;
			

			-- learnedlessonlink
			
			-- serializeAssociations learnedlessonlink
			-- USEDLESSON_LESSON_FK
					ALTER TABLE learnedlessonlink -- 1_1
						ADD CONSTRAINT USEDLESSON_LESSON_FK FOREIGN KEY (
							idLearnedLesson 
						)	REFERENCES 
							learnedlesson
								(
									idLearnedLesson
								)
						;
			-- USEDLESSON_PROJECT_FK
					ALTER TABLE learnedlessonlink -- 1_1
						ADD CONSTRAINT USEDLESSON_PROJECT_FK FOREIGN KEY (
							idProject 
						)	REFERENCES 
							project
								(
									idProject
								)
						;
			

			-- learnedlessonproject
			
			-- serializeAssociations learnedlessonproject
			-- PROGENLESSON_LESSON_FK
					ALTER TABLE learnedlessonproject -- 1_1
						ADD CONSTRAINT PROGENLESSON_LESSON_FK FOREIGN KEY (
							idLearnedLesson 
						)	REFERENCES 
							learnedlesson
								(
									idLearnedLesson
								)
						;
			-- PROGENLESSON_PROJECT_FK
					ALTER TABLE learnedlessonproject -- 1_1
						ADD CONSTRAINT PROGENLESSON_PROJECT_FK FOREIGN KEY (
							idProject 
						)	REFERENCES 
							project
								(
									idProject
								)
						;
			

			-- logprojectstatus
			
			-- serializeAssociations logprojectstatus
			-- LOGPROJECTSTATUS_PROJECT_FK
					ALTER TABLE logprojectstatus -- 1_1
						ADD CONSTRAINT LOGPROJECTSTATUS_PROJECT_FK FOREIGN KEY (
							idProject 
						)	REFERENCES 
							project
								(
									idProject
								)
						;
			-- LOGPROJECTSTATUS_EMPLOYEE_FK
					ALTER TABLE logprojectstatus -- 1_1
						ADD CONSTRAINT LOGPROJECTSTATUS_EMPLOYEE_FK FOREIGN KEY (
							idEmployee 
						)	REFERENCES 
							employee
								(
									idEmployee
								)
						;
			

			-- managepool
			
			-- serializeAssociations managepool
			-- idResourceManager
					ALTER TABLE managepool -- 1_1
						ADD CONSTRAINT idResourceManager FOREIGN KEY (
							idResourceManager 
						)	REFERENCES 
							employee
								(
									idEmployee
								)
						;
			-- idResourcePool
					ALTER TABLE managepool -- 1_1
						ADD CONSTRAINT idResourcePool FOREIGN KEY (
							idResourcePool 
						)	REFERENCES 
							resourcepool
								(
									idResourcepool
								)
						;
			

			-- market
			
			-- serializeAssociations market
			

			-- metrickpi
			
			-- serializeAssociations metrickpi
			-- METRICKPI_BSCDIMENSION_FK
					ALTER TABLE metrickpi -- 1_1
						ADD CONSTRAINT METRICKPI_BSCDIMENSION_FK FOREIGN KEY (
							idBscDimension 
						)	REFERENCES 
							bscdimension
								(
									idBscDimension
								)
						;
			-- METRICKPI_COMPANY_FK
					ALTER TABLE metrickpi -- 1_1
						ADD CONSTRAINT METRICKPI_COMPANY_FK FOREIGN KEY (
							idCompany 
						)	REFERENCES 
							company
								(
									IdCompany
								)
						;
			

			-- milestonecategory
			
			-- serializeAssociations milestonecategory
			-- MILESTONECATEGORY_COMPANY_FK
					ALTER TABLE milestonecategory -- 1_1
						ADD CONSTRAINT MILESTONECATEGORY_COMPANY_FK FOREIGN KEY (
							idCompany 
						)	REFERENCES 
							company
								(
									IdCompany
								)
						;
			

			-- milestones
			
			-- serializeAssociations milestones
			-- MILESTONE_MILESTONETYPE_FK
					ALTER TABLE milestones -- 1_1
						ADD CONSTRAINT MILESTONE_MILESTONETYPE_FK FOREIGN KEY (
							idMilestoneType 
						)	REFERENCES 
							milestonetype
								(
									idMilestoneType
								)
						;
			-- MILESTONE_MILESTONECATEGORY_FK
					ALTER TABLE milestones -- 1_1
						ADD CONSTRAINT MILESTONE_MILESTONECATEGORY_FK FOREIGN KEY (
							idMilestoneCategory 
						)	REFERENCES 
							milestonecategory
								(
									idMilestoneCategory
								)
						;
			-- MILESTONE_PROJECT_FK
					ALTER TABLE milestones -- 1_1
						ADD CONSTRAINT MILESTONE_PROJECT_FK FOREIGN KEY (
							IdProject 
						)	REFERENCES 
							project
								(
									idProject
								)
						;
			-- MILESTONE_ACTIVITY_FK
					ALTER TABLE milestones -- 1_1
						ADD CONSTRAINT MILESTONE_ACTIVITY_FK FOREIGN KEY (
							IdActivity 
						)	REFERENCES 
							projectactivity
								(
									IdActivity
								)
						;
			

			-- milestonetype
			
			-- serializeAssociations milestonetype
			-- MILESTONETYPE_COMPANY_FK
					ALTER TABLE milestonetype -- 1_1
						ADD CONSTRAINT MILESTONETYPE_COMPANY_FK FOREIGN KEY (
							idCompany 
						)	REFERENCES 
							company
								(
									IdCompany
								)
						;
			

			-- notification
			
			-- serializeAssociations notification
			

			-- notificationemployee
			
			-- serializeAssociations notificationemployee
			-- NOTIFEMPLOYEE_NOTIFTYPE_FK
					ALTER TABLE notificationemployee -- 1_1
						ADD CONSTRAINT NOTIFEMPLOYEE_NOTIFTYPE_FK FOREIGN KEY (
							idNotificationType 
						)	REFERENCES 
							notificationtype
								(
									idNotificationType
								)
						;
			-- NOTIFEMPLOYEE_EMPLOYEE_FK
					ALTER TABLE notificationemployee -- 1_1
						ADD CONSTRAINT NOTIFEMPLOYEE_EMPLOYEE_FK FOREIGN KEY (
							idEmployee 
						)	REFERENCES 
							employee
								(
									idEmployee
								)
						;
			

			-- notificationprofile
			
			-- serializeAssociations notificationprofile
			-- NOTIFPROFILE_RESPROFILES_FK
					ALTER TABLE notificationprofile -- 1_1
						ADD CONSTRAINT NOTIFPROFILE_RESPROFILES_FK FOREIGN KEY (
							idProfile 
						)	REFERENCES 
							resourceprofiles
								(
									IdProfile
								)
						;
			-- NOTIFPROFILE_NOTIFTYPE_FK
					ALTER TABLE notificationprofile -- 1_1
						ADD CONSTRAINT NOTIFPROFILE_NOTIFTYPE_FK FOREIGN KEY (
							idNotificationType 
						)	REFERENCES 
							notificationtype
								(
									idNotificationType
								)
						;
			

			-- notificationproject
			
			-- serializeAssociations notificationproject
			-- NOTIFPROJECT_NOTIFTYPE_FK
					ALTER TABLE notificationproject -- 1_1
						ADD CONSTRAINT NOTIFPROJECT_NOTIFTYPE_FK FOREIGN KEY (
							idNotificationType 
						)	REFERENCES 
							notificationtype
								(
									idNotificationType
								)
						;
			-- NOTIFPROJECT_PROJECT_FK
					ALTER TABLE notificationproject -- 1_1
						ADD CONSTRAINT NOTIFPROJECT_PROJECT_FK FOREIGN KEY (
							idProject 
						)	REFERENCES 
							project
								(
									idProject
								)
						;
			

			-- notificationtype
			
			-- serializeAssociations notificationtype
			-- NOTIFICATIONTYPE_COMPANY_FK
					ALTER TABLE notificationtype -- 1_1
						ADD CONSTRAINT NOTIFICATIONTYPE_COMPANY_FK FOREIGN KEY (
							idCompany 
						)	REFERENCES 
							company
								(
									IdCompany
								)
						;
			

			-- operation
			
			-- serializeAssociations operation
			-- OPERATION_OPERATIONACCOUNT_FK
					ALTER TABLE operation -- 1_1
						ADD CONSTRAINT OPERATION_OPERATIONACCOUNT_FK FOREIGN KEY (
							IdOpAccount 
						)	REFERENCES 
							operationaccount
								(
									IdOpAccount
								)
						;
			

			-- operationaccount
			
			-- serializeAssociations operationaccount
			-- OPERATIONACCOUNT_COMPANY_FK
					ALTER TABLE operationaccount -- 1_1
						ADD CONSTRAINT OPERATIONACCOUNT_COMPANY_FK FOREIGN KEY (
							idCompany 
						)	REFERENCES 
							company
								(
									IdCompany
								)
						;
			

			-- performingorg
			
			-- serializeAssociations performingorg
			-- PERFORMINGORG_EMPLOYEE_FK
					ALTER TABLE performingorg -- 1_1
						ADD CONSTRAINT PERFORMINGORG_EMPLOYEE_FK FOREIGN KEY (
							Manager 
						)	REFERENCES 
							employee
								(
									idEmployee
								)
						;
			-- PERFORMINGORG_COMPANY_FK
					ALTER TABLE performingorg -- 1_1
						ADD CONSTRAINT PERFORMINGORG_COMPANY_FK FOREIGN KEY (
							IdCompany 
						)	REFERENCES 
							company
								(
									IdCompany
								)
						;
			

			-- plugin
			
			-- serializeAssociations plugin
			-- PLUGIN_COMPANY_FK
					ALTER TABLE plugin -- 1_1
						ADD CONSTRAINT PLUGIN_COMPANY_FK FOREIGN KEY (
							idCompany 
						)	REFERENCES 
							company
								(
									IdCompany
								)
						;
			

			-- pluginconfiguration
			
			-- serializeAssociations pluginconfiguration
			-- PLUGINCONF_PLUGIN_FK
					ALTER TABLE pluginconfiguration -- 1_1
						ADD CONSTRAINT PLUGINCONF_PLUGIN_FK FOREIGN KEY (
							idPlugin 
						)	REFERENCES 
							plugin
								(
									idPlugin
								)
						;
			

			-- pluginfile
			
			-- serializeAssociations pluginfile
			-- PLUGINFILE_PLUGIN_FK
					ALTER TABLE pluginfile -- 1_1
						ADD CONSTRAINT PLUGINFILE_PLUGIN_FK FOREIGN KEY (
							idPlugin 
						)	REFERENCES 
							plugin
								(
									idPlugin
								)
						;
			-- PLUGINFILE_CONTENTFILE_FK
					ALTER TABLE pluginfile -- 1_1
						ADD CONSTRAINT PLUGINFILE_CONTENTFILE_FK FOREIGN KEY (
							idContentFile 
						)	REFERENCES 
							contentfile
								(
									idContentFile
								)
						;
			

			-- problemcheck
			
			-- serializeAssociations problemcheck
			-- PROBLEMCHECK_COMPANY_FK
					ALTER TABLE problemcheck -- 1_1
						ADD CONSTRAINT PROBLEMCHECK_COMPANY_FK FOREIGN KEY (
							idCompany 
						)	REFERENCES 
							company
								(
									IdCompany
								)
						;
			

			-- problemcheckproject
			
			-- serializeAssociations problemcheckproject
			-- PROBLCHECKPROJ_PROBLEMCHECK_FK
					ALTER TABLE problemcheckproject -- 1_1
						ADD CONSTRAINT PROBLCHECKPROJ_PROBLEMCHECK_FK FOREIGN KEY (
							idProblemCheck 
						)	REFERENCES 
							problemcheck
								(
									idProblemCheck
								)
						;
			-- PROBLCHECKPROJ_PROJECT_FK
					ALTER TABLE problemcheckproject -- 1_1
						ADD CONSTRAINT PROBLCHECKPROJ_PROJECT_FK FOREIGN KEY (
							idProject 
						)	REFERENCES 
							project
								(
									idProject
								)
						;
			

			-- procurementpayments
			
			-- serializeAssociations procurementpayments
			-- PROCPAYMENTS_PROJECT_FK
					ALTER TABLE procurementpayments -- 1_1
						ADD CONSTRAINT PROCPAYMENTS_PROJECT_FK FOREIGN KEY (
							idProject 
						)	REFERENCES 
							project
								(
									idProject
								)
						;
			-- PROCPAYMENTS_SELLER_FK
					ALTER TABLE procurementpayments -- 1_1
						ADD CONSTRAINT PROCPAYMENTS_SELLER_FK FOREIGN KEY (
							idSeller 
						)	REFERENCES 
							seller
								(
									idSeller
								)
						;
			

			-- profile
			
			-- serializeAssociations profile
			-- PROFILE_COMPANY_FK
					ALTER TABLE profile -- 1_1
						ADD CONSTRAINT PROFILE_COMPANY_FK FOREIGN KEY (
							idCompany 
						)	REFERENCES 
							company
								(
									IdCompany
								)
						;
			

			-- program
			
			-- serializeAssociations program
			-- PROGRAM_PERFORMINGORG_FK
					ALTER TABLE program -- 1_1
						ADD CONSTRAINT PROGRAM_PERFORMINGORG_FK FOREIGN KEY (
							idPerfOrg 
						)	REFERENCES 
							performingorg
								(
									IdPerfOrg
								)
						;
			-- PROGRAM_PMEMPLOYEE_FK
					ALTER TABLE program -- 1_1
						ADD CONSTRAINT PROGRAM_PMEMPLOYEE_FK FOREIGN KEY (
							ProgramManager 
						)	REFERENCES 
							employee
								(
									idEmployee
								)
						;
			

			-- project
			
			-- serializeAssociations project
			-- PROJECT_CATEGORY_FK
					ALTER TABLE project -- 1_1
						ADD CONSTRAINT PROJECT_CATEGORY_FK FOREIGN KEY (
							idCategory 
						)	REFERENCES 
							category
								(
									IdCategory
								)
						;
			-- PROJECT_PERFORMINGORG_FK
					ALTER TABLE project -- 1_1
						ADD CONSTRAINT PROJECT_PERFORMINGORG_FK FOREIGN KEY (
							idPerfOrg 
						)	REFERENCES 
							performingorg
								(
									IdPerfOrg
								)
						;
			-- PROJECT_SPEMPLOYEE_FK
					ALTER TABLE project -- 1_1
						ADD CONSTRAINT PROJECT_SPEMPLOYEE_FK FOREIGN KEY (
							sponsor 
						)	REFERENCES 
							employee
								(
									idEmployee
								)
						;
			-- PROJECT_FMEMPLOYEE_FK
					ALTER TABLE project -- 1_1
						ADD CONSTRAINT PROJECT_FMEMPLOYEE_FK FOREIGN KEY (
							functionalManager 
						)	REFERENCES 
							employee
								(
									idEmployee
								)
						;
			-- PROJECT_PROJECTCALENDAR_FK
					ALTER TABLE project -- 1_1
						ADD CONSTRAINT PROJECT_PROJECTCALENDAR_FK FOREIGN KEY (
							idProjectCalendar 
						)	REFERENCES 
							projectcalendar
								(
									IdProjectCalendar
								)
						;
			-- PROJECT_CUSTOMER_FK
					ALTER TABLE project -- 1_1
						ADD CONSTRAINT PROJECT_CUSTOMER_FK FOREIGN KEY (
							idCustomer 
						)	REFERENCES 
							customer
								(
									IdCustomer
								)
						;
			-- PROJECT_PROGRAM_FK
					ALTER TABLE project -- 1_1
						ADD CONSTRAINT PROJECT_PROGRAM_FK FOREIGN KEY (
							idProgram 
						)	REFERENCES 
							program
								(
									IdProgram
								)
						;
			-- PROJECT_CONTRACTTYPE_FK
					ALTER TABLE project -- 1_1
						ADD CONSTRAINT PROJECT_CONTRACTTYPE_FK FOREIGN KEY (
							IdContractType 
						)	REFERENCES 
							contracttype
								(
									IdContractType
								)
						;
			-- PROJECT_GEOGRAPHY_FK
					ALTER TABLE project -- 1_1
						ADD CONSTRAINT PROJECT_GEOGRAPHY_FK FOREIGN KEY (
							idGeography 
						)	REFERENCES 
							geography
								(
									idGeography
								)
						;
			-- PROJECT_PMEMPLOYEE_FK
					ALTER TABLE project -- 1_1
						ADD CONSTRAINT PROJECT_PMEMPLOYEE_FK FOREIGN KEY (
							projectManager 
						)	REFERENCES 
							employee
								(
									idEmployee
								)
						;
			-- PROJECT_STAGEGATE_FK
					ALTER TABLE project -- 1_1
						ADD CONSTRAINT PROJECT_STAGEGATE_FK FOREIGN KEY (
							idStageGate 
						)	REFERENCES 
							stagegate
								(
									idStageGate
								)
						;
			-- PROJECT_CLASSIFICATIONLEVEL_FK
					ALTER TABLE project -- 1_1
						ADD CONSTRAINT PROJECT_CLASSIFICATIONLEVEL_FK FOREIGN KEY (
							idClassificationlevel 
						)	REFERENCES 
							classificationlevel
								(
									idClassificationlevel
								)
						;
			-- PROJECT_IMEMPLOYEE_FK
					ALTER TABLE project -- 1_1
						ADD CONSTRAINT PROJECT_IMEMPLOYEE_FK FOREIGN KEY (
							investmentManager 
						)	REFERENCES 
							employee
								(
									idEmployee
								)
						;
			

			-- projectactivity
			
			-- serializeAssociations projectactivity
			-- PROJECTACTIVITY_PROJECT_FK
					ALTER TABLE projectactivity -- 1_1
						ADD CONSTRAINT PROJECTACTIVITY_PROJECT_FK FOREIGN KEY (
							idProject 
						)	REFERENCES 
							project
								(
									idProject
								)
						;
			-- PROJECTACTIVITY_WBSNODE_FK
					ALTER TABLE projectactivity -- 1_1
						ADD CONSTRAINT PROJECTACTIVITY_WBSNODE_FK FOREIGN KEY (
							WorkPackage 
						)	REFERENCES 
							wbsnode
								(
									IdWBSNode
								)
						;
			

			-- projectassociation
			
			-- serializeAssociations projectassociation
			-- PROJSSOCIATION_LEADPROJECT_FK
					ALTER TABLE projectassociation -- 1_1
						ADD CONSTRAINT PROJSSOCIATION_LEADPROJECT_FK FOREIGN KEY (
							lead 
						)	REFERENCES 
							project
								(
									idProject
								)
						;
			-- PROJSSOCIATION_DEPPROJECT_FK
					ALTER TABLE projectassociation -- 1_1
						ADD CONSTRAINT PROJSSOCIATION_DEPPROJECT_FK FOREIGN KEY (
							dependent 
						)	REFERENCES 
							project
								(
									idProject
								)
						;
			

			-- projectcalendar
			
			-- serializeAssociations projectcalendar
			-- PROJCALENDAR_CALENDARBASE_FK
					ALTER TABLE projectcalendar -- 1_1
						ADD CONSTRAINT PROJCALENDAR_CALENDARBASE_FK FOREIGN KEY (
							idCalendarBase 
						)	REFERENCES 
							calendarbase
								(
									idCalendarBase
								)
						;
			

			-- projectcalendarexceptions
			
			-- serializeAssociations projectcalendarexceptions
			-- PROJCALEXCEPTIONS_PROJCAL_FK
					ALTER TABLE projectcalendarexceptions -- 1_1
						ADD CONSTRAINT PROJCALEXCEPTIONS_PROJCAL_FK FOREIGN KEY (
							IdProjectCalendar 
						)	REFERENCES 
							projectcalendar
								(
									IdProjectCalendar
								)
						;
			

			-- projectcharter
			
			-- serializeAssociations projectcharter
			-- PROJECTCHARTER_PROJECT_FK
					ALTER TABLE projectcharter -- 1_1
						ADD CONSTRAINT PROJECTCHARTER_PROJECT_FK FOREIGN KEY (
							IdProject 
						)	REFERENCES 
							project
								(
									idProject
								)
						;
			

			-- projectclosure
			
			-- serializeAssociations projectclosure
			-- PROJECTCLOSURE_PROJECT_FK
					ALTER TABLE projectclosure -- 1_1
						ADD CONSTRAINT PROJECTCLOSURE_PROJECT_FK FOREIGN KEY (
							idProject 
						)	REFERENCES 
							project
								(
									idProject
								)
						;
			

			-- projectcosts
			
			-- serializeAssociations projectcosts
			-- PROJECTCOSTS_PROJECT_FK
					ALTER TABLE projectcosts -- 1_1
						ADD CONSTRAINT PROJECTCOSTS_PROJECT_FK FOREIGN KEY (
							IdProject 
						)	REFERENCES 
							project
								(
									idProject
								)
						;
			

			-- projectdata
			
			-- serializeAssociations projectdata
			-- projectdata_ibfk_1
					ALTER TABLE projectdata -- 1_1
						ADD CONSTRAINT projectdata_ibfk_1 FOREIGN KEY (
							idProject 
						)	REFERENCES 
							project
								(
									idProject
								)
						;
			

			-- projectfollowup
			
			-- serializeAssociations projectfollowup
			-- PROJECTFOLLOWUP_PROJECT_FK
					ALTER TABLE projectfollowup -- 1_1
						ADD CONSTRAINT PROJECTFOLLOWUP_PROJECT_FK FOREIGN KEY (
							IdProject 
						)	REFERENCES 
							project
								(
									idProject
								)
						;
			

			-- projectfundingsource
			
			-- serializeAssociations projectfundingsource
			-- PROJFUNDSOURC_FOUNDSOURC_FK
					ALTER TABLE projectfundingsource -- 1_1
						ADD CONSTRAINT PROJFUNDSOURC_FOUNDSOURC_FK FOREIGN KEY (
							idFundingSource 
						)	REFERENCES 
							fundingsource
								(
									idFundingSource
								)
						;
			-- PROJFUNDSOURC_PROJECT_FK
					ALTER TABLE projectfundingsource -- 1_1
						ADD CONSTRAINT PROJFUNDSOURC_PROJECT_FK FOREIGN KEY (
							idProject 
						)	REFERENCES 
							project
								(
									idProject
								)
						;
			

			-- projectkpi
			
			-- serializeAssociations projectkpi
			-- PROJECTKPI_PROJECT_FK
					ALTER TABLE projectkpi -- 1_1
						ADD CONSTRAINT PROJECTKPI_PROJECT_FK FOREIGN KEY (
							IdProject 
						)	REFERENCES 
							project
								(
									idProject
								)
						;
			-- PROJECTKPI_METRICKPI_FK
					ALTER TABLE projectkpi -- 1_1
						ADD CONSTRAINT PROJECTKPI_METRICKPI_FK FOREIGN KEY (
							idMetricKpi 
						)	REFERENCES 
							metrickpi
								(
									idMetricKpi
								)
						;
			

			-- projectlabel
			
			-- serializeAssociations projectlabel
			-- PROJLABEL_PROJ_FK
					ALTER TABLE projectlabel -- 1_1
						ADD CONSTRAINT PROJLABEL_PROJ_FK FOREIGN KEY (
							idProject 
						)	REFERENCES 
							project
								(
									idProject
								)
						;
			-- PROJLABEL_LABEL_FK
					ALTER TABLE projectlabel -- 1_1
						ADD CONSTRAINT PROJLABEL_LABEL_FK FOREIGN KEY (
							idLabel 
						)	REFERENCES 
							label
								(
									idLabel
								)
						;
			

			-- projecttechnology
			
			-- serializeAssociations projecttechnology
			-- PROJTECHNOLOGY_TECHNOLOGY_FK
					ALTER TABLE projecttechnology -- 1_1
						ADD CONSTRAINT PROJTECHNOLOGY_TECHNOLOGY_FK FOREIGN KEY (
							idTechnology 
						)	REFERENCES 
							technology
								(
									idTechnology
								)
						;
			-- PROJTECHNOLOGY_PROJ_FK
					ALTER TABLE projecttechnology -- 1_1
						ADD CONSTRAINT PROJTECHNOLOGY_PROJ_FK FOREIGN KEY (
							idProject 
						)	REFERENCES 
							project
								(
									idProject
								)
						;
			

			-- recommendationlesson
			
			-- serializeAssociations recommendationlesson
			-- RECLESSON_LESLEARNED_FK
					ALTER TABLE recommendationlesson -- 1_1
						ADD CONSTRAINT RECLESSON_LESLEARNED_FK FOREIGN KEY (
							idLearnedLesson 
						)	REFERENCES 
							learnedlesson
								(
									idLearnedLesson
								)
						;
			

			-- resourcepool
			
			-- serializeAssociations resourcepool
			-- idCompany
					ALTER TABLE resourcepool -- 1_1
						ADD CONSTRAINT idCompany FOREIGN KEY (
							idCompany 
						)	REFERENCES 
							company
								(
									IdCompany
								)
						;
			

			-- resourceprofiles
			
			-- serializeAssociations resourceprofiles
			

			-- riskcategories
			
			-- serializeAssociations riskcategories
			

			-- riskcategory
			
			-- serializeAssociations riskcategory
			-- RISKCATEGORY_COMPANY_FK
					ALTER TABLE riskcategory -- 1_1
						ADD CONSTRAINT RISKCATEGORY_COMPANY_FK FOREIGN KEY (
							idCompany 
						)	REFERENCES 
							company
								(
									IdCompany
								)
						;
			

			-- riskreassessmentlog
			
			-- serializeAssociations riskreassessmentlog
			-- RISKREASSLOG_RISKREGISTER_FK
					ALTER TABLE riskreassessmentlog -- 1_1
						ADD CONSTRAINT RISKREASSLOG_RISKREGISTER_FK FOREIGN KEY (
							IdRisk 
						)	REFERENCES 
							riskregister
								(
									IdRisk
								)
						;
			-- RISKLOG_EMPLOYEE_FK
					ALTER TABLE riskreassessmentlog -- 1_1
						ADD CONSTRAINT RISKLOG_EMPLOYEE_FK FOREIGN KEY (
							idEmployee 
						)	REFERENCES 
							employee
								(
									idEmployee
								)
						;
			

			-- riskregister
			
			-- serializeAssociations riskregister
			-- RISKREGISTER_RISKCATEGORIES_FK
					ALTER TABLE riskregister -- 1_1
						ADD CONSTRAINT RISKREGISTER_RISKCATEGORIES_FK FOREIGN KEY (
							IdRiskCategory 
						)	REFERENCES 
							riskcategories
								(
									IdRiskCategory
								)
						;
			-- RISKREGISTER_PROJECT_FK
					ALTER TABLE riskregister -- 1_1
						ADD CONSTRAINT RISKREGISTER_PROJECT_FK FOREIGN KEY (
							IdProject 
						)	REFERENCES 
							project
								(
									idProject
								)
						;
			-- RISKREGISTER_RISKCATEGORY_FK
					ALTER TABLE riskregister -- 1_1
						ADD CONSTRAINT RISKREGISTER_RISKCATEGORY_FK FOREIGN KEY (
							idRiskcategoryTemp 
						)	REFERENCES 
							riskcategory
								(
									idRiskcategory
								)
						;
			

			-- riskregistertemplate
			
			-- serializeAssociations riskregistertemplate
			-- RISKREGISTERTEMPLATE_RISKCATEGORIES_FK
					ALTER TABLE riskregistertemplate -- 1_1
						ADD CONSTRAINT RISKREGISTERTEMPLATE_RISKCATEGORIES_FK FOREIGN KEY (
							IdRiskCategory 
						)	REFERENCES 
							riskcategories
								(
									IdRiskCategory
								)
						;
			-- RISKREGTEMPL_RISKCATEGORY_FK
					ALTER TABLE riskregistertemplate -- 1_1
						ADD CONSTRAINT RISKREGTEMPL_RISKCATEGORY_FK FOREIGN KEY (
							idRiskCateg 
						)	REFERENCES 
							riskcategory
								(
									idRiskcategory
								)
						;
			-- RISKREGISTERTEMPLATE_COMPANY_FK
					ALTER TABLE riskregistertemplate -- 1_1
						ADD CONSTRAINT RISKREGISTERTEMPLATE_COMPANY_FK FOREIGN KEY (
							idCompany 
						)	REFERENCES 
							company
								(
									IdCompany
								)
						;
			

			-- security
			
			-- serializeAssociations security
			-- SECURITY_CONTACT_FK
					ALTER TABLE security -- 1_1
						ADD CONSTRAINT SECURITY_CONTACT_FK FOREIGN KEY (
							idContact 
						)	REFERENCES 
							contact
								(
									IdContact
								)
						;
			

			-- seller
			
			-- serializeAssociations seller
			-- SELLER_COMPANY_FK
					ALTER TABLE seller -- 1_1
						ADD CONSTRAINT SELLER_COMPANY_FK FOREIGN KEY (
							idCompany 
						)	REFERENCES 
							company
								(
									IdCompany
								)
						;
			

			-- setting
			
			-- serializeAssociations setting
			-- SETTING_COMPANY_FK
					ALTER TABLE setting -- 1_1
						ADD CONSTRAINT SETTING_COMPANY_FK FOREIGN KEY (
							idCompany 
						)	REFERENCES 
							company
								(
									IdCompany
								)
						;
			

			-- skill
			
			-- serializeAssociations skill
			-- SKILL_COMPANY_FK
					ALTER TABLE skill -- 1_1
						ADD CONSTRAINT SKILL_COMPANY_FK FOREIGN KEY (
							idCompany 
						)	REFERENCES 
							company
								(
									IdCompany
								)
						;
			

			-- skillsemployee
			
			-- serializeAssociations skillsemployee
			-- SKILLSEMPLOYEE_SKILL_FK
					ALTER TABLE skillsemployee -- 1_1
						ADD CONSTRAINT SKILLSEMPLOYEE_SKILL_FK FOREIGN KEY (
							idSkill 
						)	REFERENCES 
							skill
								(
									idSkill
								)
						;
			-- SKILLSEMPLOYEE_EMPLOYEE_FK
					ALTER TABLE skillsemployee -- 1_1
						ADD CONSTRAINT SKILLSEMPLOYEE_EMPLOYEE_FK FOREIGN KEY (
							idEmployee 
						)	REFERENCES 
							employee
								(
									idEmployee
								)
						;
			

			-- stagegate
			
			-- serializeAssociations stagegate
			-- STAGE_COMPANY_FK
					ALTER TABLE stagegate -- 1_1
						ADD CONSTRAINT STAGE_COMPANY_FK FOREIGN KEY (
							idCompany 
						)	REFERENCES 
							company
								(
									IdCompany
								)
						;
			

			-- stakeholder
			
			-- serializeAssociations stakeholder
			-- STAKEHOLDER_PROJECT_FK
					ALTER TABLE stakeholder -- 1_1
						ADD CONSTRAINT STAKEHOLDER_PROJECT_FK FOREIGN KEY (
							IdProject 
						)	REFERENCES 
							project
								(
									idProject
								)
						;
			-- STAKEHOLDER_SHCLASSIF_FK
					ALTER TABLE stakeholder -- 1_1
						ADD CONSTRAINT STAKEHOLDER_SHCLASSIF_FK FOREIGN KEY (
							idStakeholderClassification 
						)	REFERENCES 
							stakeholderclassification
								(
									idStakeholderClassification
								)
						;
			-- STAKEHOLDER_EMPLESTAKEHOLDER_FK
					ALTER TABLE stakeholder -- 1_1
						ADD CONSTRAINT STAKEHOLDER_EMPLESTAKEHOLDER_FK FOREIGN KEY (
							idEmployee 
						)	REFERENCES 
							employee
								(
									idEmployee
								)
						;
			

			-- stakeholderclassification
			
			-- serializeAssociations stakeholderclassification
			-- SHCLASSIFICATION_COMPANY_FK
					ALTER TABLE stakeholderclassification -- 1_1
						ADD CONSTRAINT SHCLASSIFICATION_COMPANY_FK FOREIGN KEY (
							idCompany 
						)	REFERENCES 
							company
								(
									IdCompany
								)
						;
			

			-- teammember
			
			-- serializeAssociations teammember
			-- TEAMMEMBER_ACTIVITY_FK
					ALTER TABLE teammember -- 1_1
						ADD CONSTRAINT TEAMMEMBER_ACTIVITY_FK FOREIGN KEY (
							IdActivity 
						)	REFERENCES 
							projectactivity
								(
									IdActivity
								)
						;
			-- TEAMMEMBER_JOBCATEGORY_FK
					ALTER TABLE teammember -- 1_1
						ADD CONSTRAINT TEAMMEMBER_JOBCATEGORY_FK FOREIGN KEY (
							idJobCategory 
						)	REFERENCES 
							jobcategory
								(
									idJobCategory
								)
						;
			-- TEAMMEMBER_EMPLOYEE_FK
					ALTER TABLE teammember -- 1_1
						ADD CONSTRAINT TEAMMEMBER_EMPLOYEE_FK FOREIGN KEY (
							idEmployee 
						)	REFERENCES 
							employee
								(
									idEmployee
								)
						;
			

			-- technology
			
			-- serializeAssociations technology
			-- TECHNOLOGY_COMPANY_FK
					ALTER TABLE technology -- 1_1
						ADD CONSTRAINT TECHNOLOGY_COMPANY_FK FOREIGN KEY (
							idCompany 
						)	REFERENCES 
							company
								(
									IdCompany
								)
						;
			

			-- timeline
			
			-- serializeAssociations timeline
			-- TIMELINE_TIMELINETYPE_FK
					ALTER TABLE timeline -- 1_1
						ADD CONSTRAINT TIMELINE_TIMELINETYPE_FK FOREIGN KEY (
							idTimelineType 
						)	REFERENCES 
							timelinetype
								(
									idTimelineType
								)
						;
			-- TIMELINE_DOCUMENT_FK
					ALTER TABLE timeline -- 1_1
						ADD CONSTRAINT TIMELINE_DOCUMENT_FK FOREIGN KEY (
							idDocumentProject 
						)	REFERENCES 
							documentproject
								(
									idDocumentProject
								)
						;
			-- TIMELINE_PROJECT_FK
					ALTER TABLE timeline -- 1_1
						ADD CONSTRAINT TIMELINE_PROJECT_FK FOREIGN KEY (
							idProject 
						)	REFERENCES 
							project
								(
									idProject
								)
						;
			

			-- timelinetype
			
			-- serializeAssociations timelinetype
			-- TIMELINETYPE_CNY_FK
					ALTER TABLE timelinetype -- 1_1
						ADD CONSTRAINT TIMELINETYPE_CNY_FK FOREIGN KEY (
							idCompany 
						)	REFERENCES 
							company
								(
									IdCompany
								)
						;
			

			-- timesheet
			
			-- serializeAssociations timesheet
			-- TIMESHEET_OPERATION_FK
					ALTER TABLE timesheet -- 1_1
						ADD CONSTRAINT TIMESHEET_OPERATION_FK FOREIGN KEY (
							idOperation 
						)	REFERENCES 
							operation
								(
									IdOperation
								)
						;
			-- TIMESHEET_ACTIVITY_FK
					ALTER TABLE timesheet -- 1_1
						ADD CONSTRAINT TIMESHEET_ACTIVITY_FK FOREIGN KEY (
							idActivity 
						)	REFERENCES 
							projectactivity
								(
									IdActivity
								)
						;
			-- TIMESHEET_EMPLOYEE_FK
					ALTER TABLE timesheet -- 1_1
						ADD CONSTRAINT TIMESHEET_EMPLOYEE_FK FOREIGN KEY (
							idEmployee 
						)	REFERENCES 
							employee
								(
									idEmployee
								)
						;
			

			-- timesheetcomment
			
			-- serializeAssociations timesheetcomment
			-- TIMESHEETCOMMENT_TIMESHEET_FK
					ALTER TABLE timesheetcomment -- 1_1
						ADD CONSTRAINT TIMESHEETCOMMENT_TIMESHEET_FK FOREIGN KEY (
							idTimeSheet 
						)	REFERENCES 
							timesheet
								(
									idTimeSheet
								)
						;
			

			-- wbsnode
			
			-- serializeAssociations wbsnode
			-- WBSNODE_PARENT_FK
					ALTER TABLE wbsnode -- 1_1
						ADD CONSTRAINT WBSNODE_PARENT_FK FOREIGN KEY (
							Parent 
						)	REFERENCES 
							wbsnode
								(
									IdWBSNode
								)
						;
			-- WBSNODE_PROJECT_FK
					ALTER TABLE wbsnode -- 1_1
						ADD CONSTRAINT WBSNODE_PROJECT_FK FOREIGN KEY (
							idProject 
						)	REFERENCES 
							project
								(
									idProject
								)
						;
			

			-- wbstemplate
			
			-- serializeAssociations wbstemplate
			

			-- workingcosts
			
			-- serializeAssociations workingcosts
			-- WORKINGCOSTS_PROJECT_FK
					ALTER TABLE workingcosts -- 1_1
						ADD CONSTRAINT WORKINGCOSTS_PROJECT_FK FOREIGN KEY (
							idProject 
						)	REFERENCES 
							project
								(
									idProject
								)
						;
			-- WORKINGCOSTS_CURRENCY_FK
					ALTER TABLE workingcosts -- 1_1
						ADD CONSTRAINT WORKINGCOSTS_CURRENCY_FK FOREIGN KEY (
							idCurrency 
						)	REFERENCES 
							currency
								(
									idCurrency
								)
						;
			

-- END PACKAGE openppm -----------------------------------------------------------------------
