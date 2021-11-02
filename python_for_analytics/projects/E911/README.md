# Metro Nashville Emergency Communications
## Tornado and Derecho Analysis

During the tornado on March 3rd, 2020 and the derecho on May 3rd, 2020, Nashville Emergency Communications received a large volume of 911 calls. In this project, you are tasked with analyzing this data to see the degree to which call locations matched up with the path of the tornado and to see how the overall call volume varied as the disasters progressed.

For this project, you have been give the following data files:
* `911_Phone_Calls_Tornado_030320.csv` and `911_Phone Calls_Derecho_050320_050420.csv`: Contain the time and approximate location of calls to 911 during and after both events.
* `Computer Aided Dispatch Data_Tornado Incidents 030320.csv` and `Computer Aided Dispatch Data_Derecho Incidents 050320-050420.csv`: Contain time and location for when units were dispatched.
* `noaa_geodata`: This folder contains geojson files showing the path of the tornado, the estimated damage swaths, and the damage survey points corresponding to events on March 3, 2020. These were obtained from the National Oceanic and Atmospheric Administration (NOAA).

Your goal for this project is to develop a timeline of each storm based on the call locations and volume. This analysis can include the following:
- Beginning and end of the event, based on call times
- Times of stronger storm impacts, based on call volumes
- The geographic path of the storm generating reports of damage or impact
- Locations of heaviest storm impact based on call volume
- Locations less impacted or not impacted, based on call volume (or lack thereof)
- The types of structures impacted (Residential? Commercial?)
- Communities within the County most impacted by the storms?
- An analysis of the demographic and economic realities of each community impacted by the storm and to what severity