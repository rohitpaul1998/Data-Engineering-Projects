### Retail Company Data Warehousing Solution
**Problem statement**: 
Build a data warehousing solution for a retail company that enables analysis of their product complaints and consumer data. The solution will include source system analysis (data profiling) in Alteryx, data staging, ETL development in Talend to extract, transform, and load data from data source into a Ralph Kimball-Star schema dimensional model in Amazon Redshift, as well as development and testing of the entire data integration workflow. The resulting data will be visualized using interactive dashboards in Tableau

Data source: https://www.kaggle.com/datasets/dushyantv/consumer_complaints
<p><br></p>

**Dimensional Model:**

<img width="592" alt="image" src="https://user-images.githubusercontent.com/113409553/227084573-e2348b14-552e-433e-a295-8f95b3a7be36.png">


**Source System Analysis:**

<img width="960" alt="image" src="https://user-images.githubusercontent.com/113409553/226161920-ea24eab1-3339-462f-b189-a6273636a3ab.png">
<img width="724" alt="image" src="https://user-images.githubusercontent.com/113409553/226161966-2804ad33-9651-48c7-ae4c-a6e8dc6bf856.png">
<img width="726" alt="image" src="https://user-images.githubusercontent.com/113409553/226161981-01cb3a79-4ffa-4f19-858a-bce1f3e797dc.png">
Row count: 777959<br>
<p><br></p>

**Data Staging to PostgreSQL:**

<img width="960" alt="image" src="https://user-images.githubusercontent.com/113409553/226162023-1196b066-47c4-4776-9a44-b40155c9dba9.png">
<img width="960" alt="image" src="https://user-images.githubusercontent.com/113409553/226162096-dc0ce497-3ce2-4390-a4e8-6479499cc77a.png">

Rows returned: 777959
<p><br></p>

**Data integration to Amazon Redshift:**

...in progress
