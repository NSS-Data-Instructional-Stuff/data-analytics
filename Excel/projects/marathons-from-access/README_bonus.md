## Rock and Roll Marathons Bonus Questions

In these bonus questions, you'll get to explore some additional features of Excel.

1. First, notice that when you imported the data, it came in as an [Excel table](https://support.microsoft.com/en-us/office/create-and-format-tables-e81aa349-b006-4f8a-9806-5af9df0ac664). Excel tables make it easier to perform analysis and write functions on datasets. If you have not already done so, rewrite your formulas for the fastest, slowest, median, and mean time using [Structured References](https://support.microsoft.com/en-us/office/using-structured-references-with-excel-tables-f5ed2452-2337-4f71-bed3-c8ae6d2b276e). This means that you should be referring to the table names and column names rather than using explicit cell references.

2. The [INDIRECT](https://support.microsoft.com/en-au/office/indirect-function-474b3a3a-8a26-4f44-b491-92b6306fa261) function allows you to make references using strings. If you have not already done so, redo your calculations for Question 2 so that you only need to write one function per year which can be copied down to calculate values for all years.

3. When performing calculations or making comparisons to a constant value, you can often improve the readability of your spreadsheet by using named cells. You can read more about working with named cells [here](https://support.microsoft.com/en-au/office/define-and-use-names-in-formulas-4d0f13ac-53b7-422e-afd2-abd7ff379c64). If you have not already done so, create a cell which contains Oprah's time and name this cell "OprahTime". Reference this cell by name in your calculations on Question 3.

 4. You've seen from the previous calculations that marathon times were slower for 2017 compared to 2016,but now let's see if the times of individual runners were slower.   
 a. Make a new sheet, "Year_to_Year_Comparison".   
 b. In this sheet, create a table that contains the name of each runner who participated in the 2016 full marathon.   
 c. In the second column, put the finish times for those runners for the 2016 marathon. Hint: you may want to use a lookup function such as VLOOKUP or XLOOKUP to pull these numbers.
 d. Add a third column that shows the 2017 time for runners that also participated in the 2017 marathon.   
 e. What percentage of runners who participated in both the 2016 and 2017 marathons had a slower finish time in 2017 compared to 2016?  
 f. Who had the largest improvement in time from 2016 to 2017? Who had the biggest drop off?
 g. Build off of what you did to pull the 2017 times to determine how many runners competed in every year from 2016 through 2019. Out of these runners, which had the largest improvement in finish position?

 5. Finally, let's see another way that we can compare finish time for competitors across years - this time using [Power Query](https://support.microsoft.com/en-us/office/about-power-query-in-excel-7104fbee-9e62-4cb9-a02e-5bfb1a6c536a). Our first goal will be to find the finish times for all competitors who competed both in 2016 and in 2017.  A good reference for the steps in this exercise is this blog post: https://trumpexcel.com/merge-tables/ 
 a. Start by going to the Data Tab, selecting "Get Data", then "Combine Queries" and "Merge".  This should open a popup window.  
 b. In this window, you can select the data for the 2016 marathons at the top and the 2017 marathons below.  Next, you'll need to select the kind of join to perform. We are looking for people who appear in both tables, so we want to do an Inner join. Finally, select the columns that we want to match. Once you've made these selections, click Okay. This should take you into the Power Query editor.  
 c. Once in the PowerQuery editor, you can modify what the result of the merge looks like. Edit the results so that you are keeping only the Name of the competitor, their finish time in 2016 and their finish time in 2017. Rename the two time columns so that you know which came from which year. Once you are done, hit the "Close and Load" button to save the result to a new spreadsheet.  
 d. Repeat the above steps to also bring in the 2018 and 2019 all into one table. You'll have to perform a total of 3 merges to get the final results.