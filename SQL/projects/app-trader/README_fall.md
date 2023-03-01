App Trader
Your team has been hired by a new company called App Trader to help them explore and gain insights from apps that are made available through the Apple App Store and Android Play Store.   

App Trader is a broker that purchases the rights to apps from developers in order to market the apps and offer in-app purchases. The apps' developers retain all money from users purchasing the app from the relevant app store, and they retain half of the money made from in-app purchases. App Trader will be solely responsible for marketing any apps they purchase the rights to.

Unfortunately, the data for Apple App Store apps and the data for Android Play Store apps are located in separate tables with no referential integrity.

1. Loading the data
	a. Launch PgAdmin and create a new database called app_trader.

	b. Right-click on the app_trader database and choose Restore...

	c. Use the default values under the Restore Options tab.

	d. In the Filename section, browse to the backup file app_store_backup.backup in the data folder of this repository.

	e. Click Restore to load the database.

	f. Verify that you have two tables:
		- app_store_apps with 7197 rows
		- play_store_apps with 10840 rows

2. Assumptions
Based on research completed prior to launching App Trader as a company, you can assume the following:

	a. App Trader will purchase the rights to apps for 10,000 times the list price of the app on the Apple App Store/Google Play Store, however the minimum price to purchase the rights to an app is $25,000. For example, a $3 app would cost $30,000 (10,000 x the price) and a free app would cost $25,000 (The minimum price). NO APP WILL EVER COST LESS THEN $25,000 TO PURCHASE.

	b. Apps earn $5000 per month on average from in-app advertising and in-app purchases regardless of the price of the app.

	c. App Trader will spend an average of $1000 per month to market an app regardless of the price of the app. If App Trader owns rights to the app in both stores, it can market the app for both stores for a single cost of $1000 per month.

	d. For every quarter-point that an app gains in rating, its projected lifespan increases by 6 months, in other words, an app with a rating of 0 can be expected to be in use for 1 year, an app with a rating of 1.0 can be expected to last 3 years, and an app with a rating of 4.0 can be expected to last 9 years. Ratings should be rounded to the nearest 0.25 to evaluate an app's likely longevity.

	e. App Trader would prefer to work with apps that are available in both the App Store and the Play Store since they can market both for the same $1000 per month.

3. Deliverables
	a. Develop some general recommendations about the price range, genre, content rating, or any other app characteristics that the company should target.

	b. Develop a Top 10 List of the apps that App Trader should buy based on profitability/return on investment as the sole priority.

	c. Develop a Top 4 list of the apps that App Trader should buy that are profitable but that also are thematically appropriate for the upcoming Halloween themed campaign.

	c. Submit a report based on your findings. The report should include both of your lists of apps along with your analysis of their cost and potential profits. All analysis work must be done using PostgreSQL, however you may export query results to create charts in Excel for your report.