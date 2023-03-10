-- Creating a data warehouse
CREATE or REPLACE warehouse SOC_MD_WH WITH 
WAREHOUSE_SIZE = 'SMALL'
WAREHOUSE_TYPE = 'STANDARD'
AUTO_SUSPEND = 300
AUTO_RESUME = TRUE
MIN_CLUSTER_COUNT = 1 
MAX_CLUSTER_COUNT = 1 
SCALING_POLICY = 'STANDARD'
COMMENT = 'This is a warehouse for my data pipeline project'