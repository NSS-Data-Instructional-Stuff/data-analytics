## Covid-19 Cases and Vaccinations

Nashville and the rest of the world have been dealing with a pandemic for more than a year. In this project, you will explore where in the metro area people have contracted the virus and where people are getting vaccinated. Additionally, you'll look for characteristics of areas reporting a high number of cases, and areas reporting a high vaccination rate.

![public health logo](./assets/health_logo.png)

The following datasets have been provided:  
`COVID_CountByZipPerDate 03292021.csv` - provided on request by Metro Public Health Department, reports the number of cases by zip code from 3/6/2020 through 3/27/2021   
- **Specimen Collection Date** - the date when a person was tested for Covid-19, which had a positive result
- **Zip** - the zip code where the person(s) tested reside(s)  
- **Cases** - the number of postive results for tests conducted on the given date for the given zip code  

`vaccine_with_protocol.csv` - created for you from two datasets that were provided on request by Metro Public Health Department: a count of vaccines given by date, residence zipcode and dose number for all vaccine manufacturers (`COVID_VACC_CountByZipPerDate_All_04072021.csv`) and another with the count of vaccines given by date, residence zipcode, and dose number for **only** the two-protocol vaccine manufacturers (`COVID_VACC_CountByZipPerDate_Two_04072021.csv`) The source data for this file and the notebook with code used to create the `vaccine_with_protocol.csv` file have been included in the repository in a subfolder within the data folder (supplemental).  
- **vacc_date** - the date that the vaccination was given
- **zipcode** - the zipcode where the person(s) vaccinated reside(s)
- **count_given** - the number of vaccines given 
- **dose_nbr** - the dose number (1 or 2) that is being given
- **protocol** - whether the vaccine given is the one shot protocol (Johnson & Johnson) or two shot protocol (Moderna or Pfizer)


Other suggested datasets to explore include these from Census Reporter:
- [2019 Household Income by Zip Code](https://censusreporter.org/data/table/?table=B19001&geo_ids=860|16000US4752006)  
- [2019 Sex by Age by Zip Code](https://censusreporter.org/data/table/?table=B01001&geo_ids=860|16000US4752006)
- [2019 Sex by Educational Attainment by Zip Code](https://censusreporter.org/data/table/?table=B15002&geo_ids=860|31000US34980)   
- [2019 Hispanic or Latino Origin by Race By Zip Code](https://censusreporter.org/data/table/?table=B03002&geo_ids=860|31000US34980#)  

And this scrapable [population by zip code](http://zipatlas.com/us/tn/nashville/zip-code-comparison/population-density.htm).  

