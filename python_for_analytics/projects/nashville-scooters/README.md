## Transportation Planning for Nashville: How Many Scooters are Optimal?
 What is the ideal density of available scooters to:
1.  Enable scooters to serve our transportation goals
2. Discourage scooters piling up on sidewalks
3. Keep it economically viable for companies to operate equitably in the city?
### Considerations
* A major planning goal is to reduce the number of people driving alone.
* Three rides (of 3 meters or more) per day per scooter is the baseline for ridership goals.
* The original pilot program limited scooter density to 340 scooters per square mile.  
* SUMD devices may be an important means of transportation in the [Promise Zone](http://www.nashville-mdha.org/the-nashville-promise-zone/) to help mitigate the "last mile" problem that exists in connecting people where they live to public transportation.

### Data
Six scooter datasets are [available for your analysis](https://drive.google.com/drive/folders/1ahVivk2WmW9wPA-V-M4ekL8ke9FfGiMk?usp=sharing). The polled location datasets have between 20 and 30 million rows of data each, whereas the trip datasets have just a couple hundred thousand rows each.
1. `may.csv` - May 2019 polled location
2. `june.csv` - June 2019 polled location 
3. `july.csv` - July 2019 polled location
4. `may_trip.csv` - May 2019 trips
5. `june_trip.csv` - June 2019 trips
6. `july_trip.csv` - July 2019 trips
  
#### location data
**pubdatetime** - date and time that the device was polled  
**latitude** - latitude location of device when polled  
**longitude** - longitude location of device when polled  
**sumdid** - unique identifier for the device  
**sumdtype** - one of two types (powered or standard)  
**chargelevel** - battery charge level of the device when polled  
**sumdgroup** - type of device (scooter or bicycle)  
**costpermin** - the cost per minute of device use  
**companyname** - the company that owns the device  
- Bird  
- Lyft  
- Gotcha  
- Lime  
- Spin  
- Jump  
- Bolt

#### trip data
**pubTimeStamp** - data and time of the trip   
**companyName** - the company that owns the device  
**tripRecordNum** - unique identifier for the trip  
**sumdID** - unique identifier for the device  
**tripDuration** - the time rounded in hours that the trip lasted  
**tripDistance** - the distance traveled for the trip in feet  
**startDate** - date the trip started  
**startTime** - time the trip started  
**endDate** - date the trip ended  
**endTime** - time the trip ended  
**startLatitude** - latitude location of the device at the start of the trip  
**startLongitude** - longitude location of the device at the start of the trip   
**endLatitude** - latitude location of the device at the end of the trip   
**endLongitude** - longitude location of the device at the end of the trip   
**tripRoute** - geospatial points defining the route taken  
**create_dt** - date the data was provided to metro by the company

Shapefiles for **Nashville Promise Zone**  
Remember that you need to keep the shapefiles together. Even though you will point to the `.shp` file to create polygons, that file references other files in the `MDHA_Promise_Zones` folder to create the geoDataFrame.  

Per [ordinance](https://filetransfer.nashville.gov/portals/0/sitecontent/TLC/docs/SUMD-DataSharing.pdf): 
```
All permitted operators will first clean data before providing or reporting data to Metro. Data 
processing and cleaning shall include:  
 1. Removal of staff servicing and test trips
 2. Removal of trips below one minute
 3. Trip lengths are capped at 24 hours
 ```
Anecdotally, per metro ITS staff, some of these observations may still be in the data.    

![scooters](images/scooters.jpeg)