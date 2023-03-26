-- `extreme-citadel-377404`.rp_retailwarehousing_dataset.Dim_Company definition

-- Drop table

-- DROP TABLE `extreme-citadel-377404`.rp_retailwarehousing_dataset.Dim_Company;

CREATE TABLE `extreme-citadel-377404`.rp_retailwarehousing_dataset.Dim_Company (
	CompanySK INT64 NOT NULL,
	Company STRING(300),
	DI_CreateDate DATETIME NOT NULL,
	GeoSK INT64
);


-- `extreme-citadel-377404`.rp_retailwarehousing_dataset.Dim_Company_Complaint_Actions definition

-- Drop table

-- DROP TABLE `extreme-citadel-377404`.rp_retailwarehousing_dataset.Dim_Company_Complaint_Actions;

CREATE TABLE `extreme-citadel-377404`.rp_retailwarehousing_dataset.Dim_Company_Complaint_Actions (
	ActionSK INT64 NOT NULL,
	Company_response_to_consumer STRING(500),
	Company_public_response STRING(500),
	DI_CreateDate DATETIME NOT NULL
);


-- `extreme-citadel-377404`.rp_retailwarehousing_dataset.Dim_Consumer_Complaint definition

-- Drop table

-- DROP TABLE `extreme-citadel-377404`.rp_retailwarehousing_dataset.Dim_Consumer_Complaint;

CREATE TABLE `extreme-citadel-377404`.rp_retailwarehousing_dataset.Dim_Consumer_Complaint (
	ConsumerComplaintSK INT64 NOT NULL,
	Consumer_complaint_narrative STRING(1000),
	Submitted_via STRING(100),
	Tags STRING(100),
	DI_CreateDate DATETIME NOT NULL
);


-- `extreme-citadel-377404`.rp_retailwarehousing_dataset.Dim_Date definition

-- Drop table

-- DROP TABLE `extreme-citadel-377404`.rp_retailwarehousing_dataset.Dim_Date;

CREATE TABLE `extreme-citadel-377404`.rp_retailwarehousing_dataset.Dim_Date (
	DateSK INT64 NOT NULL,
	`Date` DATE NOT NULL,
	Year_number INT64 NOT NULL,
	Month_name STRING(50) NOT NULL,
	Day_name STRING(50) NOT NULL,
	Day_is_weekday STRING(20) NOT NULL
);


-- `extreme-citadel-377404`.rp_retailwarehousing_dataset.Dim_Geography definition

-- Drop table

-- DROP TABLE `extreme-citadel-377404`.rp_retailwarehousing_dataset.Dim_Geography;

CREATE TABLE `extreme-citadel-377404`.rp_retailwarehousing_dataset.Dim_Geography (
	GeoSK INT64 NOT NULL,
	State STRING(20),
	Zip_code STRING(50),
	DI_CreateDate DATETIME NOT NULL
);


-- `extreme-citadel-377404`.rp_retailwarehousing_dataset.Dim_Issue definition

-- Drop table

-- DROP TABLE `extreme-citadel-377404`.rp_retailwarehousing_dataset.Dim_Issue;

CREATE TABLE `extreme-citadel-377404`.rp_retailwarehousing_dataset.Dim_Issue (
	IssueSK INT64 NOT NULL,
	Issue STRING(500),
	DI_CreateDate DATETIME NOT NULL
);


-- `extreme-citadel-377404`.rp_retailwarehousing_dataset.Dim_Junk_Consumer_Consent definition

-- Drop table

-- DROP TABLE `extreme-citadel-377404`.rp_retailwarehousing_dataset.Dim_Junk_Consumer_Consent;

CREATE TABLE `extreme-citadel-377404`.rp_retailwarehousing_dataset.Dim_Junk_Consumer_Consent (
	ConsentSK INT64 NOT NULL,
	Consumer_consent_provided STRING(100)
);


-- `extreme-citadel-377404`.rp_retailwarehousing_dataset.Dim_Junk_Flags definition

-- Drop table

-- DROP TABLE `extreme-citadel-377404`.rp_retailwarehousing_dataset.Dim_Junk_Flags;

CREATE TABLE `extreme-citadel-377404`.rp_retailwarehousing_dataset.Dim_Junk_Flags (
	FlagSK INT64 NOT NULL,
	Timely_response STRING(200)
);


-- `extreme-citadel-377404`.rp_retailwarehousing_dataset.Dim_Product definition

-- Drop table

-- DROP TABLE `extreme-citadel-377404`.rp_retailwarehousing_dataset.Dim_Product;

CREATE TABLE `extreme-citadel-377404`.rp_retailwarehousing_dataset.Dim_Product (
	ProductSK INT64 NOT NULL,
	Product STRING(400),
	DI_CreateDate DATETIME NOT NULL
);


-- `extreme-citadel-377404`.rp_retailwarehousing_dataset.Dim_SubIssue definition

-- Drop table

-- DROP TABLE `extreme-citadel-377404`.rp_retailwarehousing_dataset.Dim_SubIssue;

CREATE TABLE `extreme-citadel-377404`.rp_retailwarehousing_dataset.Dim_SubIssue (
	SubIssueSK INT64 NOT NULL,
	Sub_Issue STRING(500),
	DI_CreateDate DATETIME NOT NULL,
	IssueSK INT64
);


-- `extreme-citadel-377404`.rp_retailwarehousing_dataset.Dim_SubProduct definition

-- Drop table

-- DROP TABLE `extreme-citadel-377404`.rp_retailwarehousing_dataset.Dim_SubProduct;

CREATE TABLE `extreme-citadel-377404`.rp_retailwarehousing_dataset.Dim_SubProduct (
	SubProductSK INT64 NOT NULL,
	Sub_Product STRING(400),
	DI_CreateDate DATETIME NOT NULL,
	ProductSK INT64
);


-- `extreme-citadel-377404`.rp_retailwarehousing_dataset.FCT_Complaint definition

-- Drop table

-- DROP TABLE `extreme-citadel-377404`.rp_retailwarehousing_dataset.FCT_Complaint;

CREATE TABLE `extreme-citadel-377404`.rp_retailwarehousing_dataset.FCT_Complaint (
	ComplaintSK INT64 NOT NULL,
	ConsumerComplaintSK INT64,
	ProductSK INT64,
	IssueSK INT64,
	CompanySK INT64,
	DateSK INT64,
	ActionSK INT64,
	FlagSK INT64,
	ConsentSK INT64,
	Date_sent_to_company DATE,
	Date_received DATE,
	Complaint_ID INT64,
	DI_CreateDate DATETIME NOT NULL
);