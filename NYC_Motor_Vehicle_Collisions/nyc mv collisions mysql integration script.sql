CREATE DATABASE temp_nyc_collisions;

use temp_nyc_collisions;

CREATE TABLE dim_arrest_borough(
    borough_sk        int            auto_increment,
    boro_code         char(1)        NULL,
    borough           varchar(80)    NULL,
    DI_JobID          varchar(20)    NULL,
    DI_Create_Date    datetime       DEFAULT current_timestamp NOT NULL,
    PRIMARY KEY NONCLUSTERED (borough_sk)
);


/* 
 * TABLE: Dim_BODILY_INJURY 
 */

CREATE TABLE Dim_BODILY_INJURY(
    BODILY_INJURY_SK    int            auto_increment,
    BODILY_INJURY       varchar(80)    NULL,
    DI_PID              varchar(20)    NULL,
    DI_Create_Date      datetime       DEFAULT current_timestamp NULL,
    PRIMARY KEY NONCLUSTERED (BODILY_INJURY_SK)
);


/* 
 * TABLE: Dim_COMPLAINT 
 */

CREATE TABLE Dim_COMPLAINT(
    COMPLAINT_SK      int             auto_increment,
    COMPLAINT         varchar(255)    NULL,
    DI_PID            varchar(20)     NULL,
    DI_Create_Date    datetime        DEFAULT current_timestamp NULL,
    PRIMARY KEY NONCLUSTERED (COMPLAINT_SK)
);



/* 
 * TABLE: Dim_CONTRIBUTING_FACTOR 
 */

CREATE TABLE Dim_CONTRIBUTING_FACTOR(
    CONTRIBUTING_FACTOR_SK    int             auto_increment,
    CONTRIBUTING_FACTOR       varchar(255)    NULL,
    DI_PID                    varchar(20)     NULL,
    DI_Create_Date            datetime        DEFAULT current_timestamp NULL,
    PRIMARY KEY NONCLUSTERED (CONTRIBUTING_FACTOR_SK)
);



/* 
 * TABLE: Dim_DRIVER_LICENSE_JURISDICTION 
 */

CREATE TABLE Dim_DRIVER_LICENSE_JURISDICTION(
    DRIVER_LICENSE_JURISDICTION_SK    int             auto_increment,
    DRIVER_LICENSE_JURISDICTION       varchar(255)    NULL,
    DI_PID                            varchar(20)     NULL,
    DI_Create_Date                    datetime        DEFAULT current_timestamp NULL,
    PRIMARY KEY NONCLUSTERED (DRIVER_LICENSE_JURISDICTION_SK)
);



/* 
 * TABLE: Dim_DRIVER_LICENSE_STATUS 
 */

CREATE TABLE Dim_DRIVER_LICENSE_STATUS(
    DRIVER_LICENSE_STATUS_SK    int             auto_increment,
    DRIVER_LICENSE_STATUS       varchar(255)    NULL,
    DI_PID                      varchar(20)     NULL,
    DI_Create_Date              datetime        DEFAULT current_timestamp NULL,
    PRIMARY KEY NONCLUSTERED (DRIVER_LICENSE_STATUS_SK)
);



/* 
 * TABLE: Dim_EJECTION 
 */

CREATE TABLE Dim_EJECTION(
    EJECTION_SK       int            auto_increment,
    EJECTION          varchar(80)    NULL,
    DI_PID            varchar(20)    NULL,
    DI_Create_Date    datetime       DEFAULT current_timestamp NULL,
    PRIMARY KEY NONCLUSTERED (EJECTION_SK)
);


/* 
 * TABLE: Dim_EMOTIONAL_STATUS 
 */

CREATE TABLE Dim_EMOTIONAL_STATUS(
    EMOTIONAL_STATUS_SK    int            auto_increment,
    EMOTIONAL_STATUS       varchar(80)    NULL,
    DI_PID                 varchar(20)    NULL,
    DI_Create_Date         datetime       DEFAULT current_timestamp NULL,
    PRIMARY KEY NONCLUSTERED (EMOTIONAL_STATUS_SK)
);



/* 
 * TABLE: Dim_PED_ACTION 
 */

CREATE TABLE Dim_PED_ACTION(
    PED_ACTION_SK     int             auto_increment,
    PED_ACTION        varchar(255)    NULL,
    DI_PID            varchar(20)     NULL,
    DI_Create_Date    datetime        DEFAULT current_timestamp NULL,
    PRIMARY KEY NONCLUSTERED (PED_ACTION_SK)
);


/* 
 * TABLE: Dim_PED_LOCATION 
 */

CREATE TABLE Dim_PED_LOCATION(
    PED_LOCATION_SK    int             auto_increment,
    PED_LOCATION       varchar(255)    NULL,
    DI_PID             varchar(20)     NULL,
    DI_Create_Date     datetime        DEFAULT current_timestamp NULL,
    PRIMARY KEY NONCLUSTERED (PED_LOCATION_SK)
);


/* 
 * TABLE: Dim_PED_ROLE 
 */

CREATE TABLE Dim_PED_ROLE(
    PED_ROLE_SK       int             auto_increment,
    PED_ROLE          varchar(255)    NULL,
    DI_PID            varchar(20)     NULL,
    DI_Create_Date    datetime        DEFAULT current_timestamp NULL,
    PRIMARY KEY NONCLUSTERED (PED_ROLE_SK)
);



/* 
 * TABLE: Dim_PERSON_INJURY 
 */

CREATE TABLE Dim_PERSON_INJURY(
    PERSON_INJURY_SK    int            auto_increment,
    PERSON_INJURY       varchar(80)    NULL,
    DI_PID              varchar(20)    NULL,
    DI_Create_Date      datetime       DEFAULT current_timestamp NULL,
    PRIMARY KEY NONCLUSTERED (PERSON_INJURY_SK)
);


/* 
 * TABLE: Dim_PERSON_SEX 
 */

CREATE TABLE Dim_PERSON_SEX(
    PERSON_SEX_SK     int            auto_increment,
    PERSON_SEX        varchar(10)    NULL,
    DI_PID            varchar(20)    NULL,
    DI_Create_Date    datetime       DEFAULT current_timestamp NULL,
    PRIMARY KEY NONCLUSTERED (PERSON_SEX_SK)
);


/* 
 * TABLE: Dim_PersonType 
 */

CREATE TABLE Dim_PersonType(
    PERSON_TYPE_SK    int            auto_increment,
    PERSON_TYPE       varchar(80)    NULL,
    DI_PID            varchar(20)    NULL,
    DI_Create_Date    datetime       DEFAULT current_timestamp NULL,
    PRIMARY KEY NONCLUSTERED (PERSON_TYPE_SK)
);


/* 
 * TABLE: Dim_POINT_OF_IMPACT 
 */

CREATE TABLE Dim_POINT_OF_IMPACT(
    POINT_OF_IMPACT_SK    int             auto_increment,
    POINT_OF_IMPACT       varchar(255)    NULL,
    DI_PID                varchar(20)     NULL,
    DI_Create_Date        datetime        DEFAULT current_timestamp NULL,
    PRIMARY KEY NONCLUSTERED (POINT_OF_IMPACT_SK)
);



/* 
 * TABLE: Dim_POSITION_IN_VEHICLE 
 */

CREATE TABLE Dim_POSITION_IN_VEHICLE(
    POSITION_IN_VEHICLE_SK    int             auto_increment,
    POSITION_IN_VEHICLE       varchar(255)    NULL,
    DI_PID                    varchar(20)     NULL,
    DI_Create_Date            datetime        DEFAULT current_timestamp NULL,
    PRIMARY KEY NONCLUSTERED (POSITION_IN_VEHICLE_SK)
);


/* 
 * TABLE: Dim_PRE_CRASH 
 */

CREATE TABLE Dim_PRE_CRASH(
    PRE_CRASH_SK      int             auto_increment,
    PRE_CRASH         varchar(255)    NULL,
    DI_PID            varchar(20)     NULL,
    DI_Create_Date    datetime        DEFAULT current_timestamp NULL,
    PRIMARY KEY NONCLUSTERED (PRE_CRASH_SK)
);


/* 
 * TABLE: Dim_PUBLIC_PROPERTY_DAMAGE 
 */

CREATE TABLE Dim_PUBLIC_PROPERTY_DAMAGE(
    PUBLIC_PROPERTY_DAMAGE_SK    int             auto_increment,
    PUBLIC_PROPERTY_DAMAGE       varchar(255)    NULL,
    DI_PID                       varchar(20)     NULL,
    DI_Create_Date               datetime        DEFAULT current_timestamp NULL,
    PRIMARY KEY NONCLUSTERED (PUBLIC_PROPERTY_DAMAGE_SK)
);



/* 
 * TABLE: Dim_SAFETY_EQUIPMENT 
 */

CREATE TABLE Dim_SAFETY_EQUIPMENT(
    SAFETY_EQUIPMENT_SK    int             auto_increment,
    SAFETY_EQUIPMENT       varchar(255)    NULL,
    DI_PID                 varchar(20)     NULL,
    DI_Create_Date         datetime        DEFAULT current_timestamp NULL,
    PRIMARY KEY NONCLUSTERED (SAFETY_EQUIPMENT_SK)
);

/* 
 * TABLE: Dim_STATE_REGISTRATION 
 */

CREATE TABLE Dim_STATE_REGISTRATION(
    STATE_REGISTRATION_SK    int            auto_increment,
    STATE_REGISTRATION       varchar(80)    NULL,
    DI_PID                   varchar(20)    NULL,
    DI_Create_Date           datetime       DEFAULT current_timestamp NULL,
    PRIMARY KEY NONCLUSTERED (STATE_REGISTRATION_SK)
);

/* 
 * TABLE: Dim_TRAVEL_DIRECTION 
 */

CREATE TABLE Dim_TRAVEL_DIRECTION(
    TRAVEL_DIRECTION_SK    int             auto_increment,
    TRAVEL_DIRECTION       varchar(255)    NULL,
    DI_PID                 varchar(20)     NULL,
    DI_Create_Date         datetime        DEFAULT current_timestamp NULL,
    PRIMARY KEY NONCLUSTERED (TRAVEL_DIRECTION_SK)
);


/* 
 * TABLE: Dim_VEHICLE_DAMAGE 
 */

CREATE TABLE Dim_VEHICLE_DAMAGE(
    VEHICLE_DAMAGE_SK    int             auto_increment,
    VEHICLE_DAMAGE       varchar(255)    NULL,
    DI_PID               varchar(20)     NULL,
    DI_Create_Date       datetime        DEFAULT current_timestamp NULL,
    PRIMARY KEY NONCLUSTERED (VEHICLE_DAMAGE_SK)
);


/* 
 * TABLE: Dim_VEHICLE_MAKE 
 */

CREATE TABLE Dim_VEHICLE_MAKE(
    VEHICLE_MAKE_SK    int            auto_increment,
    VEHICLE_MAKE       varchar(80)    NULL,
    DI_PID             varchar(20)    NULL,
    DI_Create_Date     datetime       DEFAULT current_timestamp NULL,
    PRIMARY KEY NONCLUSTERED (VEHICLE_MAKE_SK)
);


/* 
 * TABLE: Dim_VEHICLE_MODEL 
 */

CREATE TABLE Dim_VEHICLE_MODEL(
    VEHICLE_MODEL_SK    int            auto_increment,
    VEHICLE_MODEL       varchar(80)    NULL,
    DI_PID              varchar(20)    NULL,
    DI_Create_Date      datetime       DEFAULT current_timestamp NULL,
    PRIMARY KEY NONCLUSTERED (VEHICLE_MODEL_SK)
);

/* 
 * TABLE: Dim_VEHICLE_TYPE 
 */

CREATE TABLE Dim_VEHICLE_TYPE(
    VEHICLE_TYPE_SK    int            auto_increment,
    VEHICLE_TYPE       varchar(80)    NULL,
    DI_PID             varchar(20)    NULL,
    DI_Create_Date     datetime       DEFAULT current_timestamp NULL,
    PRIMARY KEY NONCLUSTERED (VEHICLE_TYPE_SK)
);

/* 
 * TABLE: dim_vehicle_type_code 
 */

CREATE TABLE dim_vehicle_type_code(
    vehicle_type_code_SK    int            auto_increment,
    vehicle_type_code       varchar(80)    NULL,
    DI_JobID                varchar(20)    NULL,
    DI_Create_Date          datetime       DEFAULT current_timestamp NOT NULL,
    PRIMARY KEY NONCLUSTERED (vehicle_type_code_SK)
);


/* 
 * TABLE: ERR_Model_Year 
 */

CREATE TABLE ERR_Model_Year(
    UNIQUE_ID       int            NULL,
    COLLISION_ID    int            NULL,
    CRASH_DATE      datetime       NULL,
    VEHICLE_YEAR    varchar(80)    NULL
);

/* 
 * TABLE: fct_collision_crashes 
 */

CREATE TABLE fct_collision_crashes(
    crash_sk                          bigint            NOT NULL,
    collision_id                      bigint            NULL,
    collision_dt                      datetime          NULL,
    collision_dt_sk                   int               NULL,
    collision_day                     date              NULL,
    collision_time                    time(6)           NULL,
    collision_hour                    int               NULL,
    collision_dayoftheweek            int               NULL,
    borough_sk                        int               NULL,
    borough                           varchar(80)       NULL,
    zip_code                          varchar(40)       NULL,
    off_street_name                   varchar(40)       NULL,
    on_street_name                    varchar(40)       NULL,
    cross_street_name                 varchar(40)       NULL,
    latitude                          numeric(24, 6)    NULL,
    longitude                         numeric(24, 6)    NULL,
    location                          varchar(256)      NULL,
    number_of_cyclist_injured         int               NULL,
    number_of_cyclist_killed          int               NULL,
    number_of_motorist_injured        int               NULL,
    number_of_motorist_killed         int               NULL,
    number_of_pedestrians_injured     int               NULL,
    number_of_pedestrians_killed      int               NULL,
    number_of_persons_injured         int               NULL,
    number_of_persons_killed          int               NULL,
    number_of_vehicles_involved       int               NULL,
    number_of_contributing_factors    int               NULL,
    DI_JobID                          varchar(20)       NULL,
    DI_Create_Date                    datetime          DEFAULT current_timestamp NOT NULL,
    PRIMARY KEY NONCLUSTERED (crash_sk)
);


/* 
 * TABLE: fct_collision_crashes_vehicles 
 */

CREATE TABLE fct_collision_crashes_vehicles(
    collision_sk                      bigint         NOT NULL,
    collision_id                      bigint         NOT NULL,
    Vehicle_number                    int            NOT NULL,
    vehicle_type_code_SK              int            NULL,
    contributing_factor_vehicle_sk    int            NOT NULL,
    DI_JobID                          varchar(20)    NULL,
    DI_Create_Date                    datetime       DEFAULT current_timestamp NOT NULL,
    VEHICLE_MAKE_SK                   int            NULL,
    VEHICLE_TYPE_SK                   int            NULL,
    crash_sk                          bigint         NULL,
    PRIMARY KEY NONCLUSTERED (collision_sk, Vehicle_number)
);



/* 
 * TABLE: fct_collision_persons 
 */

CREATE TABLE fct_collision_persons(
    UNIQUE_ID                 int            NOT NULL,
    COLLISION_ID              int            NULL,
    PERSON_ID                 varchar(80)    NULL,
    PERSON_TYPE_SK            int            NOT NULL,
    PERSON_INJURY_SK          int            NOT NULL,
    VEHICLE_ID                varchar(80)    NULL,
    PERSON_AGE                int            NULL,
    EJECTION_SK               int            NOT NULL,
    EMOTIONAL_STATUS_SK       int            NOT NULL,
    BODILY_INJURY_SK          int            NOT NULL,
    POSITION_IN_VEHICLE_SK    int            NOT NULL,
    SAFETY_EQUIPMENT_SK       int            NOT NULL,
    PED_LOCATION_SK           int            NOT NULL,
    PED_ACTION_SK             int            NOT NULL,
    COMPLAINT_SK              int            NOT NULL,
    PED_ROLE_SK               int            NOT NULL,
    PERSON_SEX_SK             int            NOT NULL,
    DI_PID                    varchar(20)    NULL,
    DI_Create_Date            datetime       DEFAULT current_timestamp NULL,
    PRIMARY KEY NONCLUSTERED (UNIQUE_ID)
);


/* 
 * TABLE: fct_collision_persons_contributing_factors 
 */

CREATE TABLE fct_collision_persons_contributing_factors(
    TABLE_SK                  int            auto_increment,
    UNIQUE_ID                 int            NOT NULL,
    COLLISION_ID              int            NULL,
    PERSON_ID                 varchar(80)    NULL,
    FACTOR_NUMBER             int            NULL,
    CONTRIBUTING_FACTOR_SK    int            NOT NULL,
    DI_PID                    varchar(20)    NULL,
    DI_Create_Date            datetime       DEFAULT current_timestamp NULL,
    PRIMARY KEY NONCLUSTERED (TABLE_SK)
);

/* 
 * TABLE: fct_Collisions_Vehicles 
 */

CREATE TABLE fct_Collisions_Vehicles(
    UNIQUE_ID                         int              NOT NULL,
    COLLISION_ID                      int              NULL,
    VEHICLE_ID                        varchar(80)      NULL,
    STATE_REGISTRATION_SK             int              NOT NULL,
    
	VEHICLE_TYPE_SK          int              NOT NULL,
    
	VEHICLE_MAKE_SK          int              NOT NULL,
    VEHICLE_MODEL_SK                  int              NOT NULL,
    VEHICLE_YEAR                      varchar(80)      NULL,
    TRAVEL_DIRECTION_SK               int              NOT NULL,
    VEHICLE_OCCUPANTS                 int              NULL,
    PERSON_SEX_SK                     int              NOT NULL,
    DRIVER_LICENSE_STATUS_SK          int              NOT NULL,
    DRIVER_LICENSE_JURISDICTION_SK    int              NOT NULL,
    PRE_CRASH_SK                      int              NOT NULL,
    POINT_OF_IMPACT_SK                int              NOT NULL,
    PUBLIC_PROPERTY_DAMAGE_SK         int              NOT NULL,
    PUBLIC_PROPERTY_DAMAGE_TYPE       varchar(1024)    NULL,
    DI_PID                            varchar(20)      NULL,
    DI_Create_Date                    datetime         DEFAULT current_timestamp NOT NULL,
    PRIMARY KEY NONCLUSTERED (UNIQUE_ID)
);


/* 
 * TABLE: fct_Collisions_Vehicles_Contributing_Factors 
 */

CREATE TABLE fct_Collisions_Vehicles_Contributing_Factors(
    TABLE_SK                       int            auto_increment,
    UNIQUE_ID                      int            NOT NULL,
    COLLISION_ID                   int            NULL,
    VEHICLE_ID                     varchar(80)    NULL,
    VEHICLE_CONTRIBUTING_NUMBER    int            NULL,
    CONTRIBUTING_FACTOR_SK         int            NOT NULL,
    DI_PID                         varchar(20)    NULL,
    DI_Create_Date                 datetime       DEFAULT current_timestamp NOT NULL,
    PRIMARY KEY NONCLUSTERED (TABLE_SK)
);


/* 
 * TABLE: fct_Collisions_Vehicles_Vehicle_Damage 
 */

CREATE TABLE fct_Collisions_Vehicles_Vehicle_Damage(
    TABLE_SK                 int            auto_increment,
    UNIQUE_ID                int            NOT NULL,
    COLLISION_ID             int            NULL,
    VEHICLE_ID               varchar(80)    NULL,
    VEHICLE_DAMAGE_NUMBER    int            NULL,
    VEHICLE_DAMAGE_SK        int            NOT NULL,
    DI_PID                   varchar(20)    NULL,
    DI_Create_Date           datetime       DEFAULT current_timestamp NOT NULL,
    PRIMARY KEY NONCLUSTERED (TABLE_SK)
);

/* 
 * TABLE: ERR_Model_Year 
 */

ALTER TABLE ERR_Model_Year ADD 
    FOREIGN KEY (UNIQUE_ID)
    REFERENCES fct_collision_persons(UNIQUE_ID);

ALTER TABLE ERR_Model_Year ADD 
    FOREIGN KEY (UNIQUE_ID)
    REFERENCES fct_Collisions_Vehicles(UNIQUE_ID);



/* 
 * TABLE: fct_collision_crashes 
 */

ALTER TABLE fct_collision_crashes ADD 
    FOREIGN KEY (borough_sk)
    REFERENCES dim_arrest_borough(borough_sk);



/* 
 * TABLE: fct_collision_crashes_vehicles 
 */

ALTER TABLE fct_collision_crashes_vehicles ADD 
    FOREIGN KEY (vehicle_type_code_SK)
    REFERENCES dim_vehicle_type_code(vehicle_type_code_SK);


ALTER TABLE fct_collision_crashes_vehicles ADD 
    FOREIGN KEY (VEHICLE_MAKE_SK)
    REFERENCES Dim_VEHICLE_MAKE(VEHICLE_MAKE_SK);


ALTER TABLE fct_collision_crashes_vehicles ADD 
    FOREIGN KEY (VEHICLE_TYPE_SK)
    REFERENCES Dim_VEHICLE_TYPE(VEHICLE_TYPE_SK);


ALTER TABLE fct_collision_crashes_vehicles ADD 
    FOREIGN KEY (crash_sk)
    REFERENCES fct_collision_crashes(crash_sk);



/* 
 * TABLE: fct_collision_persons 
 */

ALTER TABLE fct_collision_persons ADD 
    FOREIGN KEY (PERSON_SEX_SK)
    REFERENCES Dim_PERSON_SEX(PERSON_SEX_SK);


ALTER TABLE fct_collision_persons ADD 
    FOREIGN KEY (PERSON_TYPE_SK)
    REFERENCES Dim_PersonType(PERSON_TYPE_SK);


ALTER TABLE fct_collision_persons ADD 
    FOREIGN KEY (EJECTION_SK)
    REFERENCES Dim_EJECTION(EJECTION_SK);


ALTER TABLE fct_collision_persons ADD 
    FOREIGN KEY (EMOTIONAL_STATUS_SK)
    REFERENCES Dim_EMOTIONAL_STATUS(EMOTIONAL_STATUS_SK);


ALTER TABLE fct_collision_persons ADD 
    FOREIGN KEY (POSITION_IN_VEHICLE_SK)
    REFERENCES Dim_POSITION_IN_VEHICLE(POSITION_IN_VEHICLE_SK);


ALTER TABLE fct_collision_persons ADD 
    FOREIGN KEY (PED_ACTION_SK)
    REFERENCES Dim_PED_ACTION(PED_ACTION_SK);


ALTER TABLE fct_collision_persons ADD 
    FOREIGN KEY (BODILY_INJURY_SK)
    REFERENCES Dim_BODILY_INJURY(BODILY_INJURY_SK);


ALTER TABLE fct_collision_persons ADD 
    FOREIGN KEY (PED_LOCATION_SK)
    REFERENCES Dim_PED_LOCATION(PED_LOCATION_SK);


ALTER TABLE fct_collision_persons ADD 
    FOREIGN KEY (COMPLAINT_SK)
    REFERENCES Dim_COMPLAINT(COMPLAINT_SK);


ALTER TABLE fct_collision_persons ADD 
    FOREIGN KEY (SAFETY_EQUIPMENT_SK)
    REFERENCES Dim_SAFETY_EQUIPMENT(SAFETY_EQUIPMENT_SK);


ALTER TABLE fct_collision_persons ADD 
    FOREIGN KEY (PED_ROLE_SK)
    REFERENCES Dim_PED_ROLE(PED_ROLE_SK);


ALTER TABLE fct_collision_persons ADD 
    FOREIGN KEY (PERSON_INJURY_SK)
    REFERENCES Dim_PERSON_INJURY(PERSON_INJURY_SK);



/* 
 * TABLE: fct_collision_persons_contributing_factors 
 */

ALTER TABLE fct_collision_persons_contributing_factors ADD 
    FOREIGN KEY (UNIQUE_ID)
    REFERENCES fct_collision_persons(UNIQUE_ID);


ALTER TABLE fct_collision_persons_contributing_factors ADD 
    FOREIGN KEY (UNIQUE_ID)
    REFERENCES fct_Collisions_Vehicles(UNIQUE_ID);


ALTER TABLE fct_collision_persons_contributing_factors ADD 
    FOREIGN KEY (CONTRIBUTING_FACTOR_SK)
    REFERENCES Dim_CONTRIBUTING_FACTOR(CONTRIBUTING_FACTOR_SK);



/* 
 * TABLE: fct_Collisions_Vehicles 
 */

ALTER TABLE fct_Collisions_Vehicles ADD 
    FOREIGN KEY (TRAVEL_DIRECTION_SK)
    REFERENCES Dim_TRAVEL_DIRECTION(TRAVEL_DIRECTION_SK);


ALTER TABLE fct_Collisions_Vehicles ADD 
    FOREIGN KEY (PERSON_SEX_SK)
    REFERENCES Dim_PERSON_SEX(PERSON_SEX_SK);


ALTER TABLE fct_Collisions_Vehicles ADD 
    FOREIGN KEY (DRIVER_LICENSE_STATUS_SK)
    REFERENCES Dim_DRIVER_LICENSE_STATUS(DRIVER_LICENSE_STATUS_SK);


ALTER TABLE fct_Collisions_Vehicles ADD 
    FOREIGN KEY (POINT_OF_IMPACT_SK)
    REFERENCES Dim_POINT_OF_IMPACT(POINT_OF_IMPACT_SK);


ALTER TABLE fct_Collisions_Vehicles ADD 
    FOREIGN KEY (VEHICLE_MODEL_SK)
    REFERENCES Dim_VEHICLE_MODEL(VEHICLE_MODEL_SK);


ALTER TABLE fct_Collisions_Vehicles ADD 
    FOREIGN KEY (PRE_CRASH_SK)
    REFERENCES Dim_PRE_CRASH(PRE_CRASH_SK);


ALTER TABLE fct_Collisions_Vehicles ADD 
    FOREIGN KEY (STATE_REGISTRATION_SK)
    REFERENCES Dim_STATE_REGISTRATION(STATE_REGISTRATION_SK);


ALTER TABLE fct_Collisions_Vehicles ADD 
    FOREIGN KEY (DRIVER_LICENSE_JURISDICTION_SK)
    REFERENCES Dim_DRIVER_LICENSE_JURISDICTION(DRIVER_LICENSE_JURISDICTION_SK);


ALTER TABLE fct_Collisions_Vehicles ADD 
    FOREIGN KEY (PUBLIC_PROPERTY_DAMAGE_SK)
    REFERENCES Dim_PUBLIC_PROPERTY_DAMAGE(PUBLIC_PROPERTY_DAMAGE_SK);



/* 
 * TABLE: fct_Collisions_Vehicles_Contributing_Factors 
 */

ALTER TABLE fct_Collisions_Vehicles_Contributing_Factors ADD 
    FOREIGN KEY (UNIQUE_ID)
    REFERENCES fct_collision_persons(UNIQUE_ID);


ALTER TABLE fct_Collisions_Vehicles_Contributing_Factors ADD 
    FOREIGN KEY (UNIQUE_ID)
    REFERENCES fct_Collisions_Vehicles(UNIQUE_ID);


ALTER TABLE fct_Collisions_Vehicles_Contributing_Factors ADD 
    FOREIGN KEY (CONTRIBUTING_FACTOR_SK)
    REFERENCES Dim_CONTRIBUTING_FACTOR(CONTRIBUTING_FACTOR_SK);



/* 
 * TABLE: fct_Collisions_Vehicles_Vehicle_Damage 
 */

ALTER TABLE fct_Collisions_Vehicles_Vehicle_Damage ADD 
    FOREIGN KEY (VEHICLE_DAMAGE_SK)
    REFERENCES Dim_VEHICLE_DAMAGE(VEHICLE_DAMAGE_SK);


ALTER TABLE fct_Collisions_Vehicles_Vehicle_Damage ADD 
    FOREIGN KEY (UNIQUE_ID)
    REFERENCES fct_collision_persons(UNIQUE_ID);


ALTER TABLE fct_Collisions_Vehicles_Vehicle_Damage ADD 
    FOREIGN KEY (UNIQUE_ID)
    REFERENCES fct_Collisions_Vehicles(UNIQUE_ID);



