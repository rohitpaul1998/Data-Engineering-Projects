#code to be written to write scraped data to mongodb

from Data_Cleansing import json_data
from pymongo import MongoClient
import json

# making the connection
client = MongoClient("mongodb://localhost:27017")

# making a connection to mongodb Database and creating a collection
db = client["socialmediaDB"]
collection = db.create_collection("socialmediaColl")

# load JSON data from json data file
data = json.loads(json_data)

# If the data is not a list of dictionaries, convert it to a list of dictionaries
if type(data) == dict:
    data = [data]

# Insert the data into the collection
for doc in data:
    collection.insert_one(doc)