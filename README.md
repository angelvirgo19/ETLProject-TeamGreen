# ETL Project:
## Project Name: Climate Action - Reduce Air Pollution;
### Members: Harini Rao, Margeaux Jensen, Neelam Baxi, Zen Acar


#### Sources of Data:
-	Kaggle - US Pollution Data - https://www.kaggle.com/sogun3/uspollution -  (2000-2016) CSV 
-	OECD - Air Emmisions by Source - https://stats.oecd.org/index.aspx?lang=en - (2000-2016) CSV

#### Google Drive: Resources folder- https://drive.google.com/drive/folders/1P55m1IX6U7vmT2oF6twnk8h5u4HjFekH?usp=sharing

	
#### Transformation:
-	Air Emmisions by Source Dataset Cleaning:
	-	Separated Year columns in 16 columns adding Pollutants in rows
	-	Changed the Pollutants names to match with US Pollution data
	-	Removed the country column, Pollutant, VAR, Variable, Year, Unit Code, PowerCode Code, PowerCode,   Reference Period 			Code, Reference Period, Flag Codes, Flags

-	US Pollution Data Cleaning:
	-	Removed State Code, County Code, Site Num, Address, County, City, O3 Units, O3 Mean, O3 1st Max Value, O3 1st Max Hour, 		O3 AQI, NO2 1st Max Value, NO2 1st Max Hour, NO2 AQI,SO2 1st Max Value, SO2 1st Max Hour, SO2 AQI, CO 1st Max Value, CO 		1st Max Hour, CO AQI
	-	Aggregated the Mean columns and separate by year (columns) and pollutants (rows)
	- 	Converted the values column from Parts per Billion to Gram/Ton

#### Final Production Database: Relational Database - PostgreSQL

#### The final tables used in the production database:
- 	clean_pollution_db
- 	clean_air_emission_co
- 	clean_air_emission_so2
- 	clean_air_emission_no2



