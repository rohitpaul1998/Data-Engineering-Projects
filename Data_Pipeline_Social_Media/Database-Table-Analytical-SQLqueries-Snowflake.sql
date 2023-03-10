-- selected soc_md_wh data warehouse for my social media analytics project

show warehouses;

-- Creating a database

CREATE DATABASE SocialMedia_DB;

SHOW DATABASES;

USE SOCIALMEDIA_DB;

-- Creating a schema object for the database

CREATE SCHEMA SOCIALMEDIA_SCHM;

ALTER SCHEMA SOCIALMEDIA_SCHM RENAME TO SocMed_SCHM;

ALTER SCHEMA SocMed_SCHM RENAME TO SocialMedia_SCHM;

-- Creating a table

USE SOCIALMEDIA_DB.SOCIALMEDIA_SCHM;

CREATE TABLE SocialMed_TBL (
Tweet_id NUMBER(38,0),
Tweet_date VARCHAR(500),
Tweet_content VARCHAR(500),
Twitter_username VARCHAR(500),
Account_followers NUMBER(38,0),
Tweet_location VARCHAR(500),
Tweet_retweets NUMBER(38,0),
Tweet_favorites NUMBER(38,0),
Tweet_sentiment_score NUMBER(38,0)
);

drop table SocialMed_TBL; 


-- getting all rows
select * from SocialMed_TBL;

-- what are the top 10 twitter accounts with the most followers?
SELECT Twitter_username, Account_followers FROM SOCIALMED_TBL
ORDER BY Account_followers DESC limit 10;

-- How many tweets were posted from each location?
SELECT Tweet_location, COUNT(*) AS Tweet_counts FROM SOCIALMED_TBL GROUP BY Tweet_location;

-- cleaning data
UPDATE SocialMed_TBL SET Tweet_location = COALESCE(NULLIF(Tweet_location, ''), 'NA')
WHERE Tweet_location = '';

-- What is the average sentiment score for each Twitter account?
SELECT Twitter_username, AVG(Tweet_sentiment_score) AS avg_sentiment_score
FROM SocialMed_TBL
GROUP BY Twitter_username ORDER BY avg_sentiment_score DESC;

-- How many tweets were posted on each date?
SELECT Tweet_date, COUNT(*) AS tweet_count
FROM SocialMed_TBL
GROUP BY Tweet_date;

-- What is the distribution of sentiment scores in the dataset?
SELECT Tweet_sentiment_score, COUNT(*) AS score_count
FROM SocialMed_TBL
GROUP BY Tweet_sentiment_score
ORDER BY Tweet_sentiment_score;


-- transforming the tweet_date field from unix timestamp to proper date
UPDATE SocialMed_TBL
SET tweet_date = DATEADD(ms, tweet_date, '1970-01-01')
WHERE tweet_date >= 0;











