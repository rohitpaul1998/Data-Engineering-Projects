# Data-Engineering-Projects
### Retail Company Data Warehousing Solution
**Problem statement**: 
Build a data warehousing solution for a retail company that enables analysis of their history of product complaints and consumer data. The solution will include data profiling in Alteryx, data staging, ETL development in Talend to extract, transform, and load data from data source into a Ralph Kimball-Star schema dimensional model in Amazon Redshift, as well as development and testing of the entire data integration workflow. The resulting data will be visualized using interactive dashboards in Tableau

**Data source:** https://www.kaggle.com/datasets/dushyantv/consumer_complaints

**Dimensional Model:**

<img width="667" alt="image" src="https://user-images.githubusercontent.com/113409553/224708273-03091377-d974-4de8-99d5-ca2c6dc84f8e.png">










### Data Pipeline for Social Media Analytics
1. Built a twitter scraping bot that scraped 5000 unstructured tweet data, cleansed the data using NumPy, Pandas, ensuring high data quality and accuracy
2. Loaded MongoDB with cleansed data for flexible data storage, executed analytical queries through Mongo Shell, discovering data patterns and popular tweets
3. Performed Sentiment Analysis on the stored data using TextBlob Machine Learning library, uncovering valuable insights into user sentiment
4. Loaded the processed data to Snowflake Data warehouse, transformed the data using SQL functions and extracted insightful information
5. Designed powerful data visualization dashboards in Power BI, presented trends and insights, leveraged DAX formulas and calculated sentiment remarks on the distribution of user sentiment scores, providing even deeper insights into user behaviour
6. Automated the data pipeline using Apache Airflow and monitored workflows resulting in efficient and reliable data processing

**Tech stack:** Python, SQL, NumPy, Pandas, MongoDB, NoSQL, TextBlob, Snowflake, Power BI, DAX, Apache Airflow

**Power BI Reports:**
- Distribution of sentiment scores of tweets
![image](https://user-images.githubusercontent.com/113409553/224511985-11a94f0c-84d7-43b1-b713-0ab320e5a146.png)

- Twitter users with highest number of followers
![image](https://user-images.githubusercontent.com/113409553/224512059-66cc9651-c47b-4c8b-9207-e45a08c94632.png)

- How sentiment scores affect popularity of tweets
![image](https://user-images.githubusercontent.com/113409553/224512073-4339b7a1-cb72-4f89-be0f-4902068153bc.png)

- Tweets with highest popularity score
![image](https://user-images.githubusercontent.com/113409553/224512086-46ebda95-ea2c-4192-8438-09c29c34a245.png)



**Power BI Dashboard:**

<img width="638" alt="image" src="https://user-images.githubusercontent.com/113409553/224513134-e7285ad5-e3cf-4a4b-87d4-a4aaf74aea63.png">
