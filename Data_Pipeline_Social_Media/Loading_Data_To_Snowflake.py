import json
from snowflake.connector import connect

# Loading JSON data from file
with open('Final_data.json', 'r') as f:
    data2 = json.load(f)

# Creating connection to Snowflake using account and user details
account = 'pwohcbq-yib27623'
user = 'rohitpaul1998'
password = 'Gersharori1234'
database = 'SocialMedia_DB'
schema = 'SOCIALMEDIA_SCHM'
conn = connect(user=user,password=password, account=account, database=database, schema=schema)


# Inserting data into Snowflake table
cursor = conn.cursor()
for post in data2:
    fields = [post['id'], post['date'], post['content'], post['username'], post['followers'], post['location'], post['retweets'], post['favorites'], post['sentiment_score']]
    query = 'INSERT INTO SocialMed_TBL (Tweet_id, Tweet_date, Tweet_content, Twitter_username, Account_followers, Tweet_location, Tweet_retweets, Tweet_favorites, Tweet_sentiment_score) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s)'
    cursor.execute(query, fields)
conn.commit()
cursor.close()
conn.close()