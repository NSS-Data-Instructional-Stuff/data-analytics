### Interactive Excel Dashboard For Informing Low Income and Elderly Assistance Grants

You have been tasked with creating an interactive dashboard for an organization that provides assistance for low income and elderly taxpayers. You have been asked to create this dashboard using the 2016 IRS individual tax return data provided. 

1. Start by creating a table containing the state names, the number of total returns filed, and the number of elderly returns filed. Create a calculated column for the percentage of elderly returns out of total returns filed. Create this table in a new worksheet any way you'd like. One function you might find helpful for this task is the `OFFSET()` function.

``` 
OFFSET(reference, rows, columns, [height], [width])
reference: starting point
rows: number of rows down from the starting point
columns: number of columns to the right of the starting point
height: height of the returned reference (optional)
width: width of the returned reference (optional)
```
![offset examples](/assets/offset.png)






2. Minimally, the organization (Hand Up America) wants to be able to see the following information _*for each state*_ as part of the dashboard:  

    a. What percentage of tax returns filed are elderly returns? Create a plot showing the states with the ten highest percentage of elderly returns. 


    b. How does the distribution of single, joint, and head-of-household returns filed differ across all returns? How does this compare to the national picture?

    c. How do active vs passive sources of income differ for each income bracket. Look at the percentage of total income (row 27) that comes from active sources -- salaries and wages + business or profession net income (rows 29 and 39) vs the percentage that comes from passive sources -- interest + dividends + capital gains (rows 31, 33, 41).  


3. For each state, calculate the total tax liability (row 144) per person. Use the number of exemptions (row 15) as a proxy for the number of people in the household. Don’t forget that tax liability is given in thousands of dollars. What are the top 10 and bottom 10 states in this metric? Create a map to illustrate your findings.

4. Pull the list of top 10 states with the highest percentage of ` < $1` tax returns. Do this also for the highest percentage of ` > $1,000,000` returns. Can you think of contextual data that could help you understand these results better?

5. Add any other charts or visualizations you think might help guide the decision-making at HUA.
