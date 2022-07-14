## Web Scraping the Country Music Hall of Fame

In this exercise, your objective is to use BeautifulSoup in order to obtain a dataset of all Country Music Hall of Fame inductees. This information is available at https://www.countrymusichalloffame.org/hall-of-fame, but you will take the contents of this website and convert it into a pandas DataFrame.

1. Start by using either the inspector or by viewing the page source. Can you identify a tag that might be helpful for finding the names of all inductees? Make use of this to create a list containing just the names of each inductee.

2. Next, try and find a tag that could be used to find the year that each member was inducted. Extract these into a list. When you do this, be sure to only include the year and not the full text. For example, for Roy Acuff, the list entry should be "1962" and not "Inducted 1962". Double-check that the resulting list has the correct number of elements and is in the same order as your inductees list.

3. Take the two lists you created on parts 1 and 2 and convert it into a pandas DataFrame.

4. If you navigate to [Roy Acuff's page](https://countrymusichalloffame.org/artist/roy-acuff/), you will see that his date of birth and date of death are listed towards the top of the page, along with his birthplace. Write some code that will extract these three values. Once you get it working for Roy Acuff, figure out how you can extract these values across the whole dataset of artists. In doing this, you'll need to figure out a way to automatically determine the correct urls for each artist. Note also that not every artist will have these three values, so write your code in a way that it can handle cases where these values are missing. [Alabama](https://countrymusichalloffame.org/artist/alabama/) is one such example. 