# Lahman Baseball Database Exercise.. Again.
- these data have been made available [online](http://www.seanlahman.com/baseball-archive/statistics/) by Sean Lahman
- you can find a data dictionary [here](http://www.seanlahman.com/files/database/readme2016.txt)

## Use _PANDAS_ to find answers to the questions.
You heard right!
We've been through this before..
First with SQL, now with python/pandas.

With this, comes some rules.
You still need to connect to the Lahman Baseball database (that's where all your data live).
However, for every question the extent of your SQL should be:
```sql
SELECT * FROM <table name>;
```
The rest of your analysis should be done with python

Feel free to pull in multiple tables.
Do not use filters, or manipulate the select statement.
Feel free to reference your SQL scripts from before and use them to validate your results.

## Setting up

From `terminal` or `anaconda prompt` run: 
```bash
conda install -c conda-forge psycopg2
conda install -c conda-forge sqlalchemy
```
then launch jupyter notebook

## Connecting to a database in python (basic)

```python
import pandas as pd
from sqlalchemy import create_engine

# establish a database connection
engine = create_engine("postgresql+psycopg2://postgres:postgres@localhost:5432/<lahman_baseball_database_name>")
# Replace `<lahman_baseball_database_name>` with the actual name of your lahman baseball database as it appears in pgadmin

# use the connection to run a query using pandas!
df = pd.read_sql("SELECT * FROM batting;", con=engine)
df.head()
```

### Questions
_these are just a subset of questions from the original Lahman Baseball exercise_

1. a. Find all players in the database who played at Vanderbilt University.  
   b. Create a list showing each player’s first and last names as well as the total salary they earned in the major leagues.  
   c. Sort this list in descending order by the total salary earned.  
   d. Which Vanderbilt player earned the most money in the majors?  
2. Using the fielding table, group players into three groups based on their position: label players with position OF as "Outfield", those with position "SS", "1B", "2B", and "3B" as "Infield", and those with position "P" or "C" as "Battery". Determine the number of putouts made by each of these three groups in 2016.
3. a. From 1970 – 2016, what is the largest number of wins for a team that did not win the world series?  
   b. What is the smallest number of wins for a team that did win the world series?  
   c. Doing this will probably result in an unusually small number of wins for a world series champion – determine why this is the case.  
   d. Then redo your query, excluding the problem year.  
   e. How often from 1970 – 2016 was it the case that a team with the most wins also won the world series?  
   f. What percentage of the time?  
4. Which managers have won the TSN Manager of the Year award in both the National League (NL) and the American League (AL)? Give their full name and the teams that they were managing when they won the award.

### Bonus Questions!
5. Analyze all the colleges in the state of Tennessee.  
   a. Which college has had the most success in the major leagues?  
   b. Use whatever metric for success you like - number of players, number of games, salaries, world series wins, etc.  

6. a. Is there any correlation between number of wins and team salary?  
   b. Use data from 2000 and later to answer this question.  
   c. As you do this analysis, keep in mind that salaries across the whole league tend to increase together, so you may want to look on a year-by-year basis.  

7. It is thought that since left-handed pitchers are more rare, causing batters to face them less often, that they are more effective. Investigate this claim and present evidence to either support or dispute this claim.  
   a. First, determine just how rare left-handed pitchers are compared with right-handed pitchers.  
   b. Are left-handed pitchers more likely to win the Cy Young Award?  
   c. Are they more likely to make it into the hall of fame?  
