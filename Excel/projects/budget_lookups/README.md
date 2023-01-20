Learning Objectives:
* Write a formula using IFERROR or IF.
* Correctly utilize absolute cell references to allow for copying formulas.
* Use VLOOKUP + Match to do two-way lookups.
* Use HLOOKUP + Match to do two-way lookups.
* Use Index + Match to do two-way lookups.
* Utilize data validation to create a dropdown menu.
* Use XLOOKUP to make two-way matches.

Directions:
1. Fill in formulas to first calculate the difference between budget and actual (actual - budget) and then the percent difference between the actual and budgeted amount of each department (divide the difference by the budget).
2. Fill in the rank columns to calculate for each year the rank of each department from lowest percentage difference to highest percentage difference. The department that was the highest percentage below budget should have a rank of 1.
3. Use VLOOKUP and MATCH to fill in the first table at the bottom to retrieve the difference for the selected departments for each year. You should write a single formula in cell B56 which you can copy to fill in the rest of the table.
4. Repeat this in the next table, but use HLOOKUP and MATCH. You should write a single formula in cell B65 which you can copy to fill in the rest of the table.
5. Repeat one more time, but use INDEX and MATCH to fill in the third table. Again, you should write a single formula in the upper left that you can copy to fill in the rest of the table.
6. Use Data Validation in cell B87 in order to create a dropdown where a department can be chosen. Then use INDEX and MATCH in order to fill in the table to retrieve the Budget and Actual for each financial year. Then take this table and create a bar chart to display the results. You can read about using data validation to create a drop-down list here: https://support.microsoft.com/en-us/office/create-a-drop-down-list-7693307a-59ef-400a-b769-c5402dce407b

Challenge Questions:  

7. Use XLOOKUP to find, for each financial year, the three highest ranked departments in terms of the percentage below budget their actual spending was. Bonus: Combine XLOOKUP with INDEX and MATCH in order to write two formulas that can be copied and pasted to fill in the table.
8. Do the same as above, but using only INDEX and MATCH.