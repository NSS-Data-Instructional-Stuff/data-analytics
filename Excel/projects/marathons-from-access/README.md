### Nashville Rock-and-Roll Marathon and Half-Marathon Race Results (2016 - 2019)

1. Create a new blank workbook and load the 8 marathon and half-marathon tables from marathons.accdb, a MS Access database called (Data --> Get Data --> From Database --> From Microsoft Access Database).  
    a. Load each table to a separate worksheet. Give the worksheets *_meaningful_* names.  
    b. Be sure to format the Time column after load (HH:MM:SS). If you get any load errors, try to understand whether you can reload the data and correct them.

Notice that after importing, the data is contained in a table. Note the names of these tables. When writing formulas, make reference the table names (that is, use [structured references](https://support.microsoft.com/en-us/office/using-structured-references-with-excel-tables-f5ed2452-2337-4f71-bed3-c8ae6d2b276e)), not to the cell ranges.

2. Create a new column, Rank, in each table that give the finishing position of each runner (based on their Time). Make sure that you are sorting in ascending order.

3. Create another worksheet and name it `analysis`. This is where you should do your analysis work.

4. Create two two tables, one for the half and one for the full marathons. Set the row labels to 2016, 2017, 2018, and 2019 and the columns equal to Count, Min, Max, Mean, and Median. Then fill in the values for these tables using the INDIRECT formula to reference the appropriate table rather than using cell ranges.

5. Quartiles help group ordered data into buckets – the first quartile separates the lowest 25 percent of the data from the top 75 percent, the second quartile (same as the median) divides the dataset in half, and the third quartile separates the lowest 75 percent from the top 25 percent. Add columns for the second and third quartiles for the half and full marathons.

6. Create another table where you compute for both the half and the full marathons the mean and median finish times across all 4 years.
 
7. First time marathoners sometimes set a goal of beating “Oprah’s time,” Oprah Winfrey’s time (04:29:20) in the 1994 Marine Corps Marathon when she was 40 years old.
	a. Create a cell in the analysis sheet which contains Oprah's time. Rename this cell to OprahTime so that you can reference it by name in formulas.  
        b. How many runners each year beat Oprah’s time?  
        c. What percentage of runners in each of the 4 marathons beat Oprah’s time?  

8. Use data validation to create a dropdown where the user can select a year. Then for the selected year, find the first, second, and third place marathon runners and times.

9. Scott Wietecha has won the Rock-n-Roll Marathon seven times. Within the 2016 Marathons table, create a new column which contains the difference between a runner's time and Scott Wietecha's time.

10. Is there a year in which runners seem slower or faster? Formulate a hypothesis for any apparent differences. 

Bonus: Make a new sheet, year to year comparison. Create a table that contains the name of each runner who participated in the 2016 full marathon. Then in the second column, put the finish times for those runners for the 2016 marathon. Then, add a third column that shows the 2017 time for runners that also participated in the 2017 marathon. What percentage of runners who participated in both the 2016 and 2017 marathons had a slower finish time in 2017 compared to 2016?




