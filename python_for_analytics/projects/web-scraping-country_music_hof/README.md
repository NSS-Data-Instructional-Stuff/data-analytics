## Web Scraping the Country Music Hall of Fame

In this exercise, your objective is to use BeautifulSoup in order to obtain a dataset of all Country Music Hall of Fame inductees. This information is available at https://countrymusichalloffame.org/hall-of-fame/members/, but you will take the contents of this website and convert it into a pandas DataFrame.

The website splits the members across multiple pages, but start by just working on the first page. Later on in the exercise, you'll take what you've done for the first page and apply it across all pages.

1. Start by using either the inspector or by viewing the page source. Can you identify a tag that might be helpful for finding the names of all inductees? Make use of this to create a list containing just the names of each inductee.

2. Next, try and find a tag that could be used to find the year that each member was inducted. Extract these into a list. When you do this, be sure to only include the year and not the full text. For example, for Roy Acuff, the list entry should be "1962" and not "Inducted 1962". Double-check that the resulting list has the correct number of elements and is in the same order as your inductees list.

3. Take the two lists you created on parts 1 and 2 and convert it into a pandas DataFrame.

4. Now, you need to take what you created for the first page and apply it across the rest of the pages so that you can scrape all inductees. Notice that when you click the next page button at the bottom of the page that the url changes to "https://countrymusichalloffame.org/hall-of-fame/members/page/2". Check that the code that you wrote for the first page still works for page 2. Once you have verified that your code will still work, write a for loop that will cycle through all 16 pages and build a DataFrame containing all inductees and the year of their induction.

5. Create a visual using the data that you scraped. Prepare a short (<5 minute) presentation.

6. **Bonus Question:** If you navigate to [Roy Acuff's page](https://countrymusichalloffame.org/artist/roy-acuff/), you will see that his date of birth and date of death are listed towards the top of the page, along with his birthplace. Write some code that will extract these three values. Once you get it working for Roy Acuff, figure out how you can automatically extract these values across the whole dataset of artists. In doing this, you'll need to figure out a way to automatically determine the correct urls for each artist. Note also that not every artist will have these three values, so write your code in a way that it can handle cases where these values are missing. [Alabama](https://countrymusichalloffame.org/artist/alabama/) is one such example. 