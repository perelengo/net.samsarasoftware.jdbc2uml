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
-- ## Begin of Top level classes
			-- generateCreateTable actionlesson
					CREATE TABLE actionlesson(
						idActionLesson INTEGER AUTO_INCREMENT  NOT NULL
						,importance VARCHAR(4000)  NULL
						,name VARCHAR(4000)  NOT NULL
						
						
						, PRIMARY KEY (
								idActionLesson
							)
					);
			
			
			-- generateCreateTable activityseller
					CREATE TABLE activityseller(
						baselineFinish DATE  NULL
						,baselineStart DATE  NULL
						,finishDate DATE  NULL
						,idActivitySeller INTEGER AUTO_INCREMENT  NOT NULL
						,indirect BOOLEAN  NULL
						,procurementDocuments VARCHAR(4000)  NULL
						,sellerPerformanceInfo VARCHAR(4000)  NULL
						,startDate DATE  NULL
						,statementOfWork VARCHAR(4000)  NULL
						,workScheduleInfo VARCHAR(4000)  NULL
						
						
						, PRIMARY KEY (
								idActivitySeller
							)
					);
			
			
			-- generateCreateTable assumptionreassessmentlog
					CREATE TABLE assumptionreassessmentlog(
						ASSUMPTIONCHANGE VARCHAR(4000)  NULL
						,Assumption_date DATE  NULL
						,IdLog INTEGER AUTO_INCREMENT  NOT NULL
						
						
						, PRIMARY KEY (
								IdLog
							)
					);
			
			
			-- generateCreateTable assumptionregister
					CREATE TABLE assumptionregister(
						AssumptionCode VARCHAR(4000)  NULL
						,AssumptionDoc VARCHAR(4000)  NULL
						,AssumptionName VARCHAR(4000)  NULL
						,DESCRIPTION VARCHAR(4000)  NULL
						,IdAssumption INTEGER AUTO_INCREMENT  NOT NULL
						,Originator VARCHAR(4000)  NULL
						
						
						, PRIMARY KEY (
								IdAssumption
							)
					);
			
			
			-- generateCreateTable auditdata
					CREATE TABLE auditdata(
						creationDate TIMESTAMP  NOT NULL
						,dataObject LONGVARBINARY  NOT NULL
						,idAudit INTEGER AUTO_INCREMENT  NOT NULL
						,idCompany INTEGER  NOT NULL
						,idContact INTEGER  NOT NULL
						,idEmployee INTEGER  NOT NULL
						,idProject INTEGER  NOT NULL
						,location VARCHAR(4000)  NOT NULL
						,projectStatus VARCHAR(4000)  NULL
						,username VARCHAR(4000)  NOT NULL
						
						
						, PRIMARY KEY (
								idAudit
							)
					);
			
			
			-- generateCreateTable bscdimension
					CREATE TABLE bscdimension(
						idBscDimension INTEGER AUTO_INCREMENT  NOT NULL
						,name VARCHAR(4000)  NOT NULL
						
						
						, PRIMARY KEY (
								idBscDimension
							)
					);
			
			
			-- generateCreateTable budgetaccounts
					CREATE TABLE budgetaccounts(
						Description VARCHAR(4000)  NULL
						,IdBudgetAccount INTEGER AUTO_INCREMENT  NOT NULL
						,typeCost INTEGER  NULL
						
						
						, PRIMARY KEY (
								IdBudgetAccount
							)
					);
			
			
			-- generateCreateTable businessdriver
					CREATE TABLE businessdriver(
						code VARCHAR(4000)  NULL
						,idBusinessDriver INTEGER AUTO_INCREMENT  NOT NULL
						,idBusinessDriverSet INTEGER  NOT NULL
						,idCompany INTEGER  NOT NULL
						,name VARCHAR(4000)  NULL
						,relativePriorization BIGINT  NULL
						
						
						, PRIMARY KEY (
								idBusinessDriver
							)
					);
			
			
			-- generateCreateTable businessdriverset
					CREATE TABLE businessdriverset(
						idBusinessDriverSet INTEGER AUTO_INCREMENT  NOT NULL
						,idCompany INTEGER  NOT NULL
						,name VARCHAR(4000)  NULL
						
						
						, PRIMARY KEY (
								idBusinessDriverSet
							)
					);
			
			
			-- generateCreateTable calendarbase
					CREATE TABLE calendarbase(
						daysMonth INTEGER  NULL
						,endTime1 BIGINT  NULL
						,endTime2 BIGINT  NULL
						,fiscalYearStart INTEGER  NULL
						,hoursDay BIGINT  NULL
						,hoursWeek BIGINT  NULL
						,idCalendarBase INTEGER AUTO_INCREMENT  NOT NULL
						,name VARCHAR(4000)  NULL
						,startTime1 BIGINT  NULL
						,startTime2 BIGINT  NULL
						,weekStart INTEGER  NULL
						
						
						, PRIMARY KEY (
								idCalendarBase
							)
					);
			
			
			-- generateCreateTable calendarbaseexceptions
					CREATE TABLE calendarbaseexceptions(
						Description VARCHAR(4000)  NULL
						,FinishDate DATE  NULL
						,IdCalendarBaseException INTEGER AUTO_INCREMENT  NOT NULL
						,StartDate DATE  NULL
						
						
						, PRIMARY KEY (
								IdCalendarBaseException
							)
					);
			
			
			-- generateCreateTable category
					CREATE TABLE category(
						IdCategory INTEGER AUTO_INCREMENT  NOT NULL
						,description VARCHAR(4000)  NULL
						,enable BOOLEAN  NULL
						,name VARCHAR(4000)  NULL
						
						
						, PRIMARY KEY (
								IdCategory
							)
					);
			
			
			-- generateCreateTable changecontrol
					CREATE TABLE changecontrol(
						ChangeDate DATE  NULL
						,ChangeDocLink VARCHAR(4000)  NULL
						,DESCRIPTION VARCHAR(4000)  NULL
						,EstimatedCost BIGINT  NULL
						,EstimatedEffort BIGINT  NULL
						,IMPACTDESCRIPTION VARCHAR(4000)  NULL
						,IdChange INTEGER AUTO_INCREMENT  NOT NULL
						,Originator VARCHAR(4000)  NULL
						,Priority VARCHAR(4000)  NULL
						,RECOMMENDEDSOLUTION VARCHAR(4000)  NULL
						,RESOLUTIONREASON VARCHAR(4000)  NULL
						,Resolution BOOLEAN  NULL
						,ResolutionDate DATE  NULL
						,resolutionName VARCHAR(4000)  NULL
						
						
						, PRIMARY KEY (
								IdChange
							)
					);
			
			
			-- generateCreateTable changerequestwbsnode
					CREATE TABLE changerequestwbsnode(
						estimatedCost BIGINT  NULL
						,estimatedEffort BIGINT  NULL
						,idChangeRequestWBSNode INTEGER AUTO_INCREMENT  NOT NULL
						
						
						, PRIMARY KEY (
								idChangeRequestWBSNode
							)
					);
			
			
			-- generateCreateTable changetype
					CREATE TABLE changetype(
						description VARCHAR(4000)  NULL
						,idChangeType INTEGER AUTO_INCREMENT  NOT NULL
						
						
						, PRIMARY KEY (
								idChangeType
							)
					);
			
			
			-- generateCreateTable chargescosts
					CREATE TABLE chargescosts(
						cost BIGINT  NULL
						,idChargeType INTEGER  NOT NULL
						,idChargesCosts INTEGER AUTO_INCREMENT  NOT NULL
						,name VARCHAR(4000)  NOT NULL
						
						
						, PRIMARY KEY (
								idChargesCosts
							)
					);
			
			
			-- generateCreateTable checklist
					CREATE TABLE checklist(
						actualizationDate DATE  NULL
						,code VARCHAR(4000)  NULL
						,comments VARCHAR(4000)  NULL
						,description VARCHAR(4000)  NULL
						,idChecklist INTEGER AUTO_INCREMENT  NOT NULL
						,name VARCHAR(4000)  NULL
						,percentageComplete INTEGER  NULL
						
						
						, PRIMARY KEY (
								idChecklist
							)
					);
			
			
			-- generateCreateTable classificationlevel
					CREATE TABLE classificationlevel(
						description VARCHAR(4000)  NULL
						,idClassificationlevel INTEGER AUTO_INCREMENT  NOT NULL
						,name VARCHAR(4000)  NOT NULL
						,thresholdMax INTEGER  NULL
						,thresholdMin INTEGER  NULL
						
						
						, PRIMARY KEY (
								idClassificationlevel
							)
					);
			
			
			-- generateCreateTable closurecheck
					CREATE TABLE closurecheck(
						description VARCHAR(4000)  NULL
						,idClosureCheck INTEGER AUTO_INCREMENT  NOT NULL
						,name VARCHAR(4000)  NOT NULL
						,showCheck BOOLEAN  NOT NULL
						
						
						, PRIMARY KEY (
								idClosureCheck
							)
					);
			
			
			-- generateCreateTable closurecheckproject
					CREATE TABLE closurecheckproject(
						comments VARCHAR(4000)  NULL
						,dateRealized DATE  NULL
						,departament VARCHAR(4000)  NULL
						,idClosureCheckProject INTEGER AUTO_INCREMENT  NOT NULL
						,manager VARCHAR(4000)  NULL
						,realized BOOLEAN  NOT NULL
						
						
						, PRIMARY KEY (
								idClosureCheckProject
							)
					);
			
			
			-- generateCreateTable company
					CREATE TABLE company(
						IdCompany INTEGER AUTO_INCREMENT  NOT NULL
						,Name VARCHAR(4000)  NULL
						,disable BOOLEAN  NULL
						
						
						, PRIMARY KEY (
								IdCompany
							)
					);
			
			
			-- generateCreateTable companyfile
					CREATE TABLE companyfile(
						idCompanyfile INTEGER AUTO_INCREMENT  NOT NULL
						,typeFile VARCHAR(4000)  NOT NULL
						
						
						, PRIMARY KEY (
								idCompanyfile
							)
					);
			
			
			-- generateCreateTable configuration
					CREATE TABLE configuration(
						idConfiguration INTEGER AUTO_INCREMENT  NOT NULL
						,name VARCHAR(4000)  NOT NULL
						,type VARCHAR(4000)  NOT NULL
						,value VARCHAR(4000)  NULL
						
						
						, PRIMARY KEY (
								idConfiguration
							)
					);
			
			
			-- generateCreateTable contact
					CREATE TABLE contact(
						BusinessAddress VARCHAR(4000)  NULL
						,BusinessPhone VARCHAR(4000)  NULL
						,Email VARCHAR(4000)  NULL
						,FileAs VARCHAR(4000)  NULL
						,FullName VARCHAR(4000)  NULL
						,IdContact INTEGER AUTO_INCREMENT  NOT NULL
						,JobTitle VARCHAR(4000)  NULL
						,MobilePhone VARCHAR(4000)  NULL
						,Notes VARCHAR(4000)  NULL
						,disable BOOLEAN  NULL
						,locale VARCHAR(4000)  NULL
						
						
						, PRIMARY KEY (
								IdContact
							)
					);
			
			
			-- generateCreateTable contactnotification
					CREATE TABLE contactnotification(
						idContactNotification INTEGER AUTO_INCREMENT  NOT NULL
						,notificationMode VARCHAR(4000)  NULL
						,readDate TIMESTAMP  NULL
						,readNotify BOOLEAN  NOT NULL
						,type VARCHAR(4000)  NULL
						
						
						, PRIMARY KEY (
								idContactNotification
							)
					);
			
			
			-- generateCreateTable contentfile
					CREATE TABLE contentfile(
						content LONGVARBINARY  NULL
						,extension VARCHAR(4000)  NULL
						,idContentFile INTEGER AUTO_INCREMENT  NOT NULL
						,mime VARCHAR(4000)  NOT NULL
						
						
						, PRIMARY KEY (
								idContentFile
							)
					);
			
			
			-- generateCreateTable contracttype
					CREATE TABLE contracttype(
						Description VARCHAR(4000)  NULL
						,IdContractType INTEGER AUTO_INCREMENT  NOT NULL
						
						
						, PRIMARY KEY (
								IdContractType
							)
					);
			
			
			-- generateCreateTable currency
					CREATE TABLE currency(
						currency VARCHAR(4000)  NOT NULL
						,idCurrency INTEGER AUTO_INCREMENT  NOT NULL
						,name VARCHAR(4000)  NOT NULL
						
						
						, PRIMARY KEY (
								idCurrency
							)
					);
			
			
			-- generateCreateTable customer
					CREATE TABLE customer(
						IdCustomer INTEGER AUTO_INCREMENT  NOT NULL
						,description VARCHAR(4000)  NULL
						,name VARCHAR(4000)  NOT NULL
						
						
						, PRIMARY KEY (
								IdCustomer
							)
					);
			
			
			-- generateCreateTable customertype
					CREATE TABLE customertype(
						description VARCHAR(4000)  NULL
						,idCustomerType INTEGER AUTO_INCREMENT  NOT NULL
						,name VARCHAR(4000)  NOT NULL
						
						
						, PRIMARY KEY (
								idCustomerType
							)
					);
			
			
			-- generateCreateTable directcosts
					CREATE TABLE directcosts(
						Actual BIGINT  NULL
						,Description VARCHAR(4000)  NULL
						,IdDirectCosts INTEGER AUTO_INCREMENT  NOT NULL
						,Planned BIGINT  NULL
						,ProjectCost BOOLEAN  NOT NULL
						
						
						, PRIMARY KEY (
								IdDirectCosts
							)
					);
			
			
			-- generateCreateTable documentation
					CREATE TABLE documentation(
						idDocumentation INTEGER AUTO_INCREMENT  NOT NULL
						,nameFile VARCHAR(4000)  NULL
						,namePopup VARCHAR(4000)  NOT NULL
						
						
						, PRIMARY KEY (
								idDocumentation
							)
					);
			
			
			-- generateCreateTable documentproject
					CREATE TABLE documentproject(
						contentComment VARCHAR(4000)  NULL
						,creationContact VARCHAR(4000)  NULL
						,creationDate TIMESTAMP  NULL
						,extension VARCHAR(4000)  NULL
						,idDocumentProject INTEGER AUTO_INCREMENT  NOT NULL
						,link VARCHAR(4000)  NULL
						,mime VARCHAR(4000)  NULL
						,name VARCHAR(4000)  NULL
						,type VARCHAR(4000)  NOT NULL
						
						
						, PRIMARY KEY (
								idDocumentProject
							)
					);
			
			
			-- generateCreateTable employee
					CREATE TABLE employee(
						costRate BIGINT  NULL
						,disable BOOLEAN  NULL
						,idEmployee INTEGER AUTO_INCREMENT  NOT NULL
						,profileDate DATE  NULL
						,token VARCHAR(4000)  NULL
						
						
						, PRIMARY KEY (
								idEmployee
							)
					);
			
			
			-- generateCreateTable employeeoperationdate
					CREATE TABLE employeeoperationdate(
						dateForOperation DATE  NOT NULL
						,idEmplOpeDate INTEGER AUTO_INCREMENT  NOT NULL
						
						
						, PRIMARY KEY (
								idEmplOpeDate
							)
					);
			
			
			-- generateCreateTable executivereport
					CREATE TABLE executivereport(
						external VARCHAR(4000)  NULL
						,idExecutiveReport INTEGER AUTO_INCREMENT  NOT NULL
						,internal VARCHAR(4000)  NULL
						,statusDate DATE  NOT NULL
						
						
						, PRIMARY KEY (
								idExecutiveReport
							)
					);
			
			
			-- generateCreateTable expenseaccounts
					CREATE TABLE expenseaccounts(
						Description VARCHAR(4000)  NULL
						,IdExpenseAccount INTEGER AUTO_INCREMENT  NOT NULL
						
						
						, PRIMARY KEY (
								IdExpenseAccount
							)
					);
			
			
			-- generateCreateTable expenses
					CREATE TABLE expenses(
						Actual BIGINT  NULL
						,Description VARCHAR(4000)  NULL
						,IdExpense INTEGER AUTO_INCREMENT  NOT NULL
						,Planned BIGINT  NULL
						,ProjectExpense BOOLEAN  NOT NULL
						
						
						, PRIMARY KEY (
								IdExpense
							)
					);
			
			
			-- generateCreateTable expensesheet
					CREATE TABLE expensesheet(
						autorizationNumber VARCHAR(4000)  NULL
						,cost BIGINT  NULL
						,description VARCHAR(4000)  NULL
						,expenseDate DATE  NULL
						,idExpenseSheet INTEGER AUTO_INCREMENT  NOT NULL
						,paidEmployee BOOLEAN  NULL
						,reimbursable BOOLEAN  NULL
						,status VARCHAR(4000)  NULL
						
						
						, PRIMARY KEY (
								idExpenseSheet
							)
					);
			
			
			-- generateCreateTable expensesheetcomment
					CREATE TABLE expensesheetcomment(
						actualStatus VARCHAR(4000)  NOT NULL
						,commentDate TIMESTAMP  NOT NULL
						,contentComment VARCHAR(4000)  NOT NULL
						,idExpenseSheetComment INTEGER AUTO_INCREMENT  NOT NULL
						,previousStatus VARCHAR(4000)  NOT NULL
						
						
						, PRIMARY KEY (
								idExpenseSheetComment
							)
					);
			
			
			-- generateCreateTable fundingsource
					CREATE TABLE fundingsource(
						idFundingSource INTEGER AUTO_INCREMENT  NOT NULL
						,name VARCHAR(4000)  NOT NULL
						
						
						, PRIMARY KEY (
								idFundingSource
							)
					);
			
			
			-- generateCreateTable geography
					CREATE TABLE geography(
						description VARCHAR(4000)  NULL
						,idGeography INTEGER AUTO_INCREMENT  NOT NULL
						,name VARCHAR(4000)  NULL
						
						
						, PRIMARY KEY (
								idGeography
							)
					);
			
			
			-- generateCreateTable historickpi
					CREATE TABLE historickpi(
						actualDate TIMESTAMP  NOT NULL
						,idHistoricKpi INTEGER AUTO_INCREMENT  NOT NULL
						,lowerThreshold BIGINT  NULL
						,updatedType VARCHAR(4000)  NULL
						,upperThreshold BIGINT  NULL
						,valueKpi BIGINT  NULL
						,weight BIGINT  NULL
						
						
						, PRIMARY KEY (
								idHistoricKpi
							)
					);
			
			
			-- generateCreateTable historicrisk
					CREATE TABLE historicrisk(
						actualDate TIMESTAMP  NOT NULL
						,idEmployee INTEGER  NOT NULL
						,idHistoricrisk INTEGER AUTO_INCREMENT  NOT NULL
						,idRisk INTEGER  NOT NULL
						,impact INTEGER  NULL
						,probability INTEGER  NULL
						
						
						, PRIMARY KEY (
								idHistoricrisk
							)
					);
			
			
			-- generateCreateTable incomes
					CREATE TABLE incomes(
						actualBillAmmount BIGINT  NULL
						,actualBillDate DATE  NULL
						,actualDescription VARCHAR(4000)  NULL
						,actualPaymentDate DATE  NULL
						,idIncome INTEGER AUTO_INCREMENT  NOT NULL
						,plannedBillAmmount BIGINT  NULL
						,plannedBillDate DATE  NULL
						,plannedDescription VARCHAR(4000)  NULL
						
						
						, PRIMARY KEY (
								idIncome
							)
					);
			
			
			-- generateCreateTable issuelog
					CREATE TABLE issuelog(
						AssignedTo VARCHAR(4000)  NULL
						,DESCRIPTION VARCHAR(4000)  NULL
						,DateClosed DATE  NULL
						,DateLogged DATE  NULL
						,IdIssue INTEGER AUTO_INCREMENT  NOT NULL
						,IssueDoc VARCHAR(4000)  NULL
						,Originator VARCHAR(4000)  NULL
						,Priority VARCHAR(4000)  NULL
						,RESOLUTION VARCHAR(4000)  NULL
						,TargetDate DATE  NULL
						,owner VARCHAR(4000)  NULL
						
						
						, PRIMARY KEY (
								IdIssue
							)
					);
			
			
			-- generateCreateTable iwo
					CREATE TABLE iwo(
						Actual BIGINT  NULL
						,Description VARCHAR(4000)  NULL
						,IWODoc VARCHAR(4000)  NULL
						,IdIWO INTEGER AUTO_INCREMENT  NOT NULL
						,Planned BIGINT  NULL
						
						
						, PRIMARY KEY (
								IdIWO
							)
					);
			
			
			-- generateCreateTable jobcategory
					CREATE TABLE jobcategory(
						description VARCHAR(4000)  NULL
						,idJobCategory INTEGER AUTO_INCREMENT  NOT NULL
						,name VARCHAR(4000)  NULL
						
						
						, PRIMARY KEY (
								idJobCategory
							)
					);
			
			
			-- generateCreateTable jobcatemployee
					CREATE TABLE jobcatemployee(
						idJobCatEmployee INTEGER AUTO_INCREMENT  NOT NULL
						
						
						, PRIMARY KEY (
								idJobCatEmployee
							)
					);
			
			
			-- generateCreateTable knowledgearea
					CREATE TABLE knowledgearea(
						description VARCHAR(4000)  NULL
						,idKnowledgeArea INTEGER AUTO_INCREMENT  NOT NULL
						,name VARCHAR(4000)  NOT NULL
						
						
						, PRIMARY KEY (
								idKnowledgeArea
							)
					);
			
			
			-- generateCreateTable label
					CREATE TABLE label(
						description VARCHAR(4000)  NULL
						,disable BOOLEAN  NULL
						,idLabel INTEGER AUTO_INCREMENT  NOT NULL
						,name VARCHAR(4000)  NOT NULL
						
						
						, PRIMARY KEY (
								idLabel
							)
					);
			
			
			-- generateCreateTable learnedlesson
					CREATE TABLE learnedlesson(
						dateRaised TIMESTAMP  NULL
						,description VARCHAR(4000)  NULL
						,idLearnedLesson INTEGER AUTO_INCREMENT  NOT NULL
						,impactCost BIGINT  NULL
						,impactSatisfaction VARCHAR(4000)  NULL
						,impactTime BIGINT  NULL
						,name VARCHAR(4000)  NOT NULL
						,processGroup VARCHAR(4000)  NULL
						,type VARCHAR(4000)  NULL
						
						
						, PRIMARY KEY (
								idLearnedLesson
							)
					);
			
			
			-- generateCreateTable learnedlessonlink
					CREATE TABLE learnedlessonlink(
						idLearnedLessonLink INTEGER AUTO_INCREMENT  NOT NULL
						
						
						, PRIMARY KEY (
								idLearnedLessonLink
							)
					);
			
			
			-- generateCreateTable learnedlessonproject
					CREATE TABLE learnedlessonproject(
						idLearnedLessonProj INTEGER AUTO_INCREMENT  NOT NULL
						
						
						, PRIMARY KEY (
								idLearnedLessonProj
							)
					);
			
			
			-- generateCreateTable logprojectstatus
					CREATE TABLE logprojectstatus(
						idLogProjectStatus INTEGER AUTO_INCREMENT  NOT NULL
						,investmentStatus VARCHAR(4000)  NOT NULL
						,logDate TIMESTAMP  NOT NULL
						,projectStatus VARCHAR(4000)  NOT NULL
						
						
						, PRIMARY KEY (
								idLogProjectStatus
							)
					);
			
			
			-- generateCreateTable managepool
					CREATE TABLE managepool(
						idManagePool INTEGER AUTO_INCREMENT  NOT NULL
						
						
						, PRIMARY KEY (
								idManagePool
							)
					);
			
			
			-- generateCreateTable market
					CREATE TABLE market(
						Description VARCHAR(4000)  NULL
						,IdMarket INTEGER AUTO_INCREMENT  NOT NULL
						,MarketName VARCHAR(4000)  NULL
						
						
						, PRIMARY KEY (
								IdMarket
							)
					);
			
			
			-- generateCreateTable metrickpi
					CREATE TABLE metrickpi(
						definition VARCHAR(4000)  NULL
						,idMetricKpi INTEGER AUTO_INCREMENT  NOT NULL
						,name VARCHAR(4000)  NULL
						,type VARCHAR(4000)  NULL
						
						
						, PRIMARY KEY (
								idMetricKpi
							)
					);
			
			
			-- generateCreateTable milestonecategory
					CREATE TABLE milestonecategory(
						description VARCHAR(4000)  NULL
						,disable BOOLEAN  NULL
						,idMilestoneCategory INTEGER AUTO_INCREMENT  NOT NULL
						,name VARCHAR(4000)  NOT NULL
						
						
						, PRIMARY KEY (
								idMilestoneCategory
							)
					);
			
			
			-- generateCreateTable milestones
					CREATE TABLE milestones(
						Achieved DATE  NULL
						,IdMilestone INTEGER AUTO_INCREMENT  NOT NULL
						,Label VARCHAR(4000)  NULL
						,Planned DATE  NULL
						,ReportType VARCHAR(4000)  NULL
						,achievedComments VARCHAR(4000)  NULL
						,description VARCHAR(4000)  NULL
						,estimatedDate DATE  NOT NULL
						,name VARCHAR(4000)  NULL
						,notificationText VARCHAR(4000)  NULL
						,notify BOOLEAN  NULL
						,notifyDate DATE  NULL
						,notifyDays INTEGER  NULL
						
						
						, PRIMARY KEY (
								IdMilestone
							)
					);
			
			
			-- generateCreateTable milestonetype
					CREATE TABLE milestonetype(
						description VARCHAR(4000)  NULL
						,idMilestoneType INTEGER AUTO_INCREMENT  NOT NULL
						,name VARCHAR(4000)  NOT NULL
						
						
						, PRIMARY KEY (
								idMilestoneType
							)
					);
			
			
			-- generateCreateTable notification
					CREATE TABLE notification(
						body VARCHAR(4000)  NOT NULL
						,changeStatusDate TIMESTAMP  NULL
						,creationDate TIMESTAMP  NOT NULL
						,direction VARCHAR(4000)  NULL
						,distributionList VARCHAR(4000)  NULL
						,idNotification INTEGER AUTO_INCREMENT  NOT NULL
						,messageError VARCHAR(4000)  NULL
						,modeNotification VARCHAR(4000)  NOT NULL
						,status VARCHAR(4000)  NOT NULL
						,subject VARCHAR(4000)  NOT NULL
						,type VARCHAR(4000)  NOT NULL
						
						
						, PRIMARY KEY (
								idNotification
							)
					);
			
			
			-- generateCreateTable notificationemployee
					CREATE TABLE notificationemployee(
						idNotificationEmployee INTEGER AUTO_INCREMENT  NOT NULL
						,notificationMode VARCHAR(4000)  NULL
						,status VARCHAR(4000)  NULL
						
						
						, PRIMARY KEY (
								idNotificationEmployee
							)
					);
			
			
			-- generateCreateTable notificationprofile
					CREATE TABLE notificationprofile(
						idNotificationProfile INTEGER AUTO_INCREMENT  NOT NULL
						,notificationMode VARCHAR(4000)  NULL
						,readOnly VARCHAR(4000)  NOT NULL
						,status VARCHAR(4000)  NULL
						
						
						, PRIMARY KEY (
								idNotificationProfile
							)
					);
			
			
			-- generateCreateTable notificationproject
					CREATE TABLE notificationproject(
						idNotificationProject INTEGER AUTO_INCREMENT  NOT NULL
						,notificationMode VARCHAR(4000)  NULL
						,status VARCHAR(4000)  NULL
						
						
						, PRIMARY KEY (
								idNotificationProject
							)
					);
			
			
			-- generateCreateTable notificationtype
					CREATE TABLE notificationtype(
						distributionList VARCHAR(4000)  NULL
						,idNotificationType INTEGER AUTO_INCREMENT  NOT NULL
						,notificationKey VARCHAR(4000)  NOT NULL
						,status VARCHAR(4000)  NOT NULL
						
						
						, PRIMARY KEY (
								idNotificationType
							)
					);
			
			
			-- generateCreateTable operation
					CREATE TABLE operation(
						IdOperation INTEGER AUTO_INCREMENT  NOT NULL
						,OperationCode VARCHAR(4000)  NULL
						,OperationName VARCHAR(4000)  NULL
						,availableForApprove BOOLEAN  NULL
						,availableForManager BOOLEAN  NULL
						,excludeExternals BOOLEAN  NULL
						
						
						, PRIMARY KEY (
								IdOperation
							)
					);
			
			
			-- generateCreateTable operationaccount
					CREATE TABLE operationaccount(
						Description VARCHAR(4000)  NULL
						,IdOpAccount INTEGER AUTO_INCREMENT  NOT NULL
						
						
						, PRIMARY KEY (
								IdOpAccount
							)
					);
			
			
			-- generateCreateTable performingorg
					CREATE TABLE performingorg(
						IdPerfOrg INTEGER AUTO_INCREMENT  NOT NULL
						,OnSaaS BOOLEAN  NULL
						,name VARCHAR(4000)  NULL
						
						
						, PRIMARY KEY (
								IdPerfOrg
							)
					);
			
			
			-- generateCreateTable plugin
					CREATE TABLE plugin(
						enabled BOOLEAN  NOT NULL
						,idPlugin INTEGER AUTO_INCREMENT  NOT NULL
						,name VARCHAR(4000)  NOT NULL
						
						
						, PRIMARY KEY (
								idPlugin
							)
					);
			
			
			-- generateCreateTable pluginconfiguration
					CREATE TABLE pluginconfiguration(
						configuration VARCHAR(4000)  NOT NULL
						,idPluginConfiguration INTEGER AUTO_INCREMENT  NOT NULL
						,value VARCHAR(4000)  NOT NULL
						
						
						, PRIMARY KEY (
								idPluginConfiguration
							)
					);
			
			
			-- generateCreateTable pluginfile
					CREATE TABLE pluginfile(
						idPluginfile INTEGER AUTO_INCREMENT  NOT NULL
						,typeFile VARCHAR(4000)  NOT NULL
						
						
						, PRIMARY KEY (
								idPluginfile
							)
					);
			
			
			-- generateCreateTable problemcheck
					CREATE TABLE problemcheck(
						description VARCHAR(4000)  NULL
						,idProblemCheck INTEGER AUTO_INCREMENT  NOT NULL
						,name VARCHAR(4000)  NOT NULL
						,showCheck BOOLEAN  NOT NULL
						
						
						, PRIMARY KEY (
								idProblemCheck
							)
					);
			
			
			-- generateCreateTable problemcheckproject
					CREATE TABLE problemcheckproject(
						idProblemCheckProject INTEGER AUTO_INCREMENT  NOT NULL
						
						
						, PRIMARY KEY (
								idProblemCheckProject
							)
					);
			
			
			-- generateCreateTable procurementpayments
					CREATE TABLE procurementpayments(
						actualDate DATE  NULL
						,actualPayment BIGINT  NULL
						,concept VARCHAR(4000)  NULL
						,deductible BOOLEAN  NULL
						,idProcurementPayment INTEGER AUTO_INCREMENT  NOT NULL
						,paymentScheduleInfo VARCHAR(4000)  NULL
						,plannedDate DATE  NULL
						,plannedPayment BIGINT  NULL
						,purchaseOrder VARCHAR(4000)  NULL
						
						
						, PRIMARY KEY (
								idProcurementPayment
							)
					);
			
			
			-- generateCreateTable profile
					CREATE TABLE profile(
						description VARCHAR(4000)  NULL
						,idProfile INTEGER AUTO_INCREMENT  NOT NULL
						,name VARCHAR(4000)  NOT NULL
						
						
						, PRIMARY KEY (
								idProfile
							)
					);
			
			
			-- generateCreateTable program
					CREATE TABLE program(
						FinishBudgetYear VARCHAR(4000)  NULL
						,IdProgram INTEGER AUTO_INCREMENT  NOT NULL
						,InitBudgetYear VARCHAR(4000)  NULL
						,ProgramCode VARCHAR(4000)  NOT NULL
						,ProgramDoc VARCHAR(4000)  NULL
						,ProgramName VARCHAR(4000)  NOT NULL
						,ProgramTitle VARCHAR(4000)  NOT NULL
						,budget BIGINT  NULL
						,description VARCHAR(4000)  NULL
						
						
						, PRIMARY KEY (
								IdProgram
							)
					);
			
			
			-- generateCreateTable project
					CREATE TABLE project(
						accountingCode VARCHAR(4000)  NULL
						,archiveDate DATE  NULL
						,bac BIGINT  NULL
						,budgetYear INTEGER  NULL
						,calculatedPlanFinishDate DATE  NULL
						,calculatedPlanStartDate DATE  NULL
						,canceledComments VARCHAR(4000)  NULL
						,chartLabel VARCHAR(4000)  NULL
						,clientComments VARCHAR(4000)  NULL
						,closeComments VARCHAR(4000)  NULL
						,closeLessons VARCHAR(4000)  NULL
						,closeStakeholderComments VARCHAR(4000)  NULL
						,closeUrlLessons VARCHAR(4000)  NULL
						,comments VARCHAR(4000)  NULL
						,currencyOptional1 BIGINT  NULL
						,currencyOptional2 BIGINT  NULL
						,currencyOptional3 BIGINT  NULL
						,currencyOptional4 BIGINT  NULL
						,disable BOOLEAN  NULL
						,duration INTEGER  NULL
						,effort INTEGER  NULL
						,endDate DATE  NULL
						,execDate DATE  NULL
						,finalPosition INTEGER  NULL
						,finishDate DATE  NULL
						,hdDescription VARCHAR(4000)  NULL
						,idProject INTEGER AUTO_INCREMENT  NOT NULL
						,initDate DATE  NULL
						,internalProject BOOLEAN  NULL
						,investmentStatus VARCHAR(4000)  NOT NULL
						,isGeoSelling BOOLEAN  NULL
						,kpiStatus VARCHAR(4000)  NULL
						,linkComment VARCHAR(4000)  NULL
						,linkDoc VARCHAR(4000)  NULL
						,lowerThreshold BIGINT  NULL
						,netIncome BIGINT  NULL
						,numCompetitors INTEGER  NULL
						,planDate DATE  NULL
						,plannedFinishDate DATE  NULL
						,plannedInitDate DATE  NULL
						,poc BIGINT  NULL
						,priority INTEGER  NULL
						,probability INTEGER  NULL
						,projectDoc VARCHAR(4000)  NULL
						,projectName VARCHAR(4000)  NULL
						,rag VARCHAR(4000)  NULL
						,risk VARCHAR(4000)  NULL
						,riskRatingAdjustament INTEGER  NULL
						,scopeStatement VARCHAR(4000)  NULL
						,sended BOOLEAN  NULL
						,startDate DATE  NULL
						,status VARCHAR(4000)  NOT NULL
						,statusDate DATE  NULL
						,strategicAdjustament INTEGER  NULL
						,tcv BIGINT  NULL
						,upperThreshold BIGINT  NULL
						,useRiskAdjust BOOLEAN  NULL
						,useStrategicAdjust BOOLEAN  NULL
						
						
						, PRIMARY KEY (
								idProject
							)
					);
			
			
			-- generateCreateTable projectactivity
					CREATE TABLE projectactivity(
						AC BIGINT  NULL
						,ActivityName VARCHAR(4000)  NULL
						,ActualEndDate DATE  NULL
						,ActualInitDate DATE  NULL
						,EV BIGINT  NULL
						,IdActivity INTEGER AUTO_INCREMENT  NOT NULL
						,PV BIGINT  NULL
						,PlanEndDate DATE  NULL
						,PlanInitDate DATE  NULL
						,WBSDictionary VARCHAR(4000)  NULL
						,commentsDates VARCHAR(4000)  NULL
						,commentsPOC VARCHAR(4000)  NULL
						,poc BIGINT  NULL
						
						
						, PRIMARY KEY (
								IdActivity
							)
					);
			
			
			-- generateCreateTable projectassociation
					CREATE TABLE projectassociation(
						idProjectAssociation INTEGER AUTO_INCREMENT  NOT NULL
						,updateDates BOOLEAN  NULL
						
						
						, PRIMARY KEY (
								idProjectAssociation
							)
					);
			
			
			-- generateCreateTable projectcalendar
					CREATE TABLE projectcalendar(
						IdProjectCalendar INTEGER AUTO_INCREMENT  NOT NULL
						,daysMonth INTEGER  NULL
						,endTime1 BIGINT  NULL
						,endTime2 BIGINT  NULL
						,fiscalYearStart INTEGER  NULL
						,hoursDay BIGINT  NULL
						,hoursWeek BIGINT  NULL
						,startTime1 BIGINT  NULL
						,startTime2 BIGINT  NULL
						,weekStart INTEGER  NULL
						
						
						, PRIMARY KEY (
								IdProjectCalendar
							)
					);
			
			
			-- generateCreateTable projectcalendarexceptions
					CREATE TABLE projectcalendarexceptions(
						Description VARCHAR(4000)  NULL
						,FinishDate DATE  NULL
						,IdProjectCalendarException INTEGER AUTO_INCREMENT  NOT NULL
						,StartDate DATE  NULL
						
						
						, PRIMARY KEY (
								IdProjectCalendarException
							)
					);
			
			
			-- generateCreateTable projectcharter
					CREATE TABLE projectcharter(
						BusinessNeed VARCHAR(4000)  NULL
						,IdProjectCharter INTEGER AUTO_INCREMENT  NOT NULL
						,MainAssumptions VARCHAR(4000)  NULL
						,MainConstraints VARCHAR(4000)  NULL
						,MainRisks VARCHAR(4000)  NULL
						,Milestones VARCHAR(4000)  NULL
						,ProjectObjectives VARCHAR(4000)  NULL
						,SucessCriteria VARCHAR(4000)  NULL
						,exclusions VARCHAR(4000)  NULL
						,mainDeliverables VARCHAR(4000)  NULL
						
						
						, PRIMARY KEY (
								IdProjectCharter
							)
					);
			
			
			-- generateCreateTable projectclosure
					CREATE TABLE projectclosure(
						goalAchievement VARCHAR(4000)  NULL
						,idProjectClouse INTEGER AUTO_INCREMENT  NOT NULL
						,lessonsLearned VARCHAR(4000)  NULL
						,projectResults VARCHAR(4000)  NULL
						
						
						, PRIMARY KEY (
								idProjectClouse
							)
					);
			
			
			-- generateCreateTable projectcosts
					CREATE TABLE projectcosts(
						CostDate DATE  NULL
						,IdProjectCosts INTEGER AUTO_INCREMENT  NOT NULL
						
						
						, PRIMARY KEY (
								IdProjectCosts
							)
					);
			
			
			-- generateCreateTable projectdata
					CREATE TABLE projectdata(
						canceled BOOLEAN  NULL
						,commentCanceled VARCHAR(4000)  NULL
						,dateCanceled DATE  NULL
						,idProjectData INTEGER AUTO_INCREMENT  NOT NULL
						
						
						, PRIMARY KEY (
								idProjectData
							)
					);
			
			
			-- generateCreateTable projectfollowup
					CREATE TABLE projectfollowup(
						AC BIGINT  NULL
						,CostComments VARCHAR(4000)  NULL
						,CostFlag VARCHAR(4000)  NULL
						,EV BIGINT  NULL
						,FollowupDate DATE  NULL
						,GeneralComments VARCHAR(4000)  NULL
						,GeneralFlag VARCHAR(4000)  NULL
						,IdProjectFollowup INTEGER AUTO_INCREMENT  NOT NULL
						,PV BIGINT  NULL
						,PerformanceDoc VARCHAR(4000)  NULL
						,RiskFlag VARCHAR(4000)  NULL
						,RisksComments VARCHAR(4000)  NULL
						,ScheduleComments VARCHAR(4000)  NULL
						,ScheduleFlag VARCHAR(4000)  NULL
						,riskRating INTEGER  NULL
						
						
						, PRIMARY KEY (
								IdProjectFollowup
							)
					);
			
			
			-- generateCreateTable projectfundingsource
					CREATE TABLE projectfundingsource(
						dolares BIGINT  NULL
						,epigrafeDolar VARCHAR(4000)  NULL
						,epigrafeEuro VARCHAR(4000)  NULL
						,euros BIGINT  NULL
						,idProjFundingSource INTEGER AUTO_INCREMENT  NOT NULL
						,percentage INTEGER  NULL
						
						
						, PRIMARY KEY (
								idProjFundingSource
							)
					);
			
			
			-- generateCreateTable projectkpi
					CREATE TABLE projectkpi(
						IdProjectKPI INTEGER AUTO_INCREMENT  NOT NULL
						,LowerThreshold BIGINT  NULL
						,UpperThreshold BIGINT  NULL
						,Value BIGINT  NULL
						,Weight BIGINT  NULL
						,aggregateKpi BOOLEAN  NULL
						,specificKpi VARCHAR(4000)  NULL
						
						
						, PRIMARY KEY (
								IdProjectKPI
							)
					);
			
			
			-- generateCreateTable projectlabel
					CREATE TABLE projectlabel(
						idProjectLabel INTEGER AUTO_INCREMENT  NOT NULL
						
						
						, PRIMARY KEY (
								idProjectLabel
							)
					);
			
			
			-- generateCreateTable projecttechnology
					CREATE TABLE projecttechnology(
						idProjectTechnology INTEGER AUTO_INCREMENT  NOT NULL
						
						
						, PRIMARY KEY (
								idProjectTechnology
							)
					);
			
			
			-- generateCreateTable recommendationlesson
					CREATE TABLE recommendationlesson(
						idRecommendationLesson INTEGER AUTO_INCREMENT  NOT NULL
						,importance VARCHAR(4000)  NULL
						,name VARCHAR(4000)  NOT NULL
						
						
						, PRIMARY KEY (
								idRecommendationLesson
							)
					);
			
			
			-- generateCreateTable resourcepool
					CREATE TABLE resourcepool(
						description VARCHAR(4000)  NULL
						,idResourcepool INTEGER AUTO_INCREMENT  NOT NULL
						,name VARCHAR(4000)  NOT NULL
						
						
						, PRIMARY KEY (
								idResourcepool
							)
					);
			
			
			-- generateCreateTable resourceprofiles
					CREATE TABLE resourceprofiles(
						Description VARCHAR(4000)  NULL
						,IdProfile INTEGER AUTO_INCREMENT  NOT NULL
						,ProfileName VARCHAR(4000)  NULL
						
						
						, PRIMARY KEY (
								IdProfile
							)
					);
			
			
			-- generateCreateTable riskcategories
					CREATE TABLE riskcategories(
						Description VARCHAR(4000)  NULL
						,IdRiskCategory INTEGER AUTO_INCREMENT  NOT NULL
						,accept BOOLEAN  NOT NULL
						,mitigate BOOLEAN  NOT NULL
						,riskType INTEGER  NOT NULL
						
						
						, PRIMARY KEY (
								IdRiskCategory
							)
					);
			
			
			-- generateCreateTable riskcategory
					CREATE TABLE riskcategory(
						description VARCHAR(4000)  NOT NULL
						,idRiskcategory INTEGER AUTO_INCREMENT  NOT NULL
						,name VARCHAR(4000)  NOT NULL
						
						
						, PRIMARY KEY (
								idRiskcategory
							)
					);
			
			
			-- generateCreateTable riskreassessmentlog
					CREATE TABLE riskreassessmentlog(
						IdLog INTEGER AUTO_INCREMENT  NOT NULL
						,RISKCHANGE VARCHAR(4000)  NULL
						,RiskDate DATE  NULL
						
						
						, PRIMARY KEY (
								IdLog
							)
					);
			
			
			-- generateCreateTable riskregister
					CREATE TABLE riskregister(
						ActualMaterializationCost BIGINT  NULL
						,ActualMaterializationDelay INTEGER  NULL
						,CONTINGENCYACTIONSREQUIRED VARCHAR(4000)  NULL
						,Closed BOOLEAN  NULL
						,DESCRIPTION VARCHAR(4000)  NULL
						,DateRaised DATE  NULL
						,FINALCOMMENTS VARCHAR(4000)  NULL
						,IdRisk INTEGER AUTO_INCREMENT  NOT NULL
						,Impact INTEGER  NULL
						,MITIGATIONACTIONSREQUIRED VARCHAR(4000)  NULL
						,Materialized BOOLEAN  NULL
						,Owner VARCHAR(4000)  NULL
						,PlannedContingencyCost BIGINT  NULL
						,PlannedMitigationCost BIGINT  NULL
						,PotentialCost BIGINT  NULL
						,PotentialDelay INTEGER  NULL
						,Probability INTEGER  NULL
						,RESIDUALRISK VARCHAR(4000)  NULL
						,RESPONSEDESCRIPTION VARCHAR(4000)  NULL
						,RISK_TRIGGER VARCHAR(4000)  NULL
						,RiskCode VARCHAR(4000)  NULL
						,RiskDoc VARCHAR(4000)  NULL
						,RiskName VARCHAR(4000)  NULL
						,dateMaterialization DATE  NULL
						,dueDate DATE  NULL
						,residualCost BIGINT  NULL
						,riskType INTEGER  NULL
						,status VARCHAR(4000)  NULL
						
						
						, PRIMARY KEY (
								IdRisk
							)
					);
			
			
			-- generateCreateTable riskregistertemplate
					CREATE TABLE riskregistertemplate(
						ActualMaterializationCost BIGINT  NULL
						,ActualMaterializationDelay INTEGER  NULL
						,Closed BOOLEAN  NULL
						,ContingencyActionsRequired VARCHAR(4000)  NULL
						,Description VARCHAR(4000)  NULL
						,IdRisk INTEGER AUTO_INCREMENT  NOT NULL
						,Impact INTEGER  NULL
						,Materialized BOOLEAN  NULL
						,MitigationActionsRequired VARCHAR(4000)  NULL
						,Owner VARCHAR(4000)  NULL
						,PlannedContingencyCost BIGINT  NULL
						,PlannedMitigationCost BIGINT  NULL
						,PotentialCost BIGINT  NULL
						,PotentialDelay INTEGER  NULL
						,Probability INTEGER  NULL
						,RiskCode VARCHAR(4000)  NULL
						,RiskDoc VARCHAR(4000)  NULL
						,RiskName VARCHAR(4000)  NULL
						,Risk_Trigger VARCHAR(4000)  NULL
						,finalComments VARCHAR(4000)  NULL
						,residualCost BIGINT  NULL
						,residualRisk VARCHAR(4000)  NULL
						,responseDescription VARCHAR(4000)  NULL
						,riskType INTEGER  NULL
						,status VARCHAR(4000)  NULL
						
						
						, PRIMARY KEY (
								IdRisk
							)
					);
			
			
			-- generateCreateTable security
					CREATE TABLE security(
						AutorizationLevel VARCHAR(4000)  NULL
						,IdSec INTEGER AUTO_INCREMENT  NOT NULL
						,Login VARCHAR(4000)  NULL
						,Password VARCHAR(4000)  NULL
						,attempts INTEGER  NULL
						,dateCreation DATE  NOT NULL
						,dateLapsed TIMESTAMP  NULL
						,dateLastAttempt TIMESTAMP  NULL
						
						
						, PRIMARY KEY (
								IdSec
							)
					);
			
			
			-- generateCreateTable seller
					CREATE TABLE seller(
						idSeller INTEGER AUTO_INCREMENT  NOT NULL
						,information VARCHAR(4000)  NULL
						,name VARCHAR(4000)  NULL
						,qualificationDate DATE  NULL
						,qualified BOOLEAN  NULL
						,selected BOOLEAN  NULL
						,singleSource BOOLEAN  NULL
						,soleSource BOOLEAN  NULL
						
						
						, PRIMARY KEY (
								idSeller
							)
					);
			
			
			-- generateCreateTable setting
					CREATE TABLE setting(
						idSetting INTEGER AUTO_INCREMENT  NOT NULL
						,name VARCHAR(4000)  NOT NULL
						,value VARCHAR(4000)  NULL
						
						
						, PRIMARY KEY (
								idSetting
							)
					);
			
			
			-- generateCreateTable skill
					CREATE TABLE skill(
						description VARCHAR(4000)  NULL
						,idSkill INTEGER AUTO_INCREMENT  NOT NULL
						,name VARCHAR(4000)  NULL
						
						
						, PRIMARY KEY (
								idSkill
							)
					);
			
			
			-- generateCreateTable skillsemployee
					CREATE TABLE skillsemployee(
						idSkillsEmployee INTEGER AUTO_INCREMENT  NOT NULL
						
						
						, PRIMARY KEY (
								idSkillsEmployee
							)
					);
			
			
			-- generateCreateTable stagegate
					CREATE TABLE stagegate(
						description VARCHAR(4000)  NULL
						,idStageGate INTEGER AUTO_INCREMENT  NOT NULL
						,name VARCHAR(4000)  NOT NULL
						
						
						, PRIMARY KEY (
								idStageGate
							)
					);
			
			
			-- generateCreateTable stakeholder
					CREATE TABLE stakeholder(
						Expectations VARCHAR(4000)  NULL
						,IdStakeholder INTEGER AUTO_INCREMENT  NOT NULL
						,Influence VARCHAR(4000)  NULL
						,MgtStrategy VARCHAR(4000)  NULL
						,ProjectRole VARCHAR(4000)  NULL
						,Requirements VARCHAR(4000)  NULL
						,Type VARCHAR(4000)  NULL
						,comments VARCHAR(4000)  NULL
						,contactName VARCHAR(4000)  NULL
						,department VARCHAR(4000)  NULL
						,orderToShow INTEGER  NULL
						
						
						, PRIMARY KEY (
								IdStakeholder
							)
					);
			
			
			-- generateCreateTable stakeholderclassification
					CREATE TABLE stakeholderclassification(
						description VARCHAR(4000)  NULL
						,idStakeholderClassification INTEGER AUTO_INCREMENT  NOT NULL
						,name VARCHAR(4000)  NULL
						
						
						, PRIMARY KEY (
								idStakeholderClassification
							)
					);
			
			
			-- generateCreateTable teammember
					CREATE TABLE teammember(
						commentsPM VARCHAR(4000)  NULL
						,commentsRM VARCHAR(4000)  NULL
						,dateApproved DATE  NULL
						,dateIn DATE  NULL
						,dateOut DATE  NULL
						,expenses INTEGER  NULL
						,fte INTEGER  NULL
						,hours INTEGER  NULL
						,idTeamMember INTEGER AUTO_INCREMENT  NOT NULL
						,sellRate BIGINT  NULL
						,status VARCHAR(4000)  NULL
						
						
						, PRIMARY KEY (
								idTeamMember
							)
					);
			
			
			-- generateCreateTable technology
					CREATE TABLE technology(
						description VARCHAR(4000)  NOT NULL
						,idTechnology INTEGER AUTO_INCREMENT  NOT NULL
						,name VARCHAR(4000)  NOT NULL
						
						
						, PRIMARY KEY (
								idTechnology
							)
					);
			
			
			-- generateCreateTable timeline
					CREATE TABLE timeline(
						description VARCHAR(4000)  NULL
						,idTimeline INTEGER AUTO_INCREMENT  NOT NULL
						,importance VARCHAR(4000)  NULL
						,name VARCHAR(4000)  NOT NULL
						,timelineDate DATE  NOT NULL
						
						
						, PRIMARY KEY (
								idTimeline
							)
					);
			
			
			-- generateCreateTable timelinetype
					CREATE TABLE timelinetype(
						description VARCHAR(4000)  NULL
						,idTimelineType INTEGER AUTO_INCREMENT  NOT NULL
						,name VARCHAR(4000)  NOT NULL
						
						
						, PRIMARY KEY (
								idTimelineType
							)
					);
			
			
			-- generateCreateTable timesheet
					CREATE TABLE timesheet(
						endDate DATE  NOT NULL
						,hoursDay1 BIGINT  NULL
						,hoursDay2 BIGINT  NULL
						,hoursDay3 BIGINT  NULL
						,hoursDay4 BIGINT  NULL
						,hoursDay5 BIGINT  NULL
						,hoursDay6 BIGINT  NULL
						,hoursDay7 BIGINT  NULL
						,idTimeSheet INTEGER AUTO_INCREMENT  NOT NULL
						,initDate DATE  NOT NULL
						,status VARCHAR(4000)  NULL
						,suggestReject BOOLEAN  NULL
						,suggestRejectComment VARCHAR(4000)  NULL
						
						
						, PRIMARY KEY (
								idTimeSheet
							)
					);
			
			
			-- generateCreateTable timesheetcomment
					CREATE TABLE timesheetcomment(
						actualStatus VARCHAR(4000)  NOT NULL
						,commentDate TIMESTAMP  NOT NULL
						,contentComment VARCHAR(4000)  NULL
						,idTemesheetComment INTEGER AUTO_INCREMENT  NOT NULL
						,previousStatus VARCHAR(4000)  NOT NULL
						
						
						, PRIMARY KEY (
								idTemesheetComment
							)
					);
			
			
			-- generateCreateTable wbsnode
					CREATE TABLE wbsnode(
						Budget BIGINT  NULL
						,Code VARCHAR(4000)  NULL
						,Description VARCHAR(4000)  NULL
						,IdWBSNode INTEGER AUTO_INCREMENT  NOT NULL
						,IsControlAccount BOOLEAN  NULL
						,Name VARCHAR(4000)  NULL
						
						
						, PRIMARY KEY (
								IdWBSNode
							)
					);
			
			
			-- generateCreateTable wbstemplate
					CREATE TABLE wbstemplate(
						Code VARCHAR(4000)  NULL
						,Description VARCHAR(4000)  NULL
						,IdCompany INTEGER  NOT NULL
						,IdWBSNode INTEGER AUTO_INCREMENT  NOT NULL
						,IsControlAccount BOOLEAN  NULL
						,Name VARCHAR(4000)  NULL
						,Parent INTEGER  NULL
						,Root INTEGER  NULL
						
						
						, PRIMARY KEY (
								IdWBSNode
							)
					);
			
			
			-- generateCreateTable workingcosts
					CREATE TABLE workingcosts(
						effort INTEGER  NULL
						,idWorkingCosts INTEGER AUTO_INCREMENT  NOT NULL
						,q1 INTEGER  NULL
						,q2 INTEGER  NULL
						,q3 INTEGER  NULL
						,q4 INTEGER  NULL
						,rate BIGINT  NULL
						,realEffort INTEGER  NULL
						,resourceDepartment VARCHAR(4000)  NULL
						,resourceName VARCHAR(4000)  NULL
						,workCost BIGINT  NULL
						
						
						, PRIMARY KEY (
								idWorkingCosts
							)
					);
			
			
-- ## Begin of Enumerations

-- END PACKAGE openppm -----------------------------------------------------------------------
-- BEGIN PACKAGE openppm -----------------------------------------------------------------------
-- ## Begin of Subclasses definitions
-- END PACKAGE openppm -----------------------------------------------------------------------

-- BEGIN PACKAGE openppm -----------------------------------------------------------------------
-- ## Begin of associations definitions
			-- serializeAssociations actionlesson
			-- ass name: ACTLESSON_LESLEARNED_FK
					ALTER TABLE actionlesson -- 1_1
						
						ADD COLUMN	
							idLearnedLesson INTEGER NOT NULL 
						;
			
			-- serializeAssociations activityseller
			-- ass name: ACTIVITYSELLER_SELLER_FK
					ALTER TABLE activityseller -- 1_1
						
						ADD COLUMN	
							idSeller INTEGER NOT NULL 
						;
			-- ass name: ACTIVITYSELLER_ACTIVITY_FK
					ALTER TABLE activityseller -- 1_1
						
						ADD COLUMN	
							idActivity INTEGER NOT NULL 
						;
			-- ass name: ACTIVITYSELLER_PROJECT_FK
					ALTER TABLE activityseller -- 1_1
						
						ADD COLUMN	
							idProjectAssociate INTEGER NULL 
						;
			
			-- serializeAssociations assumptionreassessmentlog
			-- ass name: ASSREALOG_ASSREG_FK
					ALTER TABLE assumptionreassessmentlog -- 1_1
						
						ADD COLUMN	
							IdAssumption INTEGER NULL 
						;
			
			-- serializeAssociations assumptionregister
			-- ass name: ASSUMPTIONREGISTER_PROJECT_FK
					ALTER TABLE assumptionregister -- 1_1
						
						ADD COLUMN	
							IdProject INTEGER NULL 
						;
			
			-- serializeAssociations auditdata
			
			-- serializeAssociations bscdimension
			-- ass name: BSCDIM_COMPANY_FK
					ALTER TABLE bscdimension -- 1_1
						
						ADD COLUMN	
							idCompany INTEGER NOT NULL 
						;
			
			-- serializeAssociations budgetaccounts
			-- ass name: BUDGETACCOUNTS_COMPANY_FK
					ALTER TABLE budgetaccounts -- 1_1
						
						ADD COLUMN	
							idCompany INTEGER NULL 
						;
			
			-- serializeAssociations businessdriver
			
			-- serializeAssociations businessdriverset
			
			-- serializeAssociations calendarbase
			-- ass name: CALENDARBASE_COMPANY_FK
					ALTER TABLE calendarbase -- 1_1
						
						ADD COLUMN	
							idCompany INTEGER NULL 
						;
			
			-- serializeAssociations calendarbaseexceptions
			-- ass name: CALBASEEXCEP_CALBASE_FK
					ALTER TABLE calendarbaseexceptions -- 1_1
						
						ADD COLUMN	
							IdCalendarBase INTEGER NULL 
						;
			
			-- serializeAssociations category
			-- ass name: CATEGORY_COMPANY_FK
					ALTER TABLE category -- 1_1
						
						ADD COLUMN	
							idCompany INTEGER NULL 
						;
			
			-- serializeAssociations changecontrol
			-- ass name: CHANGECONTROL_CHANGETYPE_FK
					ALTER TABLE changecontrol -- 1_1
						
						ADD COLUMN	
							IdChangeType INTEGER NULL 
						;
			-- ass name: CHANGECONTROL_PROJECT_FK
					ALTER TABLE changecontrol -- 1_1
						
						ADD COLUMN	
							IdProject INTEGER NULL 
						;
			-- ass name: CHANGECONTROL_WBSNODE_FK
					ALTER TABLE changecontrol -- 1_1
						
						ADD COLUMN	
							IdWBSNode INTEGER NULL 
						;
			
			-- serializeAssociations changerequestwbsnode
			-- ass name: CHANGEREQWBSNODE_WBSNODE_FK
					ALTER TABLE changerequestwbsnode -- 1_1
						
						ADD COLUMN	
							idWBSNode INTEGER NOT NULL 
						;
			-- ass name: CHANGEREQWBSNODE_CHANGE_FK
					ALTER TABLE changerequestwbsnode -- 1_1
						
						ADD COLUMN	
							idChange INTEGER NOT NULL 
						;
			
			-- serializeAssociations changetype
			-- ass name: CHANGETYPE_COMPANY_FK
					ALTER TABLE changetype -- 1_1
						
						ADD COLUMN	
							idCompany INTEGER NULL 
						;
			
			-- serializeAssociations chargescosts
			-- ass name: CHARGESCOSTS_PROJECT_FK
					ALTER TABLE chargescosts -- 1_1
						
						ADD COLUMN	
							idProject INTEGER NOT NULL 
						;
			-- ass name: CHARGESCOSTS_CURRENCY_FK
					ALTER TABLE chargescosts -- 1_1
						
						ADD COLUMN	
							idCurrency INTEGER NULL 
						;
			
			-- serializeAssociations checklist
			-- ass name: CHECKLIST_WBSNODE_FK
					ALTER TABLE checklist -- 1_1
						
						ADD COLUMN	
							idWbsnode INTEGER NOT NULL 
						;
			
			-- serializeAssociations classificationlevel
			-- ass name: CLASSIFILEVEL_COMPANY_FK
					ALTER TABLE classificationlevel -- 1_1
						
						ADD COLUMN	
							idCompany INTEGER NOT NULL 
						;
			
			-- serializeAssociations closurecheck
			-- ass name: CLOSURECHECK_COMPANY_FK
					ALTER TABLE closurecheck -- 1_1
						
						ADD COLUMN	
							idCompany INTEGER NOT NULL 
						;
			
			-- serializeAssociations closurecheckproject
			-- ass name: CLOSCHECKPROJ_DOCUMENT_FK
					ALTER TABLE closurecheckproject -- 1_1
						
						ADD COLUMN	
							idDocumentProject INTEGER NULL 
						;
			-- ass name: CLOSCHECKPROJ_CLOSURECHECK_FK
					ALTER TABLE closurecheckproject -- 1_1
						
						ADD COLUMN	
							idClosureCheck INTEGER NOT NULL 
						;
			-- ass name: CLOSCHECKPROJ_PROJECT_FK
					ALTER TABLE closurecheckproject -- 1_1
						
						ADD COLUMN	
							idProject INTEGER NOT NULL 
						;
			
			-- serializeAssociations company
			
			-- serializeAssociations companyfile
			-- ass name: COMPANYFILE_COMPANY_FK
					ALTER TABLE companyfile -- 1_1
						
						ADD COLUMN	
							idCompany INTEGER NOT NULL 
						;
			-- ass name: COMPANYFILE_CONTENTFILE_FK
					ALTER TABLE companyfile -- 1_1
						
						ADD COLUMN	
							idContentFile INTEGER NOT NULL 
						;
			
			-- serializeAssociations configuration
			-- ass name: CONFIGURARION_CONTACT_FK
					ALTER TABLE configuration -- 1_1
						
						ADD COLUMN	
							idContact INTEGER NOT NULL 
						;
			
			-- serializeAssociations contact
			-- ass name: CONTACT_COMPANY_FK
					ALTER TABLE contact -- 1_1
						
						ADD COLUMN	
							IdCompany INTEGER NULL 
						;
			
			-- serializeAssociations contactnotification
			-- ass name: CONTACTNOTIFICATION_NOTI_FK
					ALTER TABLE contactnotification -- 1_1
						
						ADD COLUMN	
							idNotification INTEGER NOT NULL 
						;
			-- ass name: CONTACTNOTIFICATION_CONTACT_FK
					ALTER TABLE contactnotification -- 1_1
						
						ADD COLUMN	
							idContact INTEGER NULL 
						;
			
			-- serializeAssociations contentfile
			
			-- serializeAssociations contracttype
			-- ass name: CONTRACTTYPE_COMPANY_FK
					ALTER TABLE contracttype -- 1_1
						
						ADD COLUMN	
							idCompany INTEGER NULL 
						;
			
			-- serializeAssociations currency
			-- ass name: CURRENCY_COMPANY_FK
					ALTER TABLE currency -- 1_1
						
						ADD COLUMN	
							idCompany INTEGER NOT NULL 
						;
			
			-- serializeAssociations customer
			-- ass name: CUSTOMER_COMPANY_FK
					ALTER TABLE customer -- 1_1
						
						ADD COLUMN	
							IdCompany INTEGER NULL 
						;
			-- ass name: CUSTOMER_CUSTOMERTYPE_FK
					ALTER TABLE customer -- 1_1
						
						ADD COLUMN	
							idCustomerType INTEGER NULL 
						;
			
			-- serializeAssociations customertype
			-- ass name: CUSTOMERTYPE_COMPANY_FK
					ALTER TABLE customertype -- 1_1
						
						ADD COLUMN	
							idCompany INTEGER NOT NULL 
						;
			
			-- serializeAssociations directcosts
			-- ass name: DIRECTCOSTS_PROJECTCOSTS_FK
					ALTER TABLE directcosts -- 1_1
						
						ADD COLUMN	
							IdProjectCosts INTEGER NULL 
						;
			-- ass name: DIRECTCOSTS_BUDGETACCOUNTS_FK
					ALTER TABLE directcosts -- 1_1
						
						ADD COLUMN	
							IdBudgetAccount INTEGER NULL 
						;
			
			-- serializeAssociations documentation
			-- ass name: DOCUMENTATION_COMPANY_FK
					ALTER TABLE documentation -- 1_1
						
						ADD COLUMN	
							idCompany INTEGER NOT NULL 
						;
			-- ass name: DOCUMENTATION_CONTENTFILE_FK
					ALTER TABLE documentation -- 1_1
						
						ADD COLUMN	
							idContentFile INTEGER NULL 
						;
			
			-- serializeAssociations documentproject
			-- ass name: DOCUMENTPROJECT_PROJECT_FK
					ALTER TABLE documentproject -- 1_1
						
						ADD COLUMN	
							idProject INTEGER NOT NULL 
						;
			
			-- serializeAssociations employee
			-- ass name: EMPLOYEE_CALENDARBASE_FK
					ALTER TABLE employee -- 1_1
						
						ADD COLUMN	
							idCalendarBase INTEGER NULL 
						;
			-- ass name: EMPLOYEE_PERFORG_FK
					ALTER TABLE employee -- 1_1
						
						ADD COLUMN	
							idPerfOrg INTEGER NULL 
						;
			-- ass name: EMPLOYEE_CONTACT_FK
					ALTER TABLE employee -- 1_1
						
						ADD COLUMN	
							idContact INTEGER NULL 
						;
			-- ass name: EMPLOYEE_SELLER_FK
					ALTER TABLE employee -- 1_1
						
						ADD COLUMN	
							idSeller INTEGER NULL 
						;
			-- ass name: EMPLOYEE_RESPROFILES_FK
					ALTER TABLE employee -- 1_1
						
						ADD COLUMN	
							idProfile INTEGER NULL 
						;
			-- ass name: EMPLOYEE_RESOURCEPOOL_FK
					ALTER TABLE employee -- 1_1
						
						ADD COLUMN	
							idResourcePool INTEGER NULL 
						;
			
			-- serializeAssociations employeeoperationdate
			-- ass name: EMPLOPEDATE_EMPLOYEE_FK
					ALTER TABLE employeeoperationdate -- 1_1
						
						ADD COLUMN	
							idEmployee INTEGER NOT NULL 
						;
			-- ass name: EMPLOPEDATE_OPERATION_FK
					ALTER TABLE employeeoperationdate -- 1_1
						
						ADD COLUMN	
							idOperation INTEGER NOT NULL 
						;
			
			-- serializeAssociations executivereport
			-- ass name: EXECUTIVEREPORT_PROJECT_FK
					ALTER TABLE executivereport -- 1_1
						
						ADD COLUMN	
							idProject INTEGER NOT NULL 
						;
			
			-- serializeAssociations expenseaccounts
			-- ass name: EXPENSEACCOUNTS_COMPANY_FK
					ALTER TABLE expenseaccounts -- 1_1
						
						ADD COLUMN	
							idCompany INTEGER NULL 
						;
			
			-- serializeAssociations expenses
			-- ass name: EXPENSES_BUDGETACCOUNTS_FK
					ALTER TABLE expenses -- 1_1
						
						ADD COLUMN	
							IdBudgetAccount INTEGER NULL 
						;
			-- ass name: EXPENSES_PROJECTCOSTS_FK
					ALTER TABLE expenses -- 1_1
						
						ADD COLUMN	
							IdProjectCosts INTEGER NULL 
						;
			
			-- serializeAssociations expensesheet
			-- ass name: EXPENSESHEET_EXPACCOUNTS_FK
					ALTER TABLE expensesheet -- 1_1
						
						ADD COLUMN	
							idExpenseAccount INTEGER NULL 
						;
			-- ass name: EXPENSESHEET_EXPENSE_FK
					ALTER TABLE expensesheet -- 1_1
						
						ADD COLUMN	
							idExpense INTEGER NULL 
						;
			-- ass name: EXPENSESHEET_EMPLOYEE_FK
					ALTER TABLE expensesheet -- 1_1
						
						ADD COLUMN	
							idEmployee INTEGER NOT NULL 
						;
			-- ass name: EXPENSESHEET_OPERATION_FK
					ALTER TABLE expensesheet -- 1_1
						
						ADD COLUMN	
							idOperation INTEGER NULL 
						;
			-- ass name: EXPENSESHEET_PROJECT_FK
					ALTER TABLE expensesheet -- 1_1
						
						ADD COLUMN	
							idProject INTEGER NULL 
						;
			
			-- serializeAssociations expensesheetcomment
			-- ass name: EXPSHEETCOMMENT_EXPSHEET_FK
					ALTER TABLE expensesheetcomment -- 1_1
						
						ADD COLUMN	
							idExpenseSheet INTEGER NOT NULL 
						;
			
			-- serializeAssociations fundingsource
			-- ass name: FUNDINGSOURCE_COMPANY_FK
					ALTER TABLE fundingsource -- 1_1
						
						ADD COLUMN	
							idCompany INTEGER NOT NULL 
						;
			
			-- serializeAssociations geography
			-- ass name: GEOGRAPHY_COMPANY_FK
					ALTER TABLE geography -- 1_1
						
						ADD COLUMN	
							idCompany INTEGER NULL 
						;
			
			-- serializeAssociations historickpi
			-- ass name: HISTORICKPI_PROJECTKPI_FK
					ALTER TABLE historickpi -- 1_1
						
						ADD COLUMN	
							idProjectKpi INTEGER NOT NULL 
						;
			-- ass name: HISTORICKPI_EMPLOYEE_FK
					ALTER TABLE historickpi -- 1_1
						
						ADD COLUMN	
							idEmployee INTEGER NOT NULL 
						;
			
			-- serializeAssociations historicrisk
			
			-- serializeAssociations incomes
			-- ass name: INCOMES_PROJECT_FK
					ALTER TABLE incomes -- 1_1
						
						ADD COLUMN	
							idProject INTEGER NOT NULL 
						;
			
			-- serializeAssociations issuelog
			-- ass name: ISSUELOG_PROJECT_FK
					ALTER TABLE issuelog -- 1_1
						
						ADD COLUMN	
							IdProject INTEGER NULL 
						;
			
			-- serializeAssociations iwo
			-- ass name: IWO_PROJECTCOSTS_FK
					ALTER TABLE iwo -- 1_1
						
						ADD COLUMN	
							IdProjectCosts INTEGER NULL 
						;
			
			-- serializeAssociations jobcategory
			-- ass name: JOBCATEGORY_COMPANY_FK
					ALTER TABLE jobcategory -- 1_1
						
						ADD COLUMN	
							idCompany INTEGER NOT NULL 
						;
			
			-- serializeAssociations jobcatemployee
			-- ass name: JOBCATEMPLOYEE_JOBCATEGORY_FK
					ALTER TABLE jobcatemployee -- 1_1
						
						ADD COLUMN	
							idJobCategory INTEGER NOT NULL 
						;
			-- ass name: JOBCATEMPLOYEE_EMPLOYEE_FK
					ALTER TABLE jobcatemployee -- 1_1
						
						ADD COLUMN	
							idEmployee INTEGER NOT NULL 
						;
			
			-- serializeAssociations knowledgearea
			-- ass name: KNOWLEDGEAREA_COMPANY_FK
					ALTER TABLE knowledgearea -- 1_1
						
						ADD COLUMN	
							idCompany INTEGER NOT NULL 
						;
			
			-- serializeAssociations label
			-- ass name: LABEL_COMPANY_FK
					ALTER TABLE label -- 1_1
						
						ADD COLUMN	
							idCompany INTEGER NOT NULL 
						;
			
			-- serializeAssociations learnedlesson
			-- ass name: LEARNEDLESSON_CONTACT_FK
					ALTER TABLE learnedlesson -- 1_1
						
						ADD COLUMN	
							idContact INTEGER NULL 
						;
			-- ass name: LEARNEDLESSON_CUSTOMER_FK
					ALTER TABLE learnedlesson -- 1_1
						
						ADD COLUMN	
							idCustomer INTEGER NULL 
						;
			-- ass name: LEARNEDLESSON_PROGRAM_FK
					ALTER TABLE learnedlesson -- 1_1
						
						ADD COLUMN	
							idProgram INTEGER NULL 
						;
			-- ass name: LEARNEDLESSON_FUNDING_FK
					ALTER TABLE learnedlesson -- 1_1
						
						ADD COLUMN	
							idFundingSource INTEGER NULL 
						;
			-- ass name: LEARNEDLESSON_KNOWLEDGEAREA_FK
					ALTER TABLE learnedlesson -- 1_1
						
						ADD COLUMN	
							idKnowledgeArea INTEGER NULL 
						;
			-- ass name: LEARNEDLESSON_COMPANY_FK
					ALTER TABLE learnedlesson -- 1_1
						
						ADD COLUMN	
							idCompany INTEGER NOT NULL 
						;
			-- ass name: LEARNEDLESSON_CONTRACT_FK
					ALTER TABLE learnedlesson -- 1_1
						
						ADD COLUMN	
							idContractType INTEGER NULL 
						;
			-- ass name: LEARNEDLESSON_SELLER_FK
					ALTER TABLE learnedlesson -- 1_1
						
						ADD COLUMN	
							idSeller INTEGER NULL 
						;
			-- ass name: LEARNEDLESSON_PROFILE_FK
					ALTER TABLE learnedlesson -- 1_1
						
						ADD COLUMN	
							idProfile INTEGER NULL 
						;
			-- ass name: LEARNEDLESSON_GEOGRAPHIC_FK
					ALTER TABLE learnedlesson -- 1_1
						
						ADD COLUMN	
							idGeography INTEGER NULL 
						;
			
			-- serializeAssociations learnedlessonlink
			-- ass name: USEDLESSON_PROJECT_FK
					ALTER TABLE learnedlessonlink -- 1_1
						
						ADD COLUMN	
							idProject INTEGER NOT NULL 
						;
			-- ass name: USEDLESSON_LESSON_FK
					ALTER TABLE learnedlessonlink -- 1_1
						
						ADD COLUMN	
							idLearnedLesson INTEGER NULL 
						;
			
			-- serializeAssociations learnedlessonproject
			-- ass name: PROGENLESSON_PROJECT_FK
					ALTER TABLE learnedlessonproject -- 1_1
						
						ADD COLUMN	
							idProject INTEGER NOT NULL 
						;
			-- ass name: PROGENLESSON_LESSON_FK
					ALTER TABLE learnedlessonproject -- 1_1
						
						ADD COLUMN	
							idLearnedLesson INTEGER NOT NULL 
						;
			
			-- serializeAssociations logprojectstatus
			-- ass name: LOGPROJECTSTATUS_EMPLOYEE_FK
					ALTER TABLE logprojectstatus -- 1_1
						
						ADD COLUMN	
							idEmployee INTEGER NOT NULL 
						;
			-- ass name: LOGPROJECTSTATUS_PROJECT_FK
					ALTER TABLE logprojectstatus -- 1_1
						
						ADD COLUMN	
							idProject INTEGER NOT NULL 
						;
			
			-- serializeAssociations managepool
			-- ass name: idResourceManager
					ALTER TABLE managepool -- 1_1
						
						ADD COLUMN	
							idResourceManager INTEGER NOT NULL 
						;
			-- ass name: idResourcePool
					ALTER TABLE managepool -- 1_1
						
						ADD COLUMN	
							idResourcePool INTEGER NOT NULL 
						;
			
			-- serializeAssociations market
			
			-- serializeAssociations metrickpi
			-- ass name: METRICKPI_COMPANY_FK
					ALTER TABLE metrickpi -- 1_1
						
						ADD COLUMN	
							idCompany INTEGER NULL 
						;
			-- ass name: METRICKPI_BSCDIMENSION_FK
					ALTER TABLE metrickpi -- 1_1
						
						ADD COLUMN	
							idBscDimension INTEGER NULL 
						;
			
			-- serializeAssociations milestonecategory
			-- ass name: MILESTONECATEGORY_COMPANY_FK
					ALTER TABLE milestonecategory -- 1_1
						
						ADD COLUMN	
							idCompany INTEGER NOT NULL 
						;
			
			-- serializeAssociations milestones
			-- ass name: MILESTONE_ACTIVITY_FK
					ALTER TABLE milestones -- 1_1
						
						ADD COLUMN	
							IdActivity INTEGER NULL 
						;
			-- ass name: MILESTONE_MILESTONETYPE_FK
					ALTER TABLE milestones -- 1_1
						
						ADD COLUMN	
							idMilestoneType INTEGER NULL 
						;
			-- ass name: MILESTONE_MILESTONECATEGORY_FK
					ALTER TABLE milestones -- 1_1
						
						ADD COLUMN	
							idMilestoneCategory INTEGER NULL 
						;
			-- ass name: MILESTONE_PROJECT_FK
					ALTER TABLE milestones -- 1_1
						
						ADD COLUMN	
							IdProject INTEGER NOT NULL 
						;
			
			-- serializeAssociations milestonetype
			-- ass name: MILESTONETYPE_COMPANY_FK
					ALTER TABLE milestonetype -- 1_1
						
						ADD COLUMN	
							idCompany INTEGER NOT NULL 
						;
			
			-- serializeAssociations notification
			
			-- serializeAssociations notificationemployee
			-- ass name: NOTIFEMPLOYEE_EMPLOYEE_FK
					ALTER TABLE notificationemployee -- 1_1
						
						ADD COLUMN	
							idEmployee INTEGER NOT NULL 
						;
			-- ass name: NOTIFEMPLOYEE_NOTIFTYPE_FK
					ALTER TABLE notificationemployee -- 1_1
						
						ADD COLUMN	
							idNotificationType INTEGER NOT NULL 
						;
			
			-- serializeAssociations notificationprofile
			-- ass name: NOTIFPROFILE_NOTIFTYPE_FK
					ALTER TABLE notificationprofile -- 1_1
						
						ADD COLUMN	
							idNotificationType INTEGER NOT NULL 
						;
			-- ass name: NOTIFPROFILE_RESPROFILES_FK
					ALTER TABLE notificationprofile -- 1_1
						
						ADD COLUMN	
							idProfile INTEGER NOT NULL 
						;
			
			-- serializeAssociations notificationproject
			-- ass name: NOTIFPROJECT_PROJECT_FK
					ALTER TABLE notificationproject -- 1_1
						
						ADD COLUMN	
							idProject INTEGER NOT NULL 
						;
			-- ass name: NOTIFPROJECT_NOTIFTYPE_FK
					ALTER TABLE notificationproject -- 1_1
						
						ADD COLUMN	
							idNotificationType INTEGER NOT NULL 
						;
			
			-- serializeAssociations notificationtype
			-- ass name: NOTIFICATIONTYPE_COMPANY_FK
					ALTER TABLE notificationtype -- 1_1
						
						ADD COLUMN	
							idCompany INTEGER NOT NULL 
						;
			
			-- serializeAssociations operation
			-- ass name: OPERATION_OPERATIONACCOUNT_FK
					ALTER TABLE operation -- 1_1
						
						ADD COLUMN	
							IdOpAccount INTEGER NULL 
						;
			
			-- serializeAssociations operationaccount
			-- ass name: OPERATIONACCOUNT_COMPANY_FK
					ALTER TABLE operationaccount -- 1_1
						
						ADD COLUMN	
							idCompany INTEGER NULL 
						;
			
			-- serializeAssociations performingorg
			-- ass name: PERFORMINGORG_COMPANY_FK
					ALTER TABLE performingorg -- 1_1
						
						ADD COLUMN	
							IdCompany INTEGER NULL 
						;
			-- ass name: PERFORMINGORG_EMPLOYEE_FK
					ALTER TABLE performingorg -- 1_1
						
						ADD COLUMN	
							Manager INTEGER NULL 
						;
			
			-- serializeAssociations plugin
			-- ass name: PLUGIN_COMPANY_FK
					ALTER TABLE plugin -- 1_1
						
						ADD COLUMN	
							idCompany INTEGER NOT NULL 
						;
			
			-- serializeAssociations pluginconfiguration
			-- ass name: PLUGINCONF_PLUGIN_FK
					ALTER TABLE pluginconfiguration -- 1_1
						
						ADD COLUMN	
							idPlugin INTEGER NOT NULL 
						;
			
			-- serializeAssociations pluginfile
			-- ass name: PLUGINFILE_PLUGIN_FK
					ALTER TABLE pluginfile -- 1_1
						
						ADD COLUMN	
							idPlugin INTEGER NOT NULL 
						;
			-- ass name: PLUGINFILE_CONTENTFILE_FK
					ALTER TABLE pluginfile -- 1_1
						
						ADD COLUMN	
							idContentFile INTEGER NOT NULL 
						;
			
			-- serializeAssociations problemcheck
			-- ass name: PROBLEMCHECK_COMPANY_FK
					ALTER TABLE problemcheck -- 1_1
						
						ADD COLUMN	
							idCompany INTEGER NOT NULL 
						;
			
			-- serializeAssociations problemcheckproject
			-- ass name: PROBLCHECKPROJ_PROJECT_FK
					ALTER TABLE problemcheckproject -- 1_1
						
						ADD COLUMN	
							idProject INTEGER NOT NULL 
						;
			-- ass name: PROBLCHECKPROJ_PROBLEMCHECK_FK
					ALTER TABLE problemcheckproject -- 1_1
						
						ADD COLUMN	
							idProblemCheck INTEGER NOT NULL 
						;
			
			-- serializeAssociations procurementpayments
			-- ass name: PROCPAYMENTS_PROJECT_FK
					ALTER TABLE procurementpayments -- 1_1
						
						ADD COLUMN	
							idProject INTEGER NOT NULL 
						;
			-- ass name: PROCPAYMENTS_SELLER_FK
					ALTER TABLE procurementpayments -- 1_1
						
						ADD COLUMN	
							idSeller INTEGER NOT NULL 
						;
			
			-- serializeAssociations profile
			-- ass name: PROFILE_COMPANY_FK
					ALTER TABLE profile -- 1_1
						
						ADD COLUMN	
							idCompany INTEGER NOT NULL 
						;
			
			-- serializeAssociations program
			-- ass name: PROGRAM_PERFORMINGORG_FK
					ALTER TABLE program -- 1_1
						
						ADD COLUMN	
							idPerfOrg INTEGER NULL 
						;
			-- ass name: PROGRAM_PMEMPLOYEE_FK
					ALTER TABLE program -- 1_1
						
						ADD COLUMN	
							ProgramManager INTEGER NULL 
						;
			
			-- serializeAssociations project
			-- ass name: PROJECT_CONTRACTTYPE_FK
					ALTER TABLE project -- 1_1
						
						ADD COLUMN	
							IdContractType INTEGER NULL 
						;
			-- ass name: PROJECT_CLASSIFICATIONLEVEL_FK
					ALTER TABLE project -- 1_1
						
						ADD COLUMN	
							idClassificationlevel INTEGER NULL 
						;
			-- ass name: PROJECT_PROJECTCALENDAR_FK
					ALTER TABLE project -- 1_1
						
						ADD COLUMN	
							idProjectCalendar INTEGER NULL 
						;
			-- ass name: PROJECT_IMEMPLOYEE_FK
					ALTER TABLE project -- 1_1
						
						ADD COLUMN	
							investmentManager INTEGER NULL 
						;
			-- ass name: PROJECT_CATEGORY_FK
					ALTER TABLE project -- 1_1
						
						ADD COLUMN	
							idCategory INTEGER NULL 
						;
			-- ass name: PROJECT_STAGEGATE_FK
					ALTER TABLE project -- 1_1
						
						ADD COLUMN	
							idStageGate INTEGER NULL 
						;
			-- ass name: PROJECT_FMEMPLOYEE_FK
					ALTER TABLE project -- 1_1
						
						ADD COLUMN	
							functionalManager INTEGER NULL 
						;
			-- ass name: PROJECT_GEOGRAPHY_FK
					ALTER TABLE project -- 1_1
						
						ADD COLUMN	
							idGeography INTEGER NULL 
						;
			-- ass name: PROJECT_PROGRAM_FK
					ALTER TABLE project -- 1_1
						
						ADD COLUMN	
							idProgram INTEGER NULL 
						;
			-- ass name: PROJECT_SPEMPLOYEE_FK
					ALTER TABLE project -- 1_1
						
						ADD COLUMN	
							sponsor INTEGER NULL 
						;
			-- ass name: PROJECT_PERFORMINGORG_FK
					ALTER TABLE project -- 1_1
						
						ADD COLUMN	
							idPerfOrg INTEGER NULL 
						;
			-- ass name: PROJECT_PMEMPLOYEE_FK
					ALTER TABLE project -- 1_1
						
						ADD COLUMN	
							projectManager INTEGER NULL 
						;
			-- ass name: PROJECT_CUSTOMER_FK
					ALTER TABLE project -- 1_1
						
						ADD COLUMN	
							idCustomer INTEGER NULL 
						;
			
			-- serializeAssociations projectactivity
			-- ass name: PROJECTACTIVITY_PROJECT_FK
					ALTER TABLE projectactivity -- 1_1
						
						ADD COLUMN	
							idProject INTEGER NOT NULL 
						;
			-- ass name: PROJECTACTIVITY_WBSNODE_FK
					ALTER TABLE projectactivity -- 1_1
						
						ADD COLUMN	
							WorkPackage INTEGER NOT NULL 
						;
			
			-- serializeAssociations projectassociation
			-- ass name: PROJSSOCIATION_DEPPROJECT_FK
					ALTER TABLE projectassociation -- 1_1
						
						ADD COLUMN	
							dependent INTEGER NOT NULL 
						;
			-- ass name: PROJSSOCIATION_LEADPROJECT_FK
					ALTER TABLE projectassociation -- 1_1
						
						ADD COLUMN	
							lead INTEGER NOT NULL 
						;
			
			-- serializeAssociations projectcalendar
			-- ass name: PROJCALENDAR_CALENDARBASE_FK
					ALTER TABLE projectcalendar -- 1_1
						
						ADD COLUMN	
							idCalendarBase INTEGER NULL 
						;
			
			-- serializeAssociations projectcalendarexceptions
			-- ass name: PROJCALEXCEPTIONS_PROJCAL_FK
					ALTER TABLE projectcalendarexceptions -- 1_1
						
						ADD COLUMN	
							IdProjectCalendar INTEGER NULL 
						;
			
			-- serializeAssociations projectcharter
			-- ass name: PROJECTCHARTER_PROJECT_FK
					ALTER TABLE projectcharter -- 1_1
						
						ADD COLUMN	
							IdProject INTEGER NOT NULL 
						;
			
			-- serializeAssociations projectclosure
			-- ass name: PROJECTCLOSURE_PROJECT_FK
					ALTER TABLE projectclosure -- 1_1
						
						ADD COLUMN	
							idProject INTEGER NOT NULL 
						;
			
			-- serializeAssociations projectcosts
			-- ass name: PROJECTCOSTS_PROJECT_FK
					ALTER TABLE projectcosts -- 1_1
						
						ADD COLUMN	
							IdProject INTEGER NULL 
						;
			
			-- serializeAssociations projectdata
			-- ass name: projectdata_ibfk_1
					ALTER TABLE projectdata -- 1_1
						
						ADD COLUMN	
							idProject INTEGER NOT NULL 
						;
			
			-- serializeAssociations projectfollowup
			-- ass name: PROJECTFOLLOWUP_PROJECT_FK
					ALTER TABLE projectfollowup -- 1_1
						
						ADD COLUMN	
							IdProject INTEGER NULL 
						;
			
			-- serializeAssociations projectfundingsource
			-- ass name: PROJFUNDSOURC_PROJECT_FK
					ALTER TABLE projectfundingsource -- 1_1
						
						ADD COLUMN	
							idProject INTEGER NOT NULL 
						;
			-- ass name: PROJFUNDSOURC_FOUNDSOURC_FK
					ALTER TABLE projectfundingsource -- 1_1
						
						ADD COLUMN	
							idFundingSource INTEGER NOT NULL 
						;
			
			-- serializeAssociations projectkpi
			-- ass name: PROJECTKPI_METRICKPI_FK
					ALTER TABLE projectkpi -- 1_1
						
						ADD COLUMN	
							idMetricKpi INTEGER NULL 
						;
			-- ass name: PROJECTKPI_PROJECT_FK
					ALTER TABLE projectkpi -- 1_1
						
						ADD COLUMN	
							IdProject INTEGER NOT NULL 
						;
			
			-- serializeAssociations projectlabel
			-- ass name: PROJLABEL_LABEL_FK
					ALTER TABLE projectlabel -- 1_1
						
						ADD COLUMN	
							idLabel INTEGER NOT NULL 
						;
			-- ass name: PROJLABEL_PROJ_FK
					ALTER TABLE projectlabel -- 1_1
						
						ADD COLUMN	
							idProject INTEGER NOT NULL 
						;
			
			-- serializeAssociations projecttechnology
			-- ass name: PROJTECHNOLOGY_PROJ_FK
					ALTER TABLE projecttechnology -- 1_1
						
						ADD COLUMN	
							idProject INTEGER NOT NULL 
						;
			-- ass name: PROJTECHNOLOGY_TECHNOLOGY_FK
					ALTER TABLE projecttechnology -- 1_1
						
						ADD COLUMN	
							idTechnology INTEGER NOT NULL 
						;
			
			-- serializeAssociations recommendationlesson
			-- ass name: RECLESSON_LESLEARNED_FK
					ALTER TABLE recommendationlesson -- 1_1
						
						ADD COLUMN	
							idLearnedLesson INTEGER NOT NULL 
						;
			
			-- serializeAssociations resourcepool
			-- ass name: idCompany
					ALTER TABLE resourcepool -- 1_1
						
						ADD COLUMN	
							idCompany INTEGER NOT NULL 
						;
			
			-- serializeAssociations resourceprofiles
			
			-- serializeAssociations riskcategories
			
			-- serializeAssociations riskcategory
			-- ass name: RISKCATEGORY_COMPANY_FK
					ALTER TABLE riskcategory -- 1_1
						
						ADD COLUMN	
							idCompany INTEGER NOT NULL 
						;
			
			-- serializeAssociations riskreassessmentlog
			-- ass name: RISKLOG_EMPLOYEE_FK
					ALTER TABLE riskreassessmentlog -- 1_1
						
						ADD COLUMN	
							idEmployee INTEGER NULL 
						;
			-- ass name: RISKREASSLOG_RISKREGISTER_FK
					ALTER TABLE riskreassessmentlog -- 1_1
						
						ADD COLUMN	
							IdRisk INTEGER NULL 
						;
			
			-- serializeAssociations riskregister
			-- ass name: RISKREGISTER_PROJECT_FK
					ALTER TABLE riskregister -- 1_1
						
						ADD COLUMN	
							IdProject INTEGER NULL 
						;
			-- ass name: RISKREGISTER_RISKCATEGORIES_FK
					ALTER TABLE riskregister -- 1_1
						
						ADD COLUMN	
							IdRiskCategory INTEGER NULL 
						;
			-- ass name: RISKREGISTER_RISKCATEGORY_FK
					ALTER TABLE riskregister -- 1_1
						
						ADD COLUMN	
							idRiskcategoryTemp INTEGER NULL 
						;
			
			-- serializeAssociations riskregistertemplate
			-- ass name: RISKREGISTERTEMPLATE_RISKCATEGORIES_FK
					ALTER TABLE riskregistertemplate -- 1_1
						
						ADD COLUMN	
							IdRiskCategory INTEGER NULL 
						;
			-- ass name: RISKREGISTERTEMPLATE_COMPANY_FK
					ALTER TABLE riskregistertemplate -- 1_1
						
						ADD COLUMN	
							idCompany INTEGER NOT NULL 
						;
			-- ass name: RISKREGTEMPL_RISKCATEGORY_FK
					ALTER TABLE riskregistertemplate -- 1_1
						
						ADD COLUMN	
							idRiskCateg INTEGER NULL 
						;
			
			-- serializeAssociations security
			-- ass name: SECURITY_CONTACT_FK
					ALTER TABLE security -- 1_1
						
						ADD COLUMN	
							idContact INTEGER NOT NULL 
						;
			
			-- serializeAssociations seller
			-- ass name: SELLER_COMPANY_FK
					ALTER TABLE seller -- 1_1
						
						ADD COLUMN	
							idCompany INTEGER NULL 
						;
			
			-- serializeAssociations setting
			-- ass name: SETTING_COMPANY_FK
					ALTER TABLE setting -- 1_1
						
						ADD COLUMN	
							idCompany INTEGER NOT NULL 
						;
			
			-- serializeAssociations skill
			-- ass name: SKILL_COMPANY_FK
					ALTER TABLE skill -- 1_1
						
						ADD COLUMN	
							idCompany INTEGER NOT NULL 
						;
			
			-- serializeAssociations skillsemployee
			-- ass name: SKILLSEMPLOYEE_SKILL_FK
					ALTER TABLE skillsemployee -- 1_1
						
						ADD COLUMN	
							idSkill INTEGER NOT NULL 
						;
			-- ass name: SKILLSEMPLOYEE_EMPLOYEE_FK
					ALTER TABLE skillsemployee -- 1_1
						
						ADD COLUMN	
							idEmployee INTEGER NOT NULL 
						;
			
			-- serializeAssociations stagegate
			-- ass name: STAGE_COMPANY_FK
					ALTER TABLE stagegate -- 1_1
						
						ADD COLUMN	
							idCompany INTEGER NOT NULL 
						;
			
			-- serializeAssociations stakeholder
			-- ass name: STAKEHOLDER_EMPLESTAKEHOLDER_FK
					ALTER TABLE stakeholder -- 1_1
						
						ADD COLUMN	
							idEmployee INTEGER NULL 
						;
			-- ass name: STAKEHOLDER_PROJECT_FK
					ALTER TABLE stakeholder -- 1_1
						
						ADD COLUMN	
							IdProject INTEGER NOT NULL 
						;
			-- ass name: STAKEHOLDER_SHCLASSIF_FK
					ALTER TABLE stakeholder -- 1_1
						
						ADD COLUMN	
							idStakeholderClassification INTEGER NULL 
						;
			
			-- serializeAssociations stakeholderclassification
			-- ass name: SHCLASSIFICATION_COMPANY_FK
					ALTER TABLE stakeholderclassification -- 1_1
						
						ADD COLUMN	
							idCompany INTEGER NOT NULL 
						;
			
			-- serializeAssociations teammember
			-- ass name: TEAMMEMBER_ACTIVITY_FK
					ALTER TABLE teammember -- 1_1
						
						ADD COLUMN	
							IdActivity INTEGER NULL 
						;
			-- ass name: TEAMMEMBER_JOBCATEGORY_FK
					ALTER TABLE teammember -- 1_1
						
						ADD COLUMN	
							idJobCategory INTEGER NULL 
						;
			-- ass name: TEAMMEMBER_EMPLOYEE_FK
					ALTER TABLE teammember -- 1_1
						
						ADD COLUMN	
							idEmployee INTEGER NOT NULL 
						;
			
			-- serializeAssociations technology
			-- ass name: TECHNOLOGY_COMPANY_FK
					ALTER TABLE technology -- 1_1
						
						ADD COLUMN	
							idCompany INTEGER NOT NULL 
						;
			
			-- serializeAssociations timeline
			-- ass name: TIMELINE_TIMELINETYPE_FK
					ALTER TABLE timeline -- 1_1
						
						ADD COLUMN	
							idTimelineType INTEGER NULL 
						;
			-- ass name: TIMELINE_DOCUMENT_FK
					ALTER TABLE timeline -- 1_1
						
						ADD COLUMN	
							idDocumentProject INTEGER NULL 
						;
			-- ass name: TIMELINE_PROJECT_FK
					ALTER TABLE timeline -- 1_1
						
						ADD COLUMN	
							idProject INTEGER NOT NULL 
						;
			
			-- serializeAssociations timelinetype
			-- ass name: TIMELINETYPE_CNY_FK
					ALTER TABLE timelinetype -- 1_1
						
						ADD COLUMN	
							idCompany INTEGER NOT NULL 
						;
			
			-- serializeAssociations timesheet
			-- ass name: TIMESHEET_ACTIVITY_FK
					ALTER TABLE timesheet -- 1_1
						
						ADD COLUMN	
							idActivity INTEGER NULL 
						;
			-- ass name: TIMESHEET_EMPLOYEE_FK
					ALTER TABLE timesheet -- 1_1
						
						ADD COLUMN	
							idEmployee INTEGER NOT NULL 
						;
			-- ass name: TIMESHEET_OPERATION_FK
					ALTER TABLE timesheet -- 1_1
						
						ADD COLUMN	
							idOperation INTEGER NULL 
						;
			
			-- serializeAssociations timesheetcomment
			-- ass name: TIMESHEETCOMMENT_TIMESHEET_FK
					ALTER TABLE timesheetcomment -- 1_1
						
						ADD COLUMN	
							idTimeSheet INTEGER NOT NULL 
						;
			
			-- serializeAssociations wbsnode
			-- ass name: WBSNODE_PROJECT_FK
					ALTER TABLE wbsnode -- 1_1
						
						ADD COLUMN	
							idProject INTEGER NOT NULL 
						;
			-- ass name: WBSNODE_PARENT_FK
					ALTER TABLE wbsnode -- 1_1
						
						ADD COLUMN	
							Parent INTEGER NULL 
						;
			
			-- serializeAssociations wbstemplate
			
			-- serializeAssociations workingcosts
			-- ass name: WORKINGCOSTS_PROJECT_FK
					ALTER TABLE workingcosts -- 1_1
						
						ADD COLUMN	
							idProject INTEGER NOT NULL 
						;
			-- ass name: WORKINGCOSTS_CURRENCY_FK
					ALTER TABLE workingcosts -- 1_1
						
						ADD COLUMN	
							idCurrency INTEGER NULL 
						;
			
-- END PACKAGE openppm -----------------------------------------------------------------------
