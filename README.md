ETL Project:
Project Name: Climate Action - Reduce Air Pollution
Members: Harini Rao, Margeaux Jensen, Neelam Baxi, Zen Acar


Sources of Data:
	Kaggle - US Pollution Data (2000-2016) - CSV - https://www.kaggle.com/sogun3/uspollution
	OECD - https://stats.oecd.org/index.aspx?lang=en - (2000-2016) CSV
	

	
Transformation:
OECD Cleaning:
-	Separating Year columns in 16 columns adding Pollutants in rows
-	Changing the Pollutants names to match with US Pollution data
-	 Remove the country column, Pollutant, VAR, Variable, Year, Unit Code, PowerCode Code, PowerCode,   Reference Period Code, Reference Period, Flag Codes, Flags

US Pollution Data Cleaning:
-	State Code, County Code, Site Num, Address, County,	City, O3 Units, O3 Mean, O3 1st Max Value, O3 1st Max Hour	, O3 AQI, NO2 1st Max Value, NO2 1st Max Hour, NO2 AQI,SO2 1st Max Value, SO2 1st Max Hour, SO2 AQI, CO 1st Max Value, CO 1st Max Hour, CO AQI
-	Aggregate the Mean columns and separate by year( columns) and pollutants (rows)

Final Production Database: Relational Database - PostgreSQL


