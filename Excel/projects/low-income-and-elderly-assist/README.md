### Interactive Excel Dashboard For Informing Low Income and Elderly Assistance Grants

You have been tasked with creating an interactive dashboard for Hand Up America, an organization that provides assistance for low income and elderly taxpayers. You have been asked to create this dashboard using the provided 2016 IRS individual tax return data. HUA would like the dashboard to include state level information, and how those data compare to the national picture. Below are a series of questions to help you think about what visualizations would be helpful in your dashboard. You will give a 10-15 minute presentation on your dashboard to the HUA board to show them how to use it and what insights your dashboard can provide.

1. Start by creating a table containing the state names, the number of total returns filed, and the number of elderly returns filed. Create a calculated column for the percentage of elderly returns out of total returns filed. Create this table in a new worksheet any way you'd like (recall `tidy data`, where each row is an observation and each column is a variable). One function you might find helpful for this task is the `OFFSET()` function.

```
OFFSET(reference, rows, columns, [height], [width])
reference: starting point
rows: number of rows down from the starting point
columns: number of columns to the right of the starting point
height: height of the returned reference (optional)
width: width of the returned reference (optional)
```
![offset examples](/assets/offset.png)






2. Calculate the following information _*for each state*_ to gain insights into the data:  

    a. What percentage of tax returns filed are elderly returns? Create a plot showing the states with the ten highest percentages of elderly returns.


    b. Do elderly returns tend to show more or less than $50,000 adjusted gross income for states?

    c. Passive income may be more subject to volatility. How do active vs passive sources of income differ for each income bracket. Look at the percentage of total income (row 27) that comes from active sources -- salaries and wages + business or profession net income (rows 29 and 39) vs the percentage that comes from passive sources -- interest + dividends + capital gains (rows 31, 33, 41).  


3. For each state, calculate the total tax liability (row 144) per person. Use the number of exemptions (row 15) as a proxy for the number of people in the household. Don’t forget that tax liability is given in thousands of dollars. What are the top 10 and bottom 10 states in this metric? Create a map to illustrate your findings.

4. Pull the list of top 10 states with the highest percentage of ` < $1` tax returns. Do this also for the highest percentage of ` > $1,000,000` returns. Can you think of contextual data that could help you understand these results better?

5. Use your findings from the above exercise and any other analyses you think of to create charts or visualizations that might help guide the decision making at HUA. Remember that HUA's goal is to `provide assistance for low income and elderly taxpayers`. Your deliverable will be a single dashboard that captures what you think are the most important factors for HUA to consider.
