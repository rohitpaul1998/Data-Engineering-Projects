import pandas as pd
import pymongo
from textblob import TextBlob
import re
import json

# Making  a connection to MongoDB database and its collection
client = pymongo.MongoClient("mongodb://localhost:27017/")
db = client["socialmediaDB"]
collection = db["socialmediaColl"]

# Query the data from MongoDB
data = list(collection.find())
# print(data)

# Cleaning the data and calculating sentiment analysis
sentiment_scores = []
for post in data:
    # Clean the text
    post_text = post["content"]
    post_text = re.sub(r'[^\w\s]','',post_text)
    post_text = post_text.lower()

    # Calculate the sentiment score using TextBlob
    blob = TextBlob(post_text)
    sentiment_score = blob.sentiment.polarity

    # Append the sentiment score to the list of scores
    sentiment_scores.append(sentiment_score)

    # Update the post in MongoDB with the sentiment score
    collection.update_one({"_id": post["_id"]}, {"$set": {"sentiment_score": sentiment_score}})
# print(sentiment_scores)

# Create a new list of dictionaries containing only desired columns
columns = ['id', 'date', 'content', 'username', 'followers', 'location', 'hashtags', 'retweets', 'favorites', 'language', 'source', 'sentiment_score']
new_data = []
for post in data:
    new_post = {col: post[col] for col in columns}
    new_data.append(new_post)

# Saving the output with sentiment scores in json file
with open('Final_data.json', 'w') as f:
    # Write the data to the file
    json.dump(new_data, f)

