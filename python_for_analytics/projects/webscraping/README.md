## Webscraping

In this exercise, you'll practice using BeautifulSoup to parse the content of a web page. The page that you'll be scraping, https://realpython.github.io/fake-jobs/, contains job listings. Your job is to extract the data on each job and convert into a pandas DataFrame.

1. Start by performing a GET request on the url above and convert the response into a BeautifulSoup object.  
a. Use the .find method to find the tag containing the first job title ("Senior Python Developer"). Hint: can you find a tag type and/or a class that could be helpful for extracting this information? Extract the text from this title.  
b. Now, use what you did for the first title, but extract the job title for all jobs on this page. Store the results in a list.  
c. Finally, extract the companies, locations, and posting dates for each job. For example, the first job has a company of "Payne, Roberts and Davis", a location of "Stewartbury, AA", and a posting date of "2021-04-08". Ensure that the text that you extract is clean, meaning no extra spaces or other characters at the beginning or end.  
d. Take the lists that you have created and combine them into a pandas DataFrame. 

2. Next, add a column that contains the url for the "Apply" button. Try this in two ways.   
    a. First, use the BeautifulSoup find_all method to extract the urls.  
    b. Next, get those same urls in a different way. Examine the urls and see if you can spot the pattern of how they are constructed. Then, build the url using the elements you have already extracted. Ensure that the urls that you created match those that you extracted using BeautifulSoup. Warning: You will need to do some string cleaning and prep in constructing the urls this way. For example, look carefully at the urls for the "Software Engineer (Python)" job and the "Scientist, research (maths)" job.
    
3. Finally, we want to get the job description text for each job.  
    a. Start by looking at the page for the first job, https://realpython.github.io/fake-jobs/jobs/senior-python-developer-0.html. Using BeautifulSoup, extract the job description paragraph.  
    b. We want to be able to do this for all pages. Write a function which takes as input a url and returns the description text on that page. For example, if you input "https://realpython.github.io/fake-jobs/jobs/television-floor-manager-8.html" into your function, it should return the string "At be than always different American address. Former claim chance prevent why measure too. Almost before some military outside baby interview. Face top individual win suddenly. Parent do ten after those scientist. Medical effort assume teacher wall. Significant his himself clearly very. Expert stop area along individual. Three own bank recognize special good along.".  
    c. Use the [.apply method](https://pandas.pydata.org/docs/reference/api/pandas.Series.apply.html) on the url column you created above to retrieve the description text for all of the jobs.