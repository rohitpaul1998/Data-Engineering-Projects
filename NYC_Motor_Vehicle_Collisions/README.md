**FINAL PROJECT OVERVIEW OF NYC MOTOR VEHICLE COLLISIONS**
    
    
        
***Overview***

The NYC Motor Vehicle Collisions dataset is a collection of traffic accident reports in New York City. It includes information such as the location, date and time, type of collision, and other factors that may have contributed to the accident. The data is provided by the New York City Police Department (NYPD) and is updated daily. It covers all five boroughs of the city and is available from 2012 to the present day. I, along with my team of 3 data engineers, are tasked to gather data, perform source system analysis and document findings, stage raw data, design dimensional model, design ETL pipelines and load data to integration schema, building interactive dashboards and reports using Tableau and Power BI.

***Source System Analysis using Alteryx Designer***

![image](https://user-images.githubusercontent.com/113409553/236589318-2314a048-8b5f-4806-b188-606fe59863cf.png)
![image](https://user-images.githubusercontent.com/113409553/236589380-bf5d57f5-22c1-4a44-b2df-88ec37aa0019.png)
![image](https://user-images.githubusercontent.com/113409553/236589389-c10efd90-1e8f-4c0c-a8b4-f2af809b7624.png)
![image](https://user-images.githubusercontent.com/113409553/236589398-870fbfaf-d0e6-4247-ab2c-5090355e1ca7.png)
![image](https://user-images.githubusercontent.com/113409553/236589406-85e0f571-13ce-4371-82c2-8e5f5d18ff2d.png)


***Findings***

1.	Person_ID: There are null values in this field that need cleansing - 19 nulls
2.	Vehicle_ID: There are null values in this field that need cleansing - 193,547 nulls
3.	Person_Age:
	- There are null values in this field that need cleansing - 485,207 nulls
	- We noticed that values range from -999 to 9999. Age cannot be a negative number nor it can be in a 4 digit number
	- As per prior research, maximum age can be upto 120.
	- Replace all negative ages and ages beyond 100 with the mean value of all the age values
	- Replace NULLs with the mean value
4.	Ejection: There are null values in this field that need cleansing – 2373445 nulls. We shall replace the null values with “Unknown.”
5.	Emotional_Status: There are null values in this field that need cleansing – 2306159 nulls. We shall replace the null values with “Unknown.”
6.	Bodily_injury: There are null values in this field that need cleansing – 2306116 nulls. We shall replace the null values with “Unknown.”
7.	Position_in_Vehicle: There are null values in this field that need cleansing – 2373097 nulls. We shall replace the null values with “Unknown.”
8.	Safety_equipment: There are null values in this field that need cleansing – 2373168 nulls. There are records with value “-“ in them which could be replaced with “None”. The null values will be replaced with “Unknown”.
9.	PED_location: There are null values in this field that need cleansing – 4792093 nulls. We shall replace the null values with “Unknown.”
10.	PED_Action: There are null values in this field that need cleansing – 4792194 nulls. We shall replace the null values with “Unknown.”
11.	Complaint: There are null values in this field that need cleansing – 2306109 nulls. We shall replace the null values with “Unknown.”
12.	PED_Role: There are null values in this field that need cleansing – 194891 nulls. We shall replace the null values with “Unknown.”
13.	Contributing_Factor_1: There are null values in this field that need cleansing – 4793370 nulls. We shall replace the null values with “Unknown.”
14.	Contributing_Factor_2: There are null values in this field that need cleansing – 4793465 nulls. We shall replace the null values with “Unknown.”
15.	Person_sex: There are null values in this field that need cleansing – 554938 nulls. We shall replace the null values with “U” ***
16. Contributing_Factor_1, Contributing_Factor_2, Contributing_Factor_3: These fields are repeating groups and could be normalized


***Data Staging***

 Staging scripts uploaded in this directory under the name "nyc mv collisions mysql staging script" in MySQL Workbench
 
 
 ***Dimensional Modeling***
 
![image](https://user-images.githubusercontent.com/113409553/236594316-802ece91-24e9-44a3-b9c2-900beca3302b.png)
![image](https://user-images.githubusercontent.com/113409553/236594376-eab29ed7-feee-48bb-a47b-3e8573b867cd.png)

***ETL Pipeline Engineering***

Staging Raw Data
![image](https://user-images.githubusercontent.com/113409553/236595385-6055920a-2213-4980-888d-9217bbc1cfd6.png)

Extracting raw data, Transforming and Loading to Target schema ( ONLY SAMPLE FACTS AND DIMENSIONS )
![image](https://user-images.githubusercontent.com/113409553/236595547-f034f8ad-c95a-44d7-9c6f-1909107a006e.png)
![image](https://user-images.githubusercontent.com/113409553/236595694-37ab31e2-1eba-4f92-94d6-c8d037c278f4.png)
![image](https://user-images.githubusercontent.com/113409553/236595756-6c668cbf-3602-498e-8319-775ab4f915bf.png)
![image](https://user-images.githubusercontent.com/113409553/236595986-53a1a0a0-7452-4293-9e1a-74b10d057048.png)

***Reporting and Dashboard utilisation***

Tableau
![image](https://user-images.githubusercontent.com/113409553/236596164-0041cd6d-6957-41eb-952e-0b3ef8613e31.png)
![image](https://user-images.githubusercontent.com/113409553/236596320-6e813b2c-83ee-4580-8ec2-74b14c81b6d6.png)
![image](https://user-images.githubusercontent.com/113409553/236596862-7ec4bce6-4696-407c-9882-d7ba16cfca94.png)
![image](https://user-images.githubusercontent.com/113409553/236596993-d9b85921-63b1-4e4e-9f75-e3e37fce5424.png)
![image](https://user-images.githubusercontent.com/113409553/236597095-d75b1253-bb18-4ec1-91e0-a58964e169e1.png)
![image](https://user-images.githubusercontent.com/113409553/236597562-9faa6c78-11f6-45b4-bedd-020ac649cd3d.png)


Power BI
![image](https://user-images.githubusercontent.com/113409553/236597778-a3e9737d-4e55-48d5-b4c7-ec72e6ffd031.png)
![image](https://user-images.githubusercontent.com/113409553/236597800-95d09c7a-e5dd-4db3-93ab-2a5cc87a4135.png)
![image](https://user-images.githubusercontent.com/113409553/236597899-8892de13-5735-4d0e-91a6-94d456508d9d.png)
![image](https://user-images.githubusercontent.com/113409553/236597933-568d01e0-bad0-4046-8087-05b0e6407521.png)
![image](https://user-images.githubusercontent.com/113409553/236597953-0c957ae9-d820-4c67-b25c-8c031dd12750.png)









