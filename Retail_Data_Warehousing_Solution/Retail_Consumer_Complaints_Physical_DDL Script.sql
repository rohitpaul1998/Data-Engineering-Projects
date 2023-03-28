/*
 * ER/Studio Data Architect SQL Code Generation
 * Project :      Retail_Company_Dimension_Model_v3.DM1
 *
 * Date Created : Monday, March 27, 2023 20:20:24
 * Target DBMS : Google BigQuery
 */

/* 
 * TABLE: Dim_Company 
 */

CREATE TABLE Dim_Company(
    CompanySK        INTEGER        NOT NULL,
    Company          STRING(300),
    DI_CreateDate    DATETIME       NOT NULL,
    GeoSK            INTEGER        NOT NULL
)
OPTIONS( 
    friendly_name = "Dim_Company"
)
;

/* 
 * TABLE: Dim_Company_Complaint_Actions 
 */

CREATE TABLE Dim_Company_Complaint_Actions(
    ActionSK                        INTEGER        NOT NULL,
    Company_response_to_consumer    STRING(500),
    Company_public_response         STRING(500),
    DI_CreateDate                   DATETIME       NOT NULL
)
OPTIONS( 
    friendly_name = "Dim_Company_Complaint_Actions"
)
;

/* 
 * TABLE: Dim_Consumer_Complaint 
 */

CREATE TABLE Dim_Consumer_Complaint(
    ConsumerComplaintSK             INTEGER         NOT NULL,
    Consumer_complaint_narrative    STRING(1000),
    Submitted_via                   STRING(100),
    Tags                            STRING(100),
    DI_CreateDate                   DATETIME
)
OPTIONS( 
    friendly_name = "Dim_Consumer_Complaint"
)
;

/* 
 * TABLE: Dim_Date 
 */

CREATE TABLE Dim_Date(
    DateSK            INTEGER       NOT NULL,
    Date              DATE,
    Year_number       INTEGER,
    Month_name        STRING(20),
    Day_name          STRING(20),
    Day_is_weekday    STRING(20)
)
OPTIONS( 
    friendly_name = "Dim_Date"
)
;

/* 
 * TABLE: Dim_Geography 
 */

CREATE TABLE Dim_Geography(
    GeoSK            INTEGER       NOT NULL,
    State            STRING(20),
    Zip_code         STRING(50),
    DI_CreateDate    DATETIME      NOT NULL
)
OPTIONS( 
    friendly_name = "Dim_Geography"
)
;

/* 
 * TABLE: Dim_Issue 
 */

CREATE TABLE Dim_Issue(
    IssueSK          INTEGER        NOT NULL,
    Issue            STRING(500),
    DI_CreateDate    DATETIME       NOT NULL
)
OPTIONS( 
    friendly_name = "Dim_Issue"
)
;

/* 
 * TABLE: Dim_Junk_Consumer_Consent 
 */

CREATE TABLE Dim_Junk_Consumer_Consent(
    ConsentSK                    INTEGER        NOT NULL,
    Consumer_consent_provided    STRING(100)
)
OPTIONS( 
    friendly_name = "Dim_Junk_Consumer_Consent"
)
;

/* 
 * TABLE: Dim_Junk_Flags 
 */

CREATE TABLE Dim_Junk_Flags(
    FlagSK             INTEGER        NOT NULL,
    Timely_response    STRING(200)
)
OPTIONS( 
    friendly_name = "Dim_Junk_Flags"
)
;

/* 
 * TABLE: Dim_Product 
 */

CREATE TABLE Dim_Product(
    ProductSK        INTEGER        NOT NULL,
    Product          STRING(400),
    DI_CreateDate    DATETIME       NOT NULL
)
OPTIONS( 
    friendly_name = "Dim_Product"
)
;

/* 
 * TABLE: Dim_SubIssue 
 */

CREATE TABLE Dim_SubIssue(
    SubIssueSK       INTEGER        NOT NULL,
    Sub_Issue        STRING(500),
    DI_CreateDate    DATETIME       NOT NULL,
    IssueSK          INTEGER
)
OPTIONS( 
    friendly_name = "Dim_SubIssue"
)
;

/* 
 * TABLE: Dim_SubProduct 
 */

CREATE TABLE Dim_SubProduct(
    SubProductSK     INTEGER        NOT NULL,
    Sub_Product      STRING(400),
    DI_CreateDate    DATETIME       NOT NULL,
    ProductSK        INTEGER
)
OPTIONS( 
    friendly_name = "Dim_SubProduct"
)
;

/* 
 * TABLE: FCT_Complaint 
 */

CREATE TABLE FCT_Complaint(
    ComplaintSK             INTEGER     NOT NULL,
    ConsumerComplaintSK     INTEGER,
    ProductSK               INTEGER,
    IssueSK                 INTEGER,
    CompanySK               INTEGER,
    DateSK                  INTEGER     NOT NULL,
    ActionSK                INTEGER     NOT NULL,
    FlagSK                  INTEGER     NOT NULL,
    ConsentSK               INTEGER     NOT NULL,
    Date_sent_to_company    DATE,
    Date_received           DATE,
    Complaint_ID            INTEGER,
    DI_CreateDate           DATETIME    NOT NULL
)
OPTIONS( 
    friendly_name = "FCT_Complaint"
)
;

