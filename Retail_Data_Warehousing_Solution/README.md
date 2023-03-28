### Retail Company Data Warehousing Solution
**Problem statement**: 
Build a data warehousing solution for a retail company that enables analysis of their product complaints and consumer data. The solution will include source system analysis (data profiling) in Alteryx, data staging to MS SQL Server, ETL development in Talend to extract, transform, and load data from staging area into a Ralph Kimball-Star schema dimensional model in Google BigQuery, as well as development and testing of the entire data integration workflow. The resulting data will be visualized using interactive dashboards in Tableau

Data source: https://www.kaggle.com/datasets/dushyantv/consumer_complaints
<p><br></p>

**Dimensional Model:**

<img width="583" alt="image" src="https://user-images.githubusercontent.com/113409553/228065720-8791fcb7-f9de-4cfe-9a19-d1f1637fdf63.png">



- Based on the source system analysis, the above dimensional model is designed to satisfy:
1. Faster query performance
2. Organized data structure
3. Enhanced visualization for Business Intelligence
4. Data quality improvements

**Source System Analysis:**


<img width="960" alt="image" src="https://user-images.githubusercontent.com/113409553/228095759-808ca301-65fa-47db-8c8f-170343a2dea4.png">
<img width="724" alt="image" src="https://user-images.githubusercontent.com/113409553/226161966-2804ad33-9651-48c7-ae4c-a6e8dc6bf856.png">
<img width="726" alt="image" src="https://user-images.githubusercontent.com/113409553/226161981-01cb3a79-4ffa-4f19-858a-bce1f3e797dc.png">
Row count: 777959
<p><br></p>

- Key findings from source system:
1. Multiple fields with blank values
2. Indifferent data types 


<p><br></p>

**Data Staging to MS SQL Server:**

<img width="960" alt="image" src="https://user-images.githubusercontent.com/113409553/226162023-1196b066-47c4-4776-9a44-b40155c9dba9.png">

![image](https://user-images.githubusercontent.com/113409553/228096017-15c240cd-ee4f-486d-8477-401106c92774.png)

![image](https://user-images.githubusercontent.com/113409553/228096041-0399b10a-af1d-4b3f-86de-1f8dbe7001c2.png)

![image](https://user-images.githubusercontent.com/113409553/228096058-3c5db28d-4062-4146-a654-e28702059543.png)

![image](https://user-images.githubusercontent.com/113409553/228096067-5f7b9114-ff8c-43aa-9211-9d9848db3b84.png)


Rows returned: 777959
<p><br></p>

**Data integration to Google BigQuery:**

...in progress
