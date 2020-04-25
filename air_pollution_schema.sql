-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Modify this code to update the DB schema diagram.
-- To reset the sample schema, replace everything with
-- two dots ('..' - without quotes).

CREATE TABLE "clean_us_pollution" (
    "Year" date   NOT NULL,
    "NO2_Mean" float   NOT NULL,
    "SO2_Mean" float   NOT NULL,
    "CO_Mean" float   NOT NULL,
    CONSTRAINT "pk_clean_us_pollution" PRIMARY KEY (
        "Year"
     )
);

CREATE TABLE "clean_air_emission_co" (
    "Year" date   NOT NULL,
    "POL" varchar   NOT NULL,
    "Value" float   NOT NULL,
    CONSTRAINT "pk_clean_air_emission_co" PRIMARY KEY (
        "Year"
     )
);

CREATE TABLE "clean_air_emission_no2" (
    "Year" date   NOT NULL,
    "POL" varchar   NOT NULL,
    "Value" float   NOT NULL,
    CONSTRAINT "pk_clean_air_emission_no2" PRIMARY KEY (
        "Year"
     )
);

CREATE TABLE "clean_air_emission_so2" (
    "Year" date   NOT NULL,
    "POL" varchar   NOT NULL,
    "Value" float   NOT NULL,
    CONSTRAINT "pk_clean_air_emission_so2" PRIMARY KEY (
        "Year"
     )
);

ALTER TABLE "clean_air_emission_co" ADD CONSTRAINT "fk_clean_air_emission_co_Year" FOREIGN KEY("Year")
REFERENCES "clean_us_pollution" ("Year");

ALTER TABLE "clean_air_emission_no2" ADD CONSTRAINT "fk_clean_air_emission_no2_Year" FOREIGN KEY("Year")
REFERENCES "clean_us_pollution" ("Year");

ALTER TABLE "clean_air_emission_so2" ADD CONSTRAINT "fk_clean_air_emission_so2_Year" FOREIGN KEY("Year")
REFERENCES "clean_us_pollution" ("Year");

