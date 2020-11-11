### COVID-19 Spread
The spread of COVID-19 has been a concern since March 2020. In this project, you will explore COVID-19 in the Metropolitan Nashville area.

#### Available Data
 - [hubNashville 311 Service Requests](https://data.nashville.gov/Public-Services/hubNashville-311-Service-Requests/7qhx-rexh): Violations of Covid related rules and regulations are contained in this dataset where `Request Type` is **COVID-19** and `Subrequest Type` is **COVID-19 Violations**

  - `clusters.csv` was scraped from the [wsmv website](https://www.wsmv.com/news/metro-health-releases-latest-covid-19-clusters/article_ef554e08-1558-11eb-b290-873345e174d7.html) and geocoded using the Google API. The dataset provides detail for COVID-19 clusters (groupings of 10 or more cases identified by the Metro Public Health Department through its case investigation process).  
  **Cluster Name** - the name of the place where a cluster of cases has been traced to  
  **Facility Type** - the type of place the cluster location is  
  **Cluster Start Date** - date of the first known case traced to the cluster  
  **# Cases** -  the count of cases traced to the cluster  
  **Latitude** - latitude of the cluster  
  **Longitude** - longitude off the cluster  
  

  - data from the [nytimes/covid-19-data](https://github.com/nytimes/covid-19-data) repository is loaded weekly to a PostgreSQL database on AWS. Credentials to connect to this database will be provided separately. Tables in this database include:  
  **counties** - the running total of cases and deaths for US counties reported daily since 3/8/2020  
  **mask use** - results from online interviews conducted by Dynata for the NYT between July 2 and July 14, 2020. Participants were asked *How often do you wear a mask in public when you expect to be within six feet of another person?*

  - `businesses.csv` is another geocoded dataset created for this project using the Google API. This dataset includes:  
    **address** - the address from hubNashville of a reported violation  
    **vicinity** - the address for a business found near the address (the closest five businesses are included)  
    **name** - the name of the business located at the `vicinity`.  
    **type** - Google’s classification of that business

#### Part 1
Explore the COVID-19 violations reported through hubNashville to see how these have changed over time. Do violations get reported more in certain areas?

#### Part 2 
Use sqlalchemy to load data for Nashville from the `counties` table in the `covid_data` database on AWS. Explore this data. Is there a relationship between the number of cases over time and the number of violations reported over time?

#### Part 3
Use sqlalchemy to load data from the `mask_use` table in the `covid_data` database on AWS. How does Davidson County Tennessee compare to other counties in TN? How does it compare to other counties in the US?

#### Part 4
Explore whether there is a discernible relationship between reported COVID-19 violations and reported COVID-19 clusters. Use the `businesses` dataset to find possible business locations for the reported violations.

#### Part 5
If time permits, choose another aspect of COVID-19 in Nashville to explore.

