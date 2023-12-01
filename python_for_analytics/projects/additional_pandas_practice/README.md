## Additional pandas Practice

This extra practice uses data from the popular [Hot Ones](https://www.youtube.com/playlist?list=PLAzrgbu8gEMIIK3r4Se1dOZWSZzUSadfZ) YouTue talk show in which host Sean Evans interviews guest as they eat increasingly spicy chicken wings.

You have been provided 3 csv files - episodes.csv, sauces.csv, and seasons.csv. For more information about what is contained in each, see the data dictionary.

Here are some questions that you can use to practice your pandas skills.

### Subsetting

* Who was the first guest in season 3 to not finish trying all of the sauces?
* How far apart were T-Pain's appearances?
* How many episodes have a title which does not contain the phrase "Spicy Wings"?
* Find all episodes that do not have a guest. What do these episodes have in common? 
* How many episodes were released in the year 2020?

### Sorting

* Which sauce is the hottest (meaning the highest Scoville number)?
* Using the data from seasons.csv, find the number of days between the original release and last release for each season. Which season had the shortest time between original and last release? Which had the longest?

### Summarizing and Grouping

* What is the average Scoville rating for sauces that have been used on the show?
* What is the median Scoville rating for sauces that have been used on the show?
* How does the average Scoville rating vary across the "sauce_number"?
* How has the typical Scoville rating changed across seasons?
* What percentage of guests try all of the sauces? How does this vary from season to season?
* How many sauces have appeared across multiple seasons of the show?
* Compare the Scoville ratings for sauces which contains the word "Chipotle" to those which contain the word "Habanero" to those which contain the word "Ghost" and to those which contain the word "Reaper". What do you notice?
* **Challenge Question:** Out of all the guests which had multiple appearances, which guest had the longest time between appearances on the show? Which had the shortest?

### Plots

* Create a plot which shows the number of episodes per season.
* Create a plot to show the percentage of guests that taste all of the sauces.
* Create a plot to show the distribution of Scoville ratings for sauces that have appeared on the show.
* Create a plot which diplays, for each episode, the length of the episode title vs. the season. What do you notice from this plot?
* **Challenge Question:** Create a plot to investigate how the scoville number has varied across seasons and sauce_numbers. Hint: one way you could do this is to create a line plot with one line per sauce number where the x-axis is the season number and the y-axis is the Scoville rating. You may want to apply a log scale to the Scoville rating (possibly by using the logy parameter).