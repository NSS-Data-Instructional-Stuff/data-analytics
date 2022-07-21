# WeGo Public Transit

[WeGo Public Transit](https://www.wegotransit.com/) is a public transit system serving the Greater Nashville and Davidson County area. WeGo provides local and regional bus routes, the WeGo Star train service connecting Lebanon to downtown Nashville, along with several other transit services.

In this project, your goal will be to analyze data from WeGo's bus routes and attempt to identify intersections and other locations which experience frequent delays. This analysis can look by route, by direction of travel, and by day or day of the week. You can also consider time of day in your investigation (for example, comparing the AM and PM rush on Monday through Friday).

You can obtain the data for this project through Swiftly. You will be provided with an API key to  access this data. The API that you will be using is the [Speed Map API](https://swiftly-inc.stoplight.io/docs/standalone/573bc3fb95867-speed-map), which provides average speed information for a single route and direction over a given date range. Note that the API can return either speed data at the stop segment level or return high resolution data, which provides information for stop segments of approximately 25 meters along with more detailed speed and duration information. Please take the time to carefully read the API documentation so that you are familiar with the query parameter options and understand the response data.

You can get more information about these routes, such as route numbers and stop information, using the [Agency Routes API](https://swiftly-inc.stoplight.io/docs/standalone/5c0bd000bb0f2-agency-routes). A user-friendly map showing all routes is available at https://www.wegotransit.com/ride/maps-schedules/bus/. 

If time allows, investigate all routes, but start with the high ridership and frequent routes:
* 3: West End
* 7: Hillsboro
* 22: Bordeaux
* 23: Dickerson Pike
* 50: Charlotte Pike
* 52: Nolensville Pike
* 55: Murfreesboro Pike
* 56: Gallatin Pike