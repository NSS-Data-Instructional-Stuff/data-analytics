#### A guided exploration of UN data (Gross Domestic Product and Internet Usage)


1. Create a `data` folder in your local project repository.  

2. Download these two CSV files and place them in the data folder:

    a.	Gross Domestic Product (GDP) per capita http://data.un.org/Data.aspx?d=WDI&f=Indicator_Code%3aNY.GDP.PCAP.PP.KD **DO NOT APPLY ANY FILTERS**
     - rename the file to `gdp_percapita.csv`
     - open it with a text editor (**not excel**) and take a look

    b.	Percentage of Individuals using the Internet http://data.un.org/Data.aspx?d=ITU&f=ind1Code%3aI99H  **DO NOT APPLY ANY FILTERS**
     - rename the file to `internet_use.csv`
     - open it with a text editor (**not excel**) and take a look

2.	Launch a Jupyter Notebook. 
 - _*IMPORTANT:  You are likely to get errors along the way. When you do, read the errors to try to understand what is happening and how to correct it.*_
  - Use markdown cells to record your answers to any questions asked in this exercise. On the menu bar, you can toggle the cell type from `Code` to `Markdown`.

3.	Import the required packages with their customary aliases as follows:

    `import pandas as pd`   
    `import numpy as np`  
    `import matplotlib.pyplot as plt`  
    `import seaborn as sns`

4.	Use the `%matplotlib inline` magic command so that your plots show in the notebook _without_ having to call `plt.show()` every time.
5.	Using the pandas `read_csv()` method, read the GDP dataset into your notebook as a DataFrame called `gdp_df`. Take a look at the first 6 rows.
6. Repeat for the internet use dataset. Call this DataFrame `internet_df`. Take a look at the first six rows.
98. Look at the shape of each DataFrame - how many rows? How many columns?
6.	Take a look at the datatypes for the columns in each DataFrame.
99. Take a look at the last 10 rows of each DataFrame in turn.
7.	Drop the `value footnotes` column from both DataFrames. Check that this worked as expected.
8.	Change the columns for the GDP Per Capita DataFrame to ‘Country’, ‘Year’, and ‘GDP_Per_Capita’.
9.	Change the columns for the Internet Users DataFrame to ‘Country’, ‘Year’, and ‘Internet_Users_Pct’.
10.	Merge the two DataFrames to one. Merge **all rows** from each of the two DataFrames. Call the new DataFrame `gdp_and_internet_use`.
11.	Look at the first five rows of your new DataFrame to confirm it merged correctly.
12.	Look at the last five rows to make sure the data is clean and as expected.
13.	Subset the combined DataFrame to keep only the data for 2004, 2009, and 2014. Check that this happened correctly.
14.	Create three new DataFrames, one for 2004, one for 2009, and one for 2014. Give them meaningful names that aren't too long.
15.	Which country had the highest percentage of internet users in 2014? What was the percentage? (Try typing the first 3 letters of your DataFrame name and hitting the tab key for auto-complete options).
16.	Which country had the lowest percentage of internet users in 2014? What was the percentage?
17.	Repeat for 2004 and 2009.
18.	Which country had the highest gdp per capita in 2014? What was the gdp per capita?
20.	Which country had the lowest gdp per capita in 2014? What was the gdp per capita?
21.	Create some scatterplots:  
    a.  2004 Percent Using the Internet vs GDP Per Capita  
    b.	2009 Percent Using the Internet vs GDP Per Capita  
    c.	2014 Percent Using the Internet vs GDP Per Capita  
22.	Are there differences across years? What do the plots tell you about any relationship between these two variables? Enter your observations as a markdown cell.
23.	Look at the distribution of gdp per capita values for 2014. Is it unimodal?
24.	Look at the distribution of Internet Use for 2014. Is it unimodal?
25.	What are the top 5 countries in terms of internet use in 2014?
26.	Create a DataFrame called top_5_internet **from the combined DataFrame that has all three years _for the 5 countries that had the greatest 2014 internet usage_**. You should have 15 rows. Check that this is true.
27.	Create a seaborn FacetGrid to show the internet usage trend across the years 2004, 2009, and 2014 for these 5 countries (those with the highest reported internet use in 2014). Which country had the greatest growth between 2004 and 2014?
28.	Repeat the steps above to look at the trend for the 5 countries with the lowest 2014 internet usage. Which country has consistently had the least internet use?
29.	Find the top 5 countries for 2014 in terms of GDP per capita; create a DataFrame to look at 10-year trends (use 2004, 2009, 2014 to look at the 10-year trend) in gdp per capita for the 5 countries with the highest 2014 GDP per capita. Use a seaborn facet grid for this.
96. Repeat this one more time to look at 10-year trend for the 5 countries for 2014 with the lowest GDP per capita.
30.	Is there anything surprising or unusual in any of these plots? Searching on the internet, can you find any possible explanations for unusual findings?


### Bonus exercise:
1.    Download another data set from the UN data (http://data.un.org/Explorer.aspx) to merge with your data and explore.
