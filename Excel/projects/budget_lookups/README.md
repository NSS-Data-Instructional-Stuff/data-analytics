Learning Objectives:
* Write a formula using IFERROR or IF.
* Correctly utilize absolute cell references to allow for copying formulas.
* Use VLOOKUP, XLOOKUP, and INDEX + MATCH to do two-way lookups.
* Utilize data validation to create a dropdown menu.

Directions:
1. Fill in formulas to first calculate the difference between budget and actual (actual - budget) and then the percent difference between the actual and budgeted amount of each department (divide the difference by the budget).
2. Fill in the rank columns to calculate for each year the rank of each department from lowest percentage difference to highest percentage difference. Order them so the department who came out with the highest percentage of their budget left over is number 1. Hint: You're likely to get a #DIV/0 error here. First, try and understand what might be leading to this error. Then correct the problem by using IFERROR or some other logical function in your percent difference column.
3. Use VLOOKUP to fill in the first table at the bottom to retrieve the difference for the selected departments for each year. You may need to modify your VLOOKUP to bring in values from the correct column.  Your formula should be able to pull down, but not necessarily across.
4. Repeat this in the next table, but this time use XLOOKUP. Your formula should be able to pull down, but not necessarily across. 
5. Repeat one more time, but use INDEX and MATCH to fill in the third table. Your formula should be able to pull down, but not necessarily across.
6. Use Data Validation in cell B87 in order to create a dropdown where a department can be chosen. Then use INDEX and MATCH in order to fill in the table to retrieve the Budget and Actual for each financial year. Then take this table and create a bar chart to display the results. You can read about using data validation to create a drop-down list here: https://support.microsoft.com/en-us/office/create-a-drop-down-list-7693307a-59ef-400a-b769-c5402dce407b

Challenge Questions (Save for last):  

7. Modify your formulas from questions 3-5 using MATCH so that you can pull the formula both down and sideways to fill in the entire table.
8. Use XLOOKUP to find, for each financial year, the three highest ranked departments in terms of the percentage below budget their actual spending was. Bonus: Combine XLOOKUP with INDEX and MATCH in order to write two formulas that can be copied and pasted to fill in the table.
9. Do the same as above, but using only INDEX and MATCH.