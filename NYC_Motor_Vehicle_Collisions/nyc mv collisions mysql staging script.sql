-- nyc mv collisions Stage Tables
-- 2022-11-19
-- r sherman

--- ----------------------------------------------
--- MySQL 
--- ----------------------------------------------

-- CREATE DATABASE temp_nyc_collisions_stg;
-- USE temp_nyc_collisions_stg;



CREATE TABLE stg_nyc_mv_collisions_BigQuery
(
	COLLISION_ID bigint  ,   -- unique_key
	collision_dt datetime   ,              -- timestamp
	collision_day date   ,                  -- derive
	collision_time time   ,                 -- derive
	collision_hour int   ,                   -- derive
	collision_dayoftheweek int   ,     -- derive
	borough varchar(40)   ,
	zip_code varchar(40)   ,
	off_street_name varchar(40)   ,
	on_street_name varchar(40)   ,
	cross_street_name varchar(40)   ,
	latitude numeric(24,6)   ,
	longitude numeric(24,6)   ,
	location varchar(256)   ,
	contributing_factor_vehicle_1 varchar(256)   ,
	contributing_factor_vehicle_2 varchar(256)   ,
	contributing_factor_vehicle_3 varchar(256)   ,
	contributing_factor_vehicle_4 varchar(256)   ,
	contributing_factor_vehicle_5 varchar(256)   ,
	number_of_cyclist_injured int   ,
	number_of_cyclist_killed int   ,
	number_of_motorist_injured int   ,
	number_of_motorist_killed int   ,
	number_of_pedestrians_injured int   ,
	number_of_pedestrians_killed int   ,
	number_of_persons_injured int   ,
	number_of_persons_killed int   ,
	vehicle_type_code1 varchar(80)   ,
	vehicle_type_code2 varchar(80)   ,
	vehicle_type_code_3 varchar(80)   ,
	vehicle_type_code_4 varchar(80)   ,
	vehicle_type_code_5 varchar(80)   ,
	
	DI_JobID varchar(20)   ,
	DI_CreateDate  datetime
);


-- DROP TABLE STG_MV_Collisions_Vehicles;

CREATE TABLE stg_nyc_mv_collision_vehicles (
	UNIQUE_ID bigint  ,
	COLLISION_ID bigint  ,
	CRASH_DATE datetime   ,
	CRASH_TIME time   ,
	VEHICLE_ID varchar(80)   ,
	STATE_REGISTRATION varchar(80)   ,
	VEHICLE_TYPE varchar(80)   ,
	VEHICLE_MAKE varchar(80)   ,
	VEHICLE_MODEL varchar(80)   ,
	VEHICLE_YEAR varchar(80)   ,
	TRAVEL_DIRECTION varchar(255)   ,
	VEHICLE_OCCUPANTS int   ,
	DRIVER_SEX varchar(80)   ,
	DRIVER_LICENSE_STATUS varchar(255)   ,
	DRIVER_LICENSE_JURISDICTION varchar(255)   ,
	PRE_CRASH varchar(255)   ,
	POINT_OF_IMPACT varchar(255)   ,
	VEHICLE_DAMAGE varchar(255)   ,
	VEHICLE_DAMAGE_1 varchar(255)   ,
	VEHICLE_DAMAGE_2 varchar(255)   ,
	VEHICLE_DAMAGE_3 varchar(255)   ,
	PUBLIC_PROPERTY_DAMAGE varchar(1024)   ,
	PUBLIC_PROPERTY_DAMAGE_TYPE varchar(1024)   ,
	CONTRIBUTING_FACTOR_1 varchar(255)   ,
	CONTRIBUTING_FACTOR_2 varchar(255)   ,
	
	DI_PID varchar(20)   ,
	DI_Create_Date  datetime
);


-- DROP TABLE STG_MV_Collision_Persons;

CREATE TABLE stg_nyc_mv_collision_persons (
	UNIQUE_ID bigint  ,
	COLLISION_ID bigint  ,
	CRASH_DATE datetime   ,
	CRASH_TIME time   ,
	PERSON_ID varchar(80)   ,
	PERSON_TYPE varchar(80)   ,
	PERSON_INJURY varchar(80)   ,
	VEHICLE_ID varchar(80)   ,
	PERSON_AGE int   ,
	EJECTION varchar(80)   ,
	EMOTIONAL_STATUS varchar(80)   ,
	BODILY_INJURY varchar(80)   ,
	POSITION_IN_VEHICLE varchar(255)   ,
	SAFETY_EQUIPMENT varchar(255)   ,
	PED_LOCATION varchar(255)   ,
	PED_ACTION varchar(255)   ,
	COMPLAINT varchar(255)   ,
	PED_ROLE varchar(255)   ,
	CONTRIBUTING_FACTOR_1 varchar(255)   ,
	CONTRIBUTING_FACTOR_2 varchar(255)   ,
	PERSON_SEX varchar(10)   ,
	
	DI_PID varchar(20)   ,
	DI_Create_Date  datetime
);


