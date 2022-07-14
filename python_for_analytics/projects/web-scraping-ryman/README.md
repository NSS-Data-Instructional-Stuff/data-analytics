## Web Scraping the Ryman Calendar

In this exercise, your objective is to use BeautifulSoup in order to obtain a dataset of upcoming events at the Ryman. This information is available at https://ryman.com/events/, but you will take the contents of this website and convert it into a pandas DataFrame.

The website splits the events across multiple pages, but start by just working on the first page. Later on in the exercise, you'll take what you've done for the first page and apply it across other pages.

1. Start by using either the inspector or by viewing the page source. Can you identify a tag that might be helpful for finding the names of all performers? For now, just worry about the headliner and don't worry about the opener. (Eg. For Vince Gill, featuring Wendy Moten, we only care about Vince Gill.) Make use of this to create a list containing just the names of each inductee.

2. Next, try and find a tag that could be used to find the date and time for each show. Extract these into two lists, one containing the date and the other containing the time. (Eg. THURSDAY, AUGUST 4, 2022 AT 8:00 PM CDT should be split into August 4, 2022 and 8:00 PM CDT.) 

3. Take the two lists you created on parts 1 and 2 and convert it into a pandas DataFrame.

4. Now, you need to take what you created for the first page and apply it across multiple rest of the pages so that you can scrape all inductees. Notice how the url changes when you click the "More Events" button at the top of the page. Check that the code that you wrote for the first page still works for page 2. Once you have verified that your code will still work, write a for loop that will cycle through the first five pages of events.

5. **Bonus #1:**: Add to your data frame the opening act for all shows that list an opener.

5. **Bonus #2:** If you click the "MORE INFO" button for an event, it will take you to a page which shows ticket prices. Write code that can be used to retrieve the ticket prices for each show that you have scraped. Make sure that your code can handle cases where the show has been canceled (eg. https://ryman.com/event/nhabit-worship-experience/).