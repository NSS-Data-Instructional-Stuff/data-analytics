## Metro Scooters Analysis
In May of 2018, Bird dropped hundreds of scooters on the streets of Nashville with no permission. In response, Metro sued, which caused Bird to remove and wait for permits. Metro began developing regulations for scooters and other shared urban mobility devices (SUMDs). In 2019, the Metro Council passed legislation enacting a one-year pilot program for scooters. For this project, you have been provided with the data for 3 months of this pilot program with the goal of reporting on usage trends and generating recommendations for quantity and distribution of scooters in Nashville.

Metro would like to know what the ideal density of available scooters is, which balances the objectives of
enabling scooters to serve transportation goals,
discouraging scooters from piling up on sidewalks,
keeping it economically viable for companies to operate equitably in the city.

This data for this project can be downloaded as a Postgres backup from https://drive.google.com/file/d/1BXAfByFvHCwX0G1BvTCQ373qKm7wE4Y-/view?usp=share_link.

Some notes about the data:
When not in use, each scooter will report its location every five minutes. This data is contained in the scooters table.
Both tables contain a large number of records, so think carefully about what data you need to pull in a given query.

Start with addressing these questions:
1. During this period, seven companies offered scooters. How many scooters did each company have in this time frame? Did the number for each company change over time? Did scooter usage vary by company?
2. According to Second Substitute Bill BL2018-1202 (as amended) (https://web.archive.org/web/20181019234657/https://www.nashville.gov/Metro-Clerk/Legislative/Ordinances/Details/7d2cf076-b12c-4645-a118-b530577c5ee8/2015-2019/BL2018-1202.aspx), all permitted operators will first clean data before providing or reporting data to Metro. Data processing and cleaning shall include:  
* Removal of staff servicing and test trips  
* Removal of trips below one minute  
* Trip lengths are capped at 24 hours  
Are the scooter companies in compliance with the second and third part of this rule? 
3. The goal of Metro Nashville is to have each scooter used a minimum of 3 times per day. Based on the data, what is the average number of trips per scooter per day? Make sure to consider the days that a scooter was available. How does this vary by company?
4. What is the highest count of scooters being used at the same time? When did it occur? Does this vary by zip code or other geographic region?
4. SUMDs can provide alternative transportation and provide "last mile" access to public transit. How often are trips starting near public transit hubs? You can download a dataset of bus stop locations from https://data.nashville.gov/Transportation/Regional-Transportation-Authority-Bus-Stops/p886-fnbd.

Deliverables:
At the conclusion of this project, your group should deliver a presentation which addresses the following points:
* Are scooter companies in compliance with the required data cleaning?
* What are typical usage patterns for scooters in terms of time, location, and trip duration?
* Does it appear that scooters are used as "last mile" transportation from public transit hubs to work or school?
* What are your recommendations for total number of scooters for the city overall and density of scooters by zip code?
