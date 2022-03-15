# Tennessee Early Intervention System

[The Tennessee Early Intervention System (TEIS)](https://www.tn.gov/didd/for-consumers/tennessee-early-intervention-system-teis.html) is a program that provides services to children ages birth up to age three who have disabilities or other developmental delays.

The Individuals with Disabilities Education Act (IDEA) requires states to provide an annual report to the public about the performance of early intervention service programs (EIS programs) compared to the state's performance on indicator targets. This reporting is done for any child enrolled in TEIS for at least six months. Currently, this six month threshold is calculated based on initial individual family service plan (IFSP) date and final exit date. However, children sometimes leave the program and return at a later date, resulting in less than six months of services received but six months between initial entry and exit. Your goal in this project is to first calculate the true enrollment days for each child and then to see the effect on the reported numbers.

You have been provided an Excel Spreadsheet containing the data you will be working with. This spreadsheet contains 5 tabs:
* Reported data: A snapshot of how the final data was reported.
* Reported totals: Field B4 shows how many children were originally calculated as having fewer than 182 days of service using a straight calculation of the initial IFSP date and exit date.
* ECO with Exit 20-21: This is the data used to calculate the early childhood outcomes data reported in tab 1 and tab 2.
* Exit notes: Column K contains the comment field that records if children exited and re-entered the system between their initial IFSP and their exit date reported in the ECO data. This is the field you will need to research to understand what tabs 1 and 2 would look like if the days of service calculation was based on actual days of service.
* Terms-Acronyms: Explains the meaning of acronyms that you may encounter in this project.

Your main task is to recalculate the days of service for each child by considering the notes in column K.

As an example, consider Child ID 469200, contained in row 32. This child had an initial IFSP date of 11/13/2019 and and exit date of 9/22/2020, resulting in a days of service calculation of 314. However, the notes reveal that this child was withdrawn from the program by their parents on 01/21/2020 before reentering on 08/26/2020. Factoring this in, this child actually only received 96 days of service.

Once you have calculated the true days of service, use the data in the "ECO with Exit20-21" sheet to recalculate the values in the "Reported Data" tab. 

A secondary objective for this project is for you to explore the reasons that children exit the program. Currently TEIS provides services to eligible infants and toddlers from birth to age 3. Governor Bill Lee has proposed in his Fiscal Year 2023 budget to give children the option to remain on the program until their 4th birthday (https://www.tn.gov/didd/news/2022/2/7/governor-proposes-expansion-of-early-intervention-services-for-children.html). How often is it the case that children are aging out of the program compared to other reasons for leaving? What are the reasons that children are leaving and later coming back? How often do children have less than six months of service for reasons other than aging out?
