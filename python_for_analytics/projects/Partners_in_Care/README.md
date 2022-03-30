# Partners in Care

The [Partners in Care program](https://www.nashville.gov/departments/police/executive-services/alternative-policing-strategies/partners-care) is a collaboration between the Metro Nashville Police Department, Mental Health Cooperative, and other metro government agencies in order to better serve individuals in the community who are experiencing a behavioral health crisis. The Partners in Care program strives to improve access to care for individuals experiencing a behavioral health crisis, divert consumers from the criminal justice system and into the health care system, all while improving the communication and coordination across all systems of care, and increasing the safety of all involved in these crisis interactions. Currently, the Partners in Care program is in the pilot phase, operating only in the areas patrolled by the Hermitage and North Precincts.

In this project, you'll be working with police calls data, with the goal of identify logical areas for future phased expansion of the pilot program. The data you have received is reported per precinct per month, from July 1, 2021 through Mar. 31, 2022 and contains the following call types:
* 10-35 Mental Illness
* 10-40 Suspicious Person/Trespass
* 10-42 Intoxicated Person
* 10-43 Welfare Check
* 10-44 Disorderly Subject
* 10-59 Indecent Exposure
* 10-63 Suicide threats_attempt
* Domestic Disturbance
* 5000 Officer in Trouble
* EMS Assist

Explore the calls data to look for any trends in terms of times or locations. Are there any precincts that get more than their share of calls?

In addition to the calls data, you have been provided data from the US Census. Use this data to determine if there are any trends that may be disproportionality responding to populations of high poverty, low education, housing inequities, or race/ethnicity. You have been provided with several tables worth of data, but if you want to explore other factors, [Census Reporter](https://censusreporter.org/) is an excellent resource for locating census data.

**Dataset Information**

You have been provided the following datasets:

- Mental_Calls_by_Precinct_Plain_Text_Incident_Types_070121_022822.xlsx: This file contains the dates, times, locations, and incident types.
- geocodes.csv: Latitude and Longitude values, obtained from the [Google Maps API](https://developers.google.com/maps/documentation/geocoding/overview)
- census.sqlite: A SQLite database containing census tract level estimates from the US Census's [2019 American Community Survey](https://www.census.gov/programs-surveys/acs). More information on each table can be found in the included data dictionary. It is organized into the following tables:
    * B01001: Population by Age and Sex
    * B03002: Population by Race and Ethnicity
    * B11001: Households by Type
    * B11002: Population by Household Type
    * B15002: Sex by Educational Attainment for the Population 25 Years and Over
    * B19001: Household Income
    * B19013: Median Household Income
    * B19301: Per Capita Income
    * B25024: Types of Structure
    * B25075: Value of Owner-Occupied Housing Units
    * S1701: Poverty Status in the Past 12 Months