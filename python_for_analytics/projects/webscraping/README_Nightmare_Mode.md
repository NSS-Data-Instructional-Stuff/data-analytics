## Web Scraping the Ryman Calendar

In this exercise, your objective is to use BeautifulSoup in order to obtain a dataset of upcoming events at the Ryman. This information is available at https://ryman.com/events/, but you will take the contents of this website and convert it into a pandas DataFrame.

The website splits the events across multiple pages, but start by just working on the first page. Later on in the exercise, you'll take what you've done for the first page and apply it across other pages.

1. Start by using either the inspector or by viewing the page source. Can you identify a tag that might be helpful for finding the names of all performers? For now, just worry about the headliner and don't worry about the opener. (Eg. For Vince Gill, featuring Wendy Moten, we only care about Vince Gill.) Make use of this to create a list containing just the names of each inductee.

2. Next, try and find a tag that could be used to find the date and time for each show. Extract these into a list. Challenge: Convert these into two lists, one containing the date and the other containing the time. (Eg. split Mar 9, 2023 8:00 PM into Mar 9, 2023 and 8:00 PM.) 

3. Take the lists you created on parts 1 and 2 and convert them into a pandas DataFrame.

4. **Bonus #1:**: Add to your data frame the opening act for all shows that list an opener.

5. **Bonus #2:**: Now, let's see if we can get the results beyond the first page. For this, you'll need to Web Developer Tools of your browser and navigate to the Network tab. Click the "Load More Events" button and you should see a GET request to the www.ryman.com domain.  
    a. Inspect this request and you should see that it goes to a URL like "https://www.ryman.com/events/events_ajax/24?category=0&venue=0&team=0&exclude=&per_page=12&came_from_page=event-list-page". In your Jupyter notebook, send a get request to this url and inspect the results.  
    b. You should find that the results that you get are HTML, but that they are not exactly formatted in a way that can be parsed. See if you can clean up the results set so that you can extract out the same information as above.  
    c. Create a DataFrame that contains data for the next 60 shows.