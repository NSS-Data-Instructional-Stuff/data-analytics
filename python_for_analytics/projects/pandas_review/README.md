# Python and pandas Review Exercise

For this exercise, read the data contained in disney_plus_titles.csv into a DataFrame.

1. Create a new dataframe named "movies_df" consisting of only movies.

2. Make a plot which shows for each rating, the count of movies having that rating.

3. Create a new column "duration_minutes" by extracting the numeric part of the "duration" column. Make sure that the resulting column is a numeric data type.

4. Find the overall minimum, maximum, and average duration of movies in this dataset.

5. Create a histogram showing the distribution of the duration in minutes. What do you notice about this distribution?

6. Create a new column in movies_df, duration_group, that catagorizes each movie as either short, average, or long.  Short movies should be 30 mins or less, long movies should be over 2 hours. How many movies are in each group?

7. Find the average movie durations for movies released between 1990 and 2000. 

8. Create a new column, "decade", which shows the decade that a movie was released.

9. Create a plot which compares movie durations by decade.

10. Find the average duration by decade. Which decade has the highest average duration?

11. Create a scatterplot that looks at movie durations over the years.  Do you notice any correlation?

12. Find the actual correlation value, is there any correlation?

13. Use movie_df to find which year had the most G-rated releases.  Can you do this in a single line of code?

14. Create a plot showing the number of releases per year over time. 

15. Which movie had the greatest gap from the year it was released to the year it was added?

16. How many TV shows or Movies have the word 'dog' in the title regardless if it is capitalized?

17. What percentage of animated movies are rated G or TV-G? How does this compare to the overall percentage of movies with these ratings?

18. Which movie has the largest number of cast members listed?

19. Find the top 5 directors in terms of the number of movies in the dataset. **Challenge Question:** Some of the values in the director column contain multiple directors. For example, the director listed for "A Spark Story" is "Jason Sterman, Leanne Dare". If you haven't done so already, modify the data in this column so that each director gets counted separately. Hint: you probably want to start by using the string split method.

20. **Challenge Question:** Are there any directors who were also listed in the cast of the same movie?
