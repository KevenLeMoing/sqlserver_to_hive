CREATE EXTERNAL TABLE IF NOT EXISTS ActionHistory(ActionHistoryID bigint,ActionID int,ActionDetails string,UserID bigint,DateCreated date,UserTypeID int,changed_timestamp timestamp) ROW FORMAT DELIMITEDFIELDS TERMINATED BY '\073' LINES TERMINATED BY '\n' LOCATION'hdfs://hsspas610:8020/RSA/Staging/stg_prd_pr_ccs_no_claims/ActionHistory';
CREATE EXTERNAL TABLE IF NOT EXISTS ActionHistoryOld(ActionHistoryID bigint,ActionID int,ActionDetails string,UserID bigint,DateCreated date,UserTypeID int,changed_timestamp timestamp) ROW FORMAT DELIMITEDFIELDS TERMINATED BY '\073' LINES TERMINATED BY '\n' LOCATION'hdfs://hsspas610:8020/RSA/Staging/stg_prd_pr_ccs_no_claims/ActionHistoryOld';
CREATE EXTERNAL TABLE IF NOT EXISTS Actions(ActionID int,ActionName string,changed_timestamp timestamp) ROW FORMAT DELIMITEDFIELDS TERMINATED BY '\073' LINES TERMINATED BY '\n' LOCATION'hdfs://hsspas610:8020/RSA/Staging/stg_prd_pr_ccs_no_claims/Actions';
CREATE EXTERNAL TABLE IF NOT EXISTS Ansvarsfordeling(AnsvarsfordelingID int,Description string,IsCCSPL string,changed_timestamp timestamp) ROW FORMAT DELIMITEDFIELDS TERMINATED BY '\073' LINES TERMINATED BY '\n' LOCATION'hdfs://hsspas610:8020/RSA/Staging/stg_prd_pr_ccs_no_claims/Ansvarsfordeling';
CREATE EXTERNAL TABLE IF NOT EXISTS ApprovedStates(ApprovedStateId int,ApprovedState string,changed_timestamp timestamp) ROW FORMAT DELIMITEDFIELDS TERMINATED BY '\073' LINES TERMINATED BY '\n' LOCATION'hdfs://hsspas610:8020/RSA/Staging/stg_prd_pr_ccs_no_claims/ApprovedStates';
CREATE EXTERNAL TABLE IF NOT EXISTS AppVersion(AppVersionID bigint,Major smallint,Minor smallint,Build smallint,Revision smallint,DeploymentDate date,BuildScope string,IsFinalDrop string,changed_timestamp timestamp) ROW FORMAT DELIMITEDFIELDS TERMINATED BY '\073' LINES TERMINATED BY '\n' LOCATION'hdfs://hsspas610:8020/RSA/Staging/stg_prd_pr_ccs_no_claims/AppVersion';
CREATE EXTERNAL TABLE IF NOT EXISTS BatchExecutionStatus(BatchID bigint,BatchStartDate date,BatchEndDate date,PL_ExportStatus int,PL_ImportStatus int,CreatedDate date,CL_ExportStatus int,CL_ImportStatus int,changed_timestamp timestamp) ROW FORMAT DELIMITEDFIELDS TERMINATED BY '\073' LINES TERMINATED BY '\n' LOCATION'hdfs://hsspas610:8020/RSA/Staging/stg_prd_pr_ccs_no_claims/BatchExecutionStatus';
CREATE EXTERNAL TABLE IF NOT EXISTS BatchStatuses(StatusID int,Description string,changed_timestamp timestamp) ROW FORMAT DELIMITEDFIELDS TERMINATED BY '\073' LINES TERMINATED BY '\n' LOCATION'hdfs://hsspas610:8020/RSA/Staging/stg_prd_pr_ccs_no_claims/BatchStatuses';
CREATE EXTERNAL TABLE IF NOT EXISTS BatchSummary(FileID bigint,BatchID bigint,FileTypeID int,FileName string,TransactionStartDate date,TransactionEndDate date,RecordsEligible bigint,RecordsProcessed bigint,Status int,CreatedDate date,changed_timestamp timestamp) ROW FORMAT DELIMITEDFIELDS TERMINATED BY '\073' LINES TERMINATED BY '\n' LOCATION'hdfs://hsspas610:8020/RSA/Staging/stg_prd_pr_ccs_no_claims/BatchSummary';
CREATE EXTERNAL TABLE IF NOT EXISTS Belpetgjelder(BelpetgjelderID int,BelpetgjelderCode string,IsPaid string,Sort_Order int,changed_timestamp timestamp) ROW FORMAT DELIMITEDFIELDS TERMINATED BY '\073' LINES TERMINATED BY '\n' LOCATION'hdfs://hsspas610:8020/RSA/Staging/stg_prd_pr_ccs_no_claims/Belpetgjelder';
CREATE EXTERNAL TABLE IF NOT EXISTS BonusReductionHistory(BonusReductionHistoryID bigint,ClaimCaseID bigint,IsMotorBonus string,BonusReductionDate date,changed_timestamp timestamp) ROW FORMAT DELIMITEDFIELDS TERMINATED BY '\073' LINES TERMINATED BY '\n' LOCATION'hdfs://hsspas610:8020/RSA/Staging/stg_prd_pr_ccs_no_claims/BonusReductionHistory';
CREATE EXTERNAL TABLE IF NOT EXISTS CarrierClaimSeries(ClaimCaseID bigint,Empty string,changed_timestamp timestamp) ROW FORMAT DELIMITEDFIELDS TERMINATED BY '\073' LINES TERMINATED BY '\n' LOCATION'hdfs://hsspas610:8020/RSA/Staging/stg_prd_pr_ccs_no_claims/CarrierClaimSeries';
CREATE EXTERNAL TABLE IF NOT EXISTS Carriers(CarrierID int,CarrierName string,changed_timestamp timestamp) ROW FORMAT DELIMITEDFIELDS TERMINATED BY '\073' LINES TERMINATED BY '\n' LOCATION'hdfs://hsspas610:8020/RSA/Staging/stg_prd_pr_ccs_no_claims/Carriers';
CREATE EXTERNAL TABLE IF NOT EXISTS CaseEstimates(CaseEstimateID bigint,ClaimCaseID bigint,ProductID int,CoverID int,ClaimTypeID int,TransactionID int,Amount decimal(18,2),Description string,DateCreated date,UserID int,IsDisabled string,IsContra string,IncidentElementID int,IncidentCauseID int,IncidentTypeID int,BelpetgjelderID int,IncidentTypeId int,RTV string,RTVContraEstimateID bigint,Swift string,IsSwift string,changed_timestamp timestamp) ROW FORMAT DELIMITEDFIELDS TERMINATED BY '\073' LINES TERMINATED BY '\n' LOCATION'hdfs://hsspas610:8020/RSA/Staging/stg_prd_pr_ccs_no_claims/CaseEstimates';
CREATE EXTERNAL TABLE IF NOT EXISTS CaseEstimatesOld(CaseEstimateID bigint,ClaimCaseID bigint,ProductID int,CoverID int,ClaimTypeID int,TransactionID int,Amount decimal(18,2),Description string,DateCreated date,UserID int,IsDisabled string,IsContra string,IncidentElementID int,IncidentCauseID int,IncidentTypeID int,BelpetgjelderID int,IncidentTypeId int,RTV string,RTVContraEstimateID bigint,Swift string,IsSwift string,changed_timestamp timestamp) ROW FORMAT DELIMITEDFIELDS TERMINATED BY '\073' LINES TERMINATED BY '\n' LOCATION'hdfs://hsspas610:8020/RSA/Staging/stg_prd_pr_ccs_no_claims/CaseEstimatesOld';
CREATE EXTERNAL TABLE IF NOT EXISTS Catastrophe(CatastropheId bigint,CatastropheCode string,CodeDescription string,Active string,changed_timestamp timestamp) ROW FORMAT DELIMITEDFIELDS TERMINATED BY '\073' LINES TERMINATED BY '\n' LOCATION'hdfs://hsspas610:8020/RSA/Staging/stg_prd_pr_ccs_no_claims/Catastrophe';
CREATE EXTERNAL TABLE IF NOT EXISTS CCSPartnerProductMap(CCSPartnerProductMapID int,CCSPartnerID int,ExternalProductMapID int,changed_timestamp timestamp) ROW FORMAT DELIMITEDFIELDS TERMINATED BY '\073' LINES TERMINATED BY '\n' LOCATION'hdfs://hsspas610:8020/RSA/Staging/stg_prd_pr_ccs_no_claims/CCSPartnerProductMap';
CREATE EXTERNAL TABLE IF NOT EXISTS ClaimCaseCloseReason(ReasonID int,Description string,changed_timestamp timestamp) ROW FORMAT DELIMITEDFIELDS TERMINATED BY '\073' LINES TERMINATED BY '\n' LOCATION'hdfs://hsspas610:8020/RSA/Staging/stg_prd_pr_ccs_no_claims/ClaimCaseCloseReason';
CREATE EXTERNAL TABLE IF NOT EXISTS ClaimCaseCounter(ClaimCaseID bigint,Empty string,changed_timestamp timestamp) ROW FORMAT DELIMITEDFIELDS TERMINATED BY '\073' LINES TERMINATED BY '\n' LOCATION'hdfs://hsspas610:8020/RSA/Staging/stg_prd_pr_ccs_no_claims/ClaimCaseCounter';
CREATE EXTERNAL TABLE IF NOT EXISTS ClaimCaseReopenReason(ReasonID int,Description string,changed_timestamp timestamp) ROW FORMAT DELIMITEDFIELDS TERMINATED BY '\073' LINES TERMINATED BY '\n' LOCATION'hdfs://hsspas610:8020/RSA/Staging/stg_prd_pr_ccs_no_claims/ClaimCaseReopenReason';
CREATE EXTERNAL TABLE IF NOT EXISTS ClaimCases(ClaimCaseID bigint,ClaimDate date,ReportedDate date,ClosedDate date,Product string,UserID bigint,Status int,ClaimSummary string,MotorBonus string,CustomerBonus string,MotorLoss string,CounterPartCompany string,CarDamageZone string,ReOpenedDate date,InsurancePolicyID bigint,PartnerID int,IsClosed string,CounterPartVehicle string,OldClaimID bigint,ContractID bigint,CarrierID int,PolicyVersionId int,DeptId smallint,PersonalInjury string,Avkortning string,Avslag string,AvkortningPercentage decimal,CatastropheId bigint,IncidentCauseID int,IncidentTypeID int,SourceSystemId int,AccountNumber varbinary,ReserveStatus string,GroupID smallint,OwnerID bigint,EventCodeID bigint,Utlevering string,Statusisaken string,AnsvarsfordelingId int,Besiktigelse string,Avkortningsbelp string,IncidentTypeId int,LegginnICDkode string,Created_Date date,CCSInsurancePolicyHistoryID bigint,Telephone string,Email string,PF_Egenandelsfordel string,changed_timestamp timestamp) ROW FORMAT DELIMITEDFIELDS TERMINATED BY '\073' LINES TERMINATED BY '\n' LOCATION'hdfs://hsspas610:8020/RSA/Staging/stg_prd_pr_ccs_no_claims/ClaimCases';
CREATE EXTERNAL TABLE IF NOT EXISTS ClaimNotes(ClaimsNoteID bigint,ClaimCaseID bigint,Note string,NoteDate date,UserID bigint,Exported string,changed_timestamp timestamp) ROW FORMAT DELIMITEDFIELDS TERMINATED BY '\073' LINES TERMINATED BY '\n' LOCATION'hdfs://hsspas610:8020/RSA/Staging/stg_prd_pr_ccs_no_claims/ClaimNotes';
CREATE EXTERNAL TABLE IF NOT EXISTS ClaimTypeCauseMap(ClaimTypeID int,IncidentCauseID int,changed_timestamp timestamp) ROW FORMAT DELIMITEDFIELDS TERMINATED BY '\073' LINES TERMINATED BY '\n' LOCATION'hdfs://hsspas610:8020/RSA/Staging/stg_prd_pr_ccs_no_claims/ClaimTypeCauseMap';
CREATE EXTERNAL TABLE IF NOT EXISTS ClaimTypes(ClaimTypeID int,ClaimType string,changed_timestamp timestamp) ROW FORMAT DELIMITEDFIELDS TERMINATED BY '\073' LINES TERMINATED BY '\n' LOCATION'hdfs://hsspas610:8020/RSA/Staging/stg_prd_pr_ccs_no_claims/ClaimTypes';
CREATE EXTERNAL TABLE IF NOT EXISTS ClosedClaimCases(ClaimCaseClosedID int,ClaimCaseID bigint,ReasonID int,ClosedDate date,changed_timestamp timestamp) ROW FORMAT DELIMITEDFIELDS TERMINATED BY '\073' LINES TERMINATED BY '\n' LOCATION'hdfs://hsspas610:8020/RSA/Staging/stg_prd_pr_ccs_no_claims/ClosedClaimCases';
CREATE EXTERNAL TABLE IF NOT EXISTS Covers(CoverID int,CoverName string,IsCCSPL string,changed_timestamp timestamp) ROW FORMAT DELIMITEDFIELDS TERMINATED BY '\073' LINES TERMINATED BY '\n' LOCATION'hdfs://hsspas610:8020/RSA/Staging/stg_prd_pr_ccs_no_claims/Covers';
CREATE EXTERNAL TABLE IF NOT EXISTS Department(DeptId smallint,DeptName string,IsCCSPL string,changed_timestamp timestamp) ROW FORMAT DELIMITEDFIELDS TERMINATED BY '\073' LINES TERMINATED BY '\n' LOCATION'hdfs://hsspas610:8020/RSA/Staging/stg_prd_pr_ccs_no_claims/Department';
CREATE EXTERNAL TABLE IF NOT EXISTS DepartmentGroups(GroupId smallint,GroupName string,DeptId smallint,IsActive string,changed_timestamp timestamp) ROW FORMAT DELIMITEDFIELDS TERMINATED BY '\073' LINES TERMINATED BY '\n' LOCATION'hdfs://hsspas610:8020/RSA/Staging/stg_prd_pr_ccs_no_claims/DepartmentGroups';
CREATE EXTERNAL TABLE IF NOT EXISTS EventCodes(EventCodeID bigint,EventCode string,Description string,GeneratedDate date,UNIQUE NONCLUSTERED,changed_timestamp timestamp) ROW FORMAT DELIMITEDFIELDS TERMINATED BY '\073' LINES TERMINATED BY '\n' LOCATION'hdfs://hsspas610:8020/RSA/Staging/stg_prd_pr_ccs_no_claims/EventCodes';
CREATE EXTERNAL TABLE IF NOT EXISTS ExternalProductCoverLookup(ProductId int,ExtraCoversIdentifier int,ExtraCoversLabel string,ProductNameOverridden string,SourceSystemId int,changed_timestamp timestamp) ROW FORMAT DELIMITEDFIELDS TERMINATED BY '\073' LINES TERMINATED BY '\n' LOCATION'hdfs://hsspas610:8020/RSA/Staging/stg_prd_pr_ccs_no_claims/ExternalProductCoverLookup';
CREATE EXTERNAL TABLE IF NOT EXISTS ExternalProductMap(ExternalProductMapID int,ProductName string,ProductID int,ProductCategoryID int,SourceSystemId int,IsProperty string,IsMotor string,IsAutoFleet string,IsPropertyFleet string,IsPersonalInjuryFleet string,IsOtherFleet string,IsActive string,changed_timestamp timestamp) ROW FORMAT DELIMITEDFIELDS TERMINATED BY '\073' LINES TERMINATED BY '\n' LOCATION'hdfs://hsspas610:8020/RSA/Staging/stg_prd_pr_ccs_no_claims/ExternalProductMap';
CREATE EXTERNAL TABLE IF NOT EXISTS ExternalProductMapping(ExternalProductId int,ProductID int,SourceSystemId int,ExternalProductMapID int,ExternalProductMappingID bigint,changed_timestamp timestamp) ROW FORMAT DELIMITEDFIELDS TERMINATED BY '\073' LINES TERMINATED BY '\n' LOCATION'hdfs://hsspas610:8020/RSA/Staging/stg_prd_pr_ccs_no_claims/ExternalProductMapping';
CREATE EXTERNAL TABLE IF NOT EXISTS FileType(FileTypeID int,FileType string,changed_timestamp timestamp) ROW FORMAT DELIMITEDFIELDS TERMINATED BY '\073' LINES TERMINATED BY '\n' LOCATION'hdfs://hsspas610:8020/RSA/Staging/stg_prd_pr_ccs_no_claims/FileType';
CREATE EXTERNAL TABLE IF NOT EXISTS FOSSIncidentCauseTypeMap(FOSSIncidentTypeID int,ProductCategoryCauseMapID int,changed_timestamp timestamp) ROW FORMAT DELIMITEDFIELDS TERMINATED BY '\073' LINES TERMINATED BY '\n' LOCATION'hdfs://hsspas610:8020/RSA/Staging/stg_prd_pr_ccs_no_claims/FOSSIncidentCauseTypeMap';
CREATE EXTERNAL TABLE IF NOT EXISTS FOSSIncidentType(FOSSIncidentTypeID int,IncidentTypeCode string,FOSSIncidentType string,changed_timestamp timestamp) ROW FORMAT DELIMITEDFIELDS TERMINATED BY '\073' LINES TERMINATED BY '\n' LOCATION'hdfs://hsspas610:8020/RSA/Staging/stg_prd_pr_ccs_no_claims/FOSSIncidentType';
CREATE EXTERNAL TABLE IF NOT EXISTS HuginQuestionAndAnswerXML(ClaimCaseID bigint,HuginXML xml,FraudIndicator varchar,BistandStatus varchar,changed_timestamp timestamp) ROW FORMAT DELIMITEDFIELDS TERMINATED BY '\073' LINES TERMINATED BY '\n' LOCATION'hdfs://hsspas610:8020/RSA/Staging/stg_prd_pr_ccs_no_claims/HuginQuestionAndAnswerXML';
CREATE EXTERNAL TABLE IF NOT EXISTS InmoCheckedClaims(ClaimCaseID varchar,InmoEntryDate date,changed_timestamp timestamp) ROW FORMAT DELIMITEDFIELDS TERMINATED BY '\073' LINES TERMINATED BY '\n' LOCATION'hdfs://hsspas610:8020/RSA/Staging/stg_prd_pr_ccs_no_claims/InmoCheckedClaims';
CREATE EXTERNAL TABLE IF NOT EXISTS IncidentCause(IncidentCauseID int,IncidentCause string,changed_timestamp timestamp) ROW FORMAT DELIMITEDFIELDS TERMINATED BY '\073' LINES TERMINATED BY '\n' LOCATION'hdfs://hsspas610:8020/RSA/Staging/stg_prd_pr_ccs_no_claims/IncidentCause';
CREATE EXTERNAL TABLE IF NOT EXISTS IncidentCauseElementMap(ProductCategoryCauseMapID int,IncidentElementID int,IsActive string,changed_timestamp timestamp) ROW FORMAT DELIMITEDFIELDS TERMINATED BY '\073' LINES TERMINATED BY '\n' LOCATION'hdfs://hsspas610:8020/RSA/Staging/stg_prd_pr_ccs_no_claims/IncidentCauseElementMap';
CREATE EXTERNAL TABLE IF NOT EXISTS IncidentCauseTypeMap(ProductCategoryCauseMapID int,IncidentTypeID int,IncidentTypeMapID int,IsActive string,changed_timestamp timestamp) ROW FORMAT DELIMITEDFIELDS TERMINATED BY '\073' LINES TERMINATED BY '\n' LOCATION'hdfs://hsspas610:8020/RSA/Staging/stg_prd_pr_ccs_no_claims/IncidentCauseTypeMap';
CREATE EXTERNAL TABLE IF NOT EXISTS IncidentElement(IncidentElementID int,IncidentElement string,IsPersonalInjury string,IsActive string,changed_timestamp timestamp) ROW FORMAT DELIMITEDFIELDS TERMINATED BY '\073' LINES TERMINATED BY '\n' LOCATION'hdfs://hsspas610:8020/RSA/Staging/stg_prd_pr_ccs_no_claims/IncidentElement';
CREATE EXTERNAL TABLE IF NOT EXISTS IncidentType(IncidentTypeID int,IncidentTypeDescription string,changed_timestamp timestamp) ROW FORMAT DELIMITEDFIELDS TERMINATED BY '\073' LINES TERMINATED BY '\n' LOCATION'hdfs://hsspas610:8020/RSA/Staging/stg_prd_pr_ccs_no_claims/IncidentType';
CREATE EXTERNAL TABLE IF NOT EXISTS IncidentType_TypeMap(IncidentTypeMapID int,ProductCategoryCauseMapId int,IncidentTypeID int,IsActive string,changed_timestamp timestamp) ROW FORMAT DELIMITEDFIELDS TERMINATED BY '\073' LINES TERMINATED BY '\n' LOCATION'hdfs://hsspas610:8020/RSA/Staging/stg_prd_pr_ccs_no_claims/IncidentType_TypeMap';
CREATE EXTERNAL TABLE IF NOT EXISTS Innberettes(InnberettesID int,InnberettesName string,changed_timestamp timestamp) ROW FORMAT DELIMITEDFIELDS TERMINATED BY '\073' LINES TERMINATED BY '\n' LOCATION'hdfs://hsspas610:8020/RSA/Staging/stg_prd_pr_ccs_no_claims/Innberettes';
CREATE EXTERNAL TABLE IF NOT EXISTS InvolvedParty(InvolvedPartyId int,ClaimCaseId bigint,RoleId int,Name string,Address string,Zipcode string,City string,TelePhone string,Email string,SourceSystemId int,PersonNumber string,changed_timestamp timestamp) ROW FORMAT DELIMITEDFIELDS TERMINATED BY '\073' LINES TERMINATED BY '\n' LOCATION'hdfs://hsspas610:8020/RSA/Staging/stg_prd_pr_ccs_no_claims/InvolvedParty';
CREATE EXTERNAL TABLE IF NOT EXISTS MarketCode(MarketCodeID int,MarketCode string,Market string,changed_timestamp timestamp) ROW FORMAT DELIMITEDFIELDS TERMINATED BY '\073' LINES TERMINATED BY '\n' LOCATION'hdfs://hsspas610:8020/RSA/Staging/stg_prd_pr_ccs_no_claims/MarketCode';
CREATE EXTERNAL TABLE IF NOT EXISTS NavisionPortfolio(NavisionPortfolioID bigint,NavisionPortfolioCode string,NavisionPortfolioName string,CPSCLPortfolioID int,changed_timestamp timestamp) ROW FORMAT DELIMITEDFIELDS TERMINATED BY '\073' LINES TERMINATED BY '\n' LOCATION'hdfs://hsspas610:8020/RSA/Staging/stg_prd_pr_ccs_no_claims/NavisionPortfolio';
CREATE EXTERNAL TABLE IF NOT EXISTS NavisionProductCode(NavisionProductCodeID bigint,NavisionProductCode string,NavisionProductCodeName string,IsActive string,changed_timestamp timestamp) ROW FORMAT DELIMITEDFIELDS TERMINATED BY '\073' LINES TERMINATED BY '\n' LOCATION'hdfs://hsspas610:8020/RSA/Staging/stg_prd_pr_ccs_no_claims/NavisionProductCode';
CREATE EXTERNAL TABLE IF NOT EXISTS Partners(PartnerID int,PartnerName string,SourceSystemId int,CCSPartnerID int,changed_timestamp timestamp) ROW FORMAT DELIMITEDFIELDS TERMINATED BY '\073' LINES TERMINATED BY '\n' LOCATION'hdfs://hsspas610:8020/RSA/Staging/stg_prd_pr_ccs_no_claims/Partners';
CREATE EXTERNAL TABLE IF NOT EXISTS PasswordHistory(PasswordHistoryId bigint,UserID bigint,Password binary,Salt binary,PasswordDate date,changed_timestamp timestamp) ROW FORMAT DELIMITEDFIELDS TERMINATED BY '\073' LINES TERMINATED BY '\n' LOCATION'hdfs://hsspas610:8020/RSA/Staging/stg_prd_pr_ccs_no_claims/PasswordHistory';
CREATE EXTERNAL TABLE IF NOT EXISTS PaymentApproveReassigmentHistory(PaymentApproveReassigmentHistoryID bigint,CaseEstimateID bigint,ApproveUserID int,NewApproveUserID int,ModifiedUserID int,OperationUsed string,ModifiedDate date,changed_timestamp timestamp) ROW FORMAT DELIMITEDFIELDS TERMINATED BY '\073' LINES TERMINATED BY '\n' LOCATION'hdfs://hsspas610:8020/RSA/Staging/stg_prd_pr_ccs_no_claims/PaymentApproveReassigmentHistory';
CREATE EXTERNAL TABLE IF NOT EXISTS PaymentImportLog(PartnerId int,VendorId string,CompanyName string,BankAccount string,VATNumber string,PostalAddress string,Zipcode string,Area string,Email string,Telephone string,InsurancePolicyID bigint,Skadenummer bigint,Invoicenummer string,Collectiondate date,Amount decimal(18,2),Description string,KID string,InvoiceDate date,DueDate date,PaymentRef bigint,Paid string,FullyPaid string,PaymentAmount decimal(18,2),PaymentDate date,ImportedDate date,PaymentImportLogId bigint,changed_timestamp timestamp) ROW FORMAT DELIMITEDFIELDS TERMINATED BY '\073' LINES TERMINATED BY '\n' LOCATION'hdfs://hsspas610:8020/RSA/Staging/stg_prd_pr_ccs_no_claims/PaymentImportLog';
CREATE EXTERNAL TABLE IF NOT EXISTS PaymentRecipients(PaymentRecipientID bigint,Name string,Address string,City string,ZipCode string,Email string,Phone string,OrgOrSocialSecurity string,Closed_AccountNumber string,RTV string,AccountNumber varbinary,changed_timestamp timestamp) ROW FORMAT DELIMITEDFIELDS TERMINATED BY '\073' LINES TERMINATED BY '\n' LOCATION'hdfs://hsspas610:8020/RSA/Staging/stg_prd_pr_ccs_no_claims/PaymentRecipients';
CREATE EXTERNAL TABLE IF NOT EXISTS PaymentReporterDetails(ReporterDetailID int,CaseEstimateId bigint,Name string,Address string,Zipcode string,City string,Email string,Telephone string,OrgNumber string,AccountNumber varbinary,Innberettes int,changed_timestamp timestamp) ROW FORMAT DELIMITEDFIELDS TERMINATED BY '\073' LINES TERMINATED BY '\n' LOCATION'hdfs://hsspas610:8020/RSA/Staging/stg_prd_pr_ccs_no_claims/PaymentReporterDetails';
CREATE EXTERNAL TABLE IF NOT EXISTS Payments(PaymentRef bigint,CaseEstimateId bigint,RegisteredByUserId bigint,ApproveeUserId bigint,CustomerID string,PartnerId int,Name string,Address string,City string,ZipCode string,Email string,Phone string,OrgOrSocialSecurity string,Closed_AccountNumber string,InvoiceNumber string,DueDate date,InvoiceDate date,KID string,ApprovedState int,Exported string,Imported string,EX_Paid string,EX_FullyPaid string,EX_PaymentAmount decimal(18,2),EX_PaymentDate date,ExcludeFromExport string,ModifiedDate date,AutoApproved string,DeresReference string,RecipientID string,ExportedDate date,ImportedDate date,AccountNumber varbinary,RTV string,NavisionPortfolioID bigint,NavisionProductCodeID bigint,ApprovedOrRejectedDate date,RejectedOrHoldReason string,changed_timestamp timestamp) ROW FORMAT DELIMITEDFIELDS TERMINATED BY '\073' LINES TERMINATED BY '\n' LOCATION'hdfs://hsspas610:8020/RSA/Staging/stg_prd_pr_ccs_no_claims/Payments';
CREATE EXTERNAL TABLE IF NOT EXISTS PolicySource(SourceSystemId int,SourceSystem string,changed_timestamp timestamp) ROW FORMAT DELIMITEDFIELDS TERMINATED BY '\073' LINES TERMINATED BY '\n' LOCATION'hdfs://hsspas610:8020/RSA/Staging/stg_prd_pr_ccs_no_claims/PolicySource';
CREATE EXTERNAL TABLE IF NOT EXISTS PolicySummary(PolicyId bigint,PartnerId int,FirstName string,LastName string,SocialSecurity string,ObjectName string,ProductName string,StartDate date,EndDate date,CarrierId int,CustomerId bigint,ContractId bigint,ProductId int,VersionId int,ContractReference string,SourceSystemId int,AccountNumber varbinary,FirmName string,OrgNumber string,PortfolioId int,PartnerName string,CCSInsurancePolicyHistoryID bigint,FleetObjectName string,FleetCompanyName string,FleetOrgNumber string,FleetInsuredAddress string,FleetZipCode string,FleetCity string,FleetGnr string,FleetBnr string,FleetBirthDate date,FleetStartDate date,FleetEndDate date,FleetSocialSecurity string,FleetFirstName string,FleetLastName string,FleetEmploymentPercentage string,FleetSalary string,changed_timestamp timestamp) ROW FORMAT DELIMITEDFIELDS TERMINATED BY '\073' LINES TERMINATED BY '\n' LOCATION'hdfs://hsspas610:8020/RSA/Staging/stg_prd_pr_ccs_no_claims/PolicySummary';
CREATE EXTERNAL TABLE IF NOT EXISTS PolicySummaryDistinct(PolicyId bigint,PartnerId int,FirstName string,LastName string,SocialSecurity string,ObjectName string,ProductName string,StartDate date,EndDate date,CarrierId int,CustomerId bigint,ContractId bigint,ProductId int,VersionId int,changed_timestamp timestamp) ROW FORMAT DELIMITEDFIELDS TERMINATED BY '\073' LINES TERMINATED BY '\n' LOCATION'hdfs://hsspas610:8020/RSA/Staging/stg_prd_pr_ccs_no_claims/PolicySummaryDistinct';
CREATE EXTERNAL TABLE IF NOT EXISTS PolicySummaryDistinctWLS(PolicyId bigint,PartnerId int,FirstName string,LastName string,SocialSecurity string,ObjectName string,ProductName string,StartDate date,EndDate date,CarrierId int,CustomerId bigint,ContractId bigint,ProductId int,VersionId int,changed_timestamp timestamp) ROW FORMAT DELIMITEDFIELDS TERMINATED BY '\073' LINES TERMINATED BY '\n' LOCATION'hdfs://hsspas610:8020/RSA/Staging/stg_prd_pr_ccs_no_claims/PolicySummaryDistinctWLS';
CREATE EXTERNAL TABLE IF NOT EXISTS Portfolio(PortfolioID int,PortfolioName string,changed_timestamp timestamp) ROW FORMAT DELIMITEDFIELDS TERMINATED BY '\073' LINES TERMINATED BY '\n' LOCATION'hdfs://hsspas610:8020/RSA/Staging/stg_prd_pr_ccs_no_claims/Portfolio';
CREATE EXTERNAL TABLE IF NOT EXISTS Product_Cover_Claimtype_Element(ProductID int,CoverID int,ClaimTypeID int,IncidentElementId int,NavisionProductCodeID bigint,IsActive string,changed_timestamp timestamp) ROW FORMAT DELIMITEDFIELDS TERMINATED BY '\073' LINES TERMINATED BY '\n' LOCATION'hdfs://hsspas610:8020/RSA/Staging/stg_prd_pr_ccs_no_claims/Product_Cover_Claimtype_Element';
CREATE EXTERNAL TABLE IF NOT EXISTS Product_Cover_Mapping(Id int,MotorInsuranceTypeTag string,Tags string,Produkt string,changed_timestamp timestamp) ROW FORMAT DELIMITEDFIELDS TERMINATED BY '\073' LINES TERMINATED BY '\n' LOCATION'hdfs://hsspas610:8020/RSA/Staging/stg_prd_pr_ccs_no_claims/Product_Cover_Mapping';
CREATE EXTERNAL TABLE IF NOT EXISTS ProductCategory(ProductCategoryID int,ProductCategoryName string,IsCCSPL string,changed_timestamp timestamp) ROW FORMAT DELIMITEDFIELDS TERMINATED BY '\073' LINES TERMINATED BY '\n' LOCATION'hdfs://hsspas610:8020/RSA/Staging/stg_prd_pr_ccs_no_claims/ProductCategory';
CREATE EXTERNAL TABLE IF NOT EXISTS ProductCategoryCauseMap(ProductCategoryCauseMapID int,ProductCategoryID int,IncidentCauseID int,IsActive string,changed_timestamp timestamp) ROW FORMAT DELIMITEDFIELDS TERMINATED BY '\073' LINES TERMINATED BY '\n' LOCATION'hdfs://hsspas610:8020/RSA/Staging/stg_prd_pr_ccs_no_claims/ProductCategoryCauseMap';
CREATE EXTERNAL TABLE IF NOT EXISTS ProductMarketMap(ExternalProductMapID int,MarketCodeID int,changed_timestamp timestamp) ROW FORMAT DELIMITEDFIELDS TERMINATED BY '\073' LINES TERMINATED BY '\n' LOCATION'hdfs://hsspas610:8020/RSA/Staging/stg_prd_pr_ccs_no_claims/ProductMarketMap';
CREATE EXTERNAL TABLE IF NOT EXISTS Products(ProductID int,ProductName string,IsCCSPL string,changed_timestamp timestamp) ROW FORMAT DELIMITEDFIELDS TERMINATED BY '\073' LINES TERMINATED BY '\n' LOCATION'hdfs://hsspas610:8020/RSA/Staging/stg_prd_pr_ccs_no_claims/Products';
CREATE EXTERNAL TABLE IF NOT EXISTS RecoveryPaymentImportLog(RecoveryPaymentImportLogID bigint,PaymentRef bigint,CaseEstimateID bigint,InvoiceNummer string,PaymentAmount decimal(18,2),PaymentDate date,ClaimCaseId bigint,Paid string,FullyPaid string,ImportedDate date,RecReminderStatus int,IsRecoveryReceivedForCloseClaim string,IsMoreRecoveryReceived string,IsImported string,changed_timestamp timestamp) ROW FORMAT DELIMITEDFIELDS TERMINATED BY '\073' LINES TERMINATED BY '\n' LOCATION'hdfs://hsspas610:8020/RSA/Staging/stg_prd_pr_ccs_no_claims/RecoveryPaymentImportLog';
CREATE EXTERNAL TABLE IF NOT EXISTS Relation(RelationId int,RelationName string,SourceSystemId int,RelationRankId int,changed_timestamp timestamp) ROW FORMAT DELIMITEDFIELDS TERMINATED BY '\073' LINES TERMINATED BY '\n' LOCATION'hdfs://hsspas610:8020/RSA/Staging/stg_prd_pr_ccs_no_claims/Relation';
CREATE EXTERNAL TABLE IF NOT EXISTS ReopenedClaimCases(ClaimCaseReopenID int,ClaimCaseID bigint,ReasonID int,ReopnedDate date,changed_timestamp timestamp) ROW FORMAT DELIMITEDFIELDS TERMINATED BY '\073' LINES TERMINATED BY '\n' LOCATION'hdfs://hsspas610:8020/RSA/Staging/stg_prd_pr_ccs_no_claims/ReopenedClaimCases';
CREATE EXTERNAL TABLE IF NOT EXISTS Reporter(ReporterId bigint,ClaimCaseId bigint,Name string,RelationId int,Address string,Telephone string,PostalNumber string,City string,Email string,SourceSystemId int,changed_timestamp timestamp) ROW FORMAT DELIMITEDFIELDS TERMINATED BY '\073' LINES TERMINATED BY '\n' LOCATION'hdfs://hsspas610:8020/RSA/Staging/stg_prd_pr_ccs_no_claims/Reporter';
CREATE EXTERNAL TABLE IF NOT EXISTS Role(RoleId int,RoleName string,SourceSystemId string,changed_timestamp timestamp) ROW FORMAT DELIMITEDFIELDS TERMINATED BY '\073' LINES TERMINATED BY '\n' LOCATION'hdfs://hsspas610:8020/RSA/Staging/stg_prd_pr_ccs_no_claims/Role';
CREATE EXTERNAL TABLE IF NOT EXISTS Skadeland(SkadelandID int,Description string,Code char,changed_timestamp timestamp) ROW FORMAT DELIMITEDFIELDS TERMINATED BY '\073' LINES TERMINATED BY '\n' LOCATION'hdfs://hsspas610:8020/RSA/Staging/stg_prd_pr_ccs_no_claims/Skadeland';
CREATE EXTERNAL TABLE IF NOT EXISTS Skadelidte(SkadelidteId int,ClaimCaseId bigint,FirstName string,LastName string,SocialSecurity string,Address string,Zipcode string,City string,TelePhone string,Email string,AccountNumber varbinary,SourceSystemId int,changed_timestamp timestamp) ROW FORMAT DELIMITEDFIELDS TERMINATED BY '\073' LINES TERMINATED BY '\n' LOCATION'hdfs://hsspas610:8020/RSA/Staging/stg_prd_pr_ccs_no_claims/Skadelidte';
CREATE EXTERNAL TABLE IF NOT EXISTS Skadested(SkadestedId int,ClaimCaseId bigint,Gateadresse string,Postnummer string,SkadelandId int,changed_timestamp timestamp) ROW FORMAT DELIMITEDFIELDS TERMINATED BY '\073' LINES TERMINATED BY '\n' LOCATION'hdfs://hsspas610:8020/RSA/Staging/stg_prd_pr_ccs_no_claims/Skadested';
CREATE EXTERNAL TABLE IF NOT EXISTS TempToCheckLogshipppingStatus(Column smallint,JustGuid uniqueidentifier,changed_timestamp timestamp) ROW FORMAT DELIMITEDFIELDS TERMINATED BY '\073' LINES TERMINATED BY '\n' LOCATION'hdfs://hsspas610:8020/RSA/Staging/stg_prd_pr_ccs_no_claims/TempToCheckLogshipppingStatus';
CREATE EXTERNAL TABLE IF NOT EXISTS Transactions(TransactionID int,TransactionName string,ContraTransactionId int,MainTransactionId int,changed_timestamp timestamp) ROW FORMAT DELIMITEDFIELDS TERMINATED BY '\073' LINES TERMINATED BY '\n' LOCATION'hdfs://hsspas610:8020/RSA/Staging/stg_prd_pr_ccs_no_claims/Transactions';
CREATE EXTERNAL TABLE IF NOT EXISTS UserCategory(UserCategoryId int,UserCategory string,UserTypeId int,changed_timestamp timestamp) ROW FORMAT DELIMITEDFIELDS TERMINATED BY '\073' LINES TERMINATED BY '\n' LOCATION'hdfs://hsspas610:8020/RSA/Staging/stg_prd_pr_ccs_no_claims/UserCategory';
CREATE EXTERNAL TABLE IF NOT EXISTS UserDetails(ClaimCaseID bigint,UserID bigint,AccessDateTime date,changed_timestamp timestamp) ROW FORMAT DELIMITEDFIELDS TERMINATED BY '\073' LINES TERMINATED BY '\n' LOCATION'hdfs://hsspas610:8020/RSA/Staging/stg_prd_pr_ccs_no_claims/UserDetails';
CREATE EXTERNAL TABLE IF NOT EXISTS UserLastLogin(UserLastLoginID bigint,UserId bigint,LastLoginDate date,changed_timestamp timestamp) ROW FORMAT DELIMITEDFIELDS TERMINATED BY '\073' LINES TERMINATED BY '\n' LOCATION'hdfs://hsspas610:8020/RSA/Staging/stg_prd_pr_ccs_no_claims/UserLastLogin';
CREATE EXTERNAL TABLE IF NOT EXISTS UserNotes(UserNoteID bigint,UserID bigint,Note string,DisplayDate date,SignedOut string,ClaimCaseID bigint,CaseEstimateId bigint,AssignedToUserId bigint,ReminderType int,Exported string,changed_timestamp timestamp) ROW FORMAT DELIMITEDFIELDS TERMINATED BY '\073' LINES TERMINATED BY '\n' LOCATION'hdfs://hsspas610:8020/RSA/Staging/stg_prd_pr_ccs_no_claims/UserNotes';
CREATE EXTERNAL TABLE IF NOT EXISTS UserPrivileges(UserId bigint,XML ntext,changed_timestamp timestamp) ROW FORMAT DELIMITEDFIELDS TERMINATED BY '\073' LINES TERMINATED BY '\n' LOCATION'hdfs://hsspas610:8020/RSA/Staging/stg_prd_pr_ccs_no_claims/UserPrivileges';
CREATE EXTERNAL TABLE IF NOT EXISTS Users(UserID bigint,FirstName varchar,LastName varchar,UserName varchar,Password binary,Salt binary,UserRoleID int,IsActive string,PasswordDate date,LoginFailureCount int,IsApproveRequired string,ApproveUserId bigint,WindowsUserID string,UserTypeId int,changed_timestamp timestamp) ROW FORMAT DELIMITEDFIELDS TERMINATED BY '\073' LINES TERMINATED BY '\n' LOCATION'hdfs://hsspas610:8020/RSA/Staging/stg_prd_pr_ccs_no_claims/Users';
CREATE EXTERNAL TABLE IF NOT EXISTS UserType(UserTypeId int,UserDescription string,changed_timestamp timestamp) ROW FORMAT DELIMITEDFIELDS TERMINATED BY '\073' LINES TERMINATED BY '\n' LOCATION'hdfs://hsspas610:8020/RSA/Staging/stg_prd_pr_ccs_no_claims/UserType';
CREATE EXTERNAL TABLE IF NOT EXISTS WeatherCode(WeatherCodeId bigint,CodeDescription string,Active string,changed_timestamp timestamp) ROW FORMAT DELIMITEDFIELDS TERMINATED BY '\073' LINES TERMINATED BY '\n' LOCATION'hdfs://hsspas610:8020/RSA/Staging/stg_prd_pr_ccs_no_claims/WeatherCode';
CREATE EXTERNAL TABLE IF NOT EXISTS WeatherCodeMapping(WeatherCodeId bigint,ClaimCaseID bigint,changed_timestamp timestamp) ROW FORMAT DELIMITEDFIELDS TERMINATED BY '\073' LINES TERMINATED BY '\n' LOCATION'hdfs://hsspas610:8020/RSA/Staging/stg_prd_pr_ccs_no_claims/WeatherCodeMapping';
