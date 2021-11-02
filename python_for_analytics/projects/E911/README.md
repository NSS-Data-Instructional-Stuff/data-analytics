# Metro Nashville Emergency Communications
## Tornado and Derecho Analysis

During the tornado on March 3rd, 2020 and the derecho on May 3rd, 2020, Nashville Emergency Communications received a large volume of 911 calls. In this project, you are tasked with analyzing this data to see the degree to which call locations matched up with the path of the tornado and to see how the overall call volume varied as the disasters progressed.

For this project, you have been give the following data files:
* `911_Phone_Calls_Tornado_030320.csv` and `911_Phone Calls_Derecho_050320_050420.csv`: Contain the time and approximate location of calls to 911 during and after both events.
* `Computer Aided Dispatch Data_Tornado Incidents 030320.csv` and `Computer Aided Dispatch Data_Derecho Incidents 050320-050420.csv`: Contain time and location where units were dispatched.
* `noaa_geodata`: This folder contains geojson files showing the path of the tornado, the estimated damage swaths, and the damage survey points corresponding to events on March 3, 2020. These were obtained from the National Oceanic and Atmospheric Administration (NOAA).

Your objectives for this project are as follows:
1. Develop a timeline of each storm based on the call locations and volume. This can include the following:
- Beginning and end of the event, based on call times
- Times of stronger storm impacts, based on call volumes
2. Compare the tornado path and damage path to the location of calls.
- Can you identify locations of heavy storm impact based on call volume?
- Are there areas that were hard-hit, but did not have as high a call volume as might have been expected? Stretch goal: Investigate the demographic and economic characteristics of these areas.
3. Investigate what types of structures were impacted. (Residential? Commercial?)
4. Determine how the call volume change in the hours after the disasters. Were there large spikes that quickly dropped off or was the call volume sustained in the hours after the events?
5. After answering the above questions, feel free to pose your own questions and attempt to answer them using the data provided or any other data that you want to bring in.
