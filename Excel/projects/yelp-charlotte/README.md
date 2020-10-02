### Exploration and Analysis of Yelp reviews of businesses in Charlotte, NC.  

#### Power Pivot

1. Use the connection you created in the setup exercise to connect to the Yelp Database on AWS (**Get External Data --> Existing Connections**). If the connection does not still exist, create it again.

2. Select the option to write a query to specify the data to import. The full dataset contains more than 6.6 million reviews, so we will use SQL queries to only pull in the relevant ones.  

    a. First, we will bring in all Charlotte businesses:  

    ```SELECT * FROM business WHERE city = 'Charlotte' and state = 'NC';```  

    Note: Make sure that you have single quotes surrounding Charlotte and NC! Otherwise, you will get an error.  


    This should result in 9,507 rows transferred. Rename the resulting table to `dimension_business`.

    b.  Next, pull in all reviews of the businesses in Charlotte using this query:  

    ```SELECT * FROM review WHERE business_id IN (SELECT business_id FROM business WHERE city = 'Charlotte' and state = 'NC');```

    This should result in 309,406 rows. Rename this table to `fact_review`.

    c.  Finally, get information of all users who have reviewed these businesses with the following query:  

    ```SELECT * FROM yelp_user WHERE user_id IN (SELECT user_id FROM review WHERE business_id IN (SELECT business_id FROM business WHERE city = 'Charlotte' and state = 'NC'));```

    This query should yield 95,792 results. Rename this table to `dimension_user`.

 One advantage of using PowerPivot over basic Excel is that we can create PivotTables that aggregate across multiple tables. However, before we can start aggregating across tables, we need to create relationships between the tables.  

 ![diagram_view](assets/relationship.png)  

 3. Under the `Home` tab, click on `Diagram View`. Rearrange your tables so that the `fact_review` table is in the center. Drag the `user_id` from the `dimension_user` table to the `user_id` from the `fact_review` table. Also, drag the `business_id` from the `fact_review` table to the `business_id` in the `dimension_business` table.  
 Save your spreadsheet. You are now ready to Insert --> PivotTable and choose: `Use this workbook's Data Model`.

       a. Which  user has the lowest average review score? When answering this question, use the star column from the `fact_review` table (not the one in the `dimension_user` table). Also, **only** consider users who have written at least 25 reviews. Drill down to see this user’s reviews. What do you observe about the types of businesses this user tends to review (no need to use formulas)?   

      b. Which business has the highest number of 5-star reviews? (Make sure that you use count of stars, not sum of stars here!). Which has the highest number of 1-star reviews? Highest number of total reviews?  

      c. How many businesses in the dataset are no longer open? Does there appear to be a difference in the average stars received from reviews between businesses that are still open and those that have closed?

      d. Explore how reviews have changed from year to year. For example, look at number of reviews per year, percentage of reviews by number of stars, or anything else interesting that you find.

      e. In the fact_review table, create a new column which contains the number of words in each review. Using this, find the user who writes the longest reviews on average. Consider only reviewers who have written at least 25 reviews. Do positive reviews tend to be longer or shorter than negative reviews? Which business has the longest average review length?

      f. If you were planning a trip to Charlotte and could only use the reviews of one user to plan your trip, which user would you choose and why?

**BONUS:**  The business with the highest number of 5-star reviews (3b above) might just be one that has been reviewed a lot. Redo question 3b, but this time find the business with the highest proportion of 5-star reviews. To ensure that we have a large enough sample of reviews, only consider businesses with at least 100 reviews. Which business has the highest proportion of 1-star reviews? Again, only consider businesses having at least 100 reviews.   

**Difficult BONUS** (Save this for the very last): Recommendation sites depend on groups of users having similar tastes. Find all users who have given McDonald's 5 stars on at least one review. Then find all users who have given Del Frisco's Double Eagle Steak House a 5 star review. Finally, see if you can find any differences in businesses highly reviewed by each group.

#### Power Map
What business has the most locations? Drill down to a table showing all of this business’s locations. Add a column to the drilled down table. In this column, create that location’s full address by concatenating the address, city, state, and zip code. Next, add this table to the data model and give it an appropriate name. To jazz up our map, we’ll need a relationship with this table and the `fact_review` table, so create a relationship between them. Create a 3D Map/Power Map showing all of the locations of this business. Try adding bars for average review, how reviews changed over time, etc.
