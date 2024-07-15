/* 
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
DATABASE CREATION
<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< 
*/

-- Rename the dummy pygadmin4 database template1 to owid ('our world in data').
ALTER DATABASE template1 RENAME TO owid;

/* 
OWID ENERGY 
- Create the table owid_energy: 
	Contains detailed information on various types of energy consumption, electricity generation, and their shares in the total energy mix.
*/
CREATE TABLE owid_energy (
    country varchar(50),
	year varchar(4),
	iso_code varchar(5),
	population numeric,
	gdp numeric,
	biofuel_cons_change_pct numeric,
	biofuel_cons_change_twh numeric,
	biofuel_cons_per_capita numeric,
	biofuel_consumption numeric,
	biofuel_elec_per_capita numeric,
	biofuel_electricity numeric,
	biofuel_share_elec numeric,
	biofuel_share_energy numeric,
	carbon_intensity_elec numeric,
	coal_cons_change_pct numeric,
	coal_cons_change_twh numeric,
	coal_cons_per_capita numeric,
	coal_consumption numeric,
	coal_elec_per_capita numeric,
	coal_electricity numeric,
	coal_prod_change_pct numeric,
	coal_prod_change_twh numeric,
	coal_prod_per_capita numeric,
	coal_production numeric,
	coal_share_elec numeric,
	coal_share_energy numeric,
	electricity_demand numeric,
	electricity_generation numeric,
	electricity_share_energy numeric,
	energy_cons_change_pct numeric,
	energy_cons_change_twh numeric,
	energy_per_capita numeric,
	energy_per_gdp numeric,
	fossil_cons_change_pct numeric,
	fossil_cons_change_twh numeric,
	fossil_elec_per_capita numeric,
	fossil_electricity numeric,
	fossil_energy_per_capita numeric,
	fossil_fuel_consumption numeric,
	fossil_share_elec numeric,
	fossil_share_energy numeric,
	gas_cons_change_pct numeric,
	gas_cons_change_twh numeric,
	gas_consumption numeric,
	gas_elec_per_capita numeric,
	gas_electricity numeric,
	gas_energy_per_capita numeric,
	gas_prod_change_pct numeric,
	gas_prod_change_twh numeric,
	gas_prod_per_capita numeric,
	gas_production numeric,
	gas_share_elec numeric,
	gas_share_energy numeric,
	greenhouse_gas_emissions numeric,
	hydro_cons_change_pct numeric,
	hydro_cons_change_twh numeric,
	hydro_consumption numeric,
	hydro_elec_per_capita numeric,
	hydro_electricity numeric,
	hydro_energy_per_capita numeric,
	hydro_share_elec numeric,
	hydro_share_energy numeric,
	low_carbon_cons_change_pct numeric,
	low_carbon_cons_change_twh numeric,
	low_carbon_consumption numeric,
	low_carbon_elec_per_capita numeric,
	low_carbon_electricity numeric,
	low_carbon_energy_per_capita numeric,
	low_carbon_share_elec numeric,
	low_carbon_share_energy numeric,
	net_elec_imports numeric,
	net_elec_imports_share_demand numeric,
	nuclear_cons_change_pct numeric,
	nuclear_cons_change_twh numeric,
	nuclear_consumption numeric,
	nuclear_elec_per_capita numeric,
	nuclear_electricity numeric,
	nuclear_energy_per_capita numeric,
	nuclear_share_elec numeric,
	nuclear_share_energy numeric,
	oil_cons_change_pct numeric,
	oil_cons_change_twh numeric,
	oil_consumption numeric,
	oil_elec_per_capita numeric,
	oil_electricity numeric,
	oil_energy_per_capita numeric,
	oil_prod_change_pct numeric,
	oil_prod_change_twh numeric,
	oil_prod_per_capita numeric,
	oil_production numeric,
	oil_share_elec numeric,
	oil_share_energy numeric,
	other_renewable_consumption numeric,
	other_renewable_electricity numeric,
	other_renewable_exc_biofuel_electricity numeric,
	other_renewables_cons_change_pct numeric,
	other_renewables_cons_change_twh numeric,
	other_renewables_elec_per_capita numeric,
	other_renewables_elec_per_capita_exc_biofuel numeric,
	other_renewables_energy_per_capita numeric,
	other_renewables_share_elec numeric,
	other_renewables_share_elec_exc_biofuel numeric,
	other_renewables_share_energy numeric,
	per_capita_electricity numeric,
	primary_energy_consumption numeric,
	renewables_cons_change_pct numeric,
	renewables_cons_change_twh numeric,
	renewables_consumption numeric,
	renewables_elec_per_capita numeric,
	renewables_electricity numeric,
	renewables_energy_per_capita numeric,
	renewables_share_elec numeric,
	renewables_share_energy numeric,
	solar_cons_change_pct numeric,
	solar_cons_change_twh numeric,
	solar_consumption numeric,
	solar_elec_per_capita numeric,
	solar_electricity numeric,
	solar_energy_per_capita numeric,
	solar_share_elec numeric,
	solar_share_energy numeric,
	wind_cons_change_pct numeric,
	wind_cons_change_twh numeric,
	wind_consumption numeric,
	wind_elec_per_capita numeric,
	wind_electricity numeric,
	wind_energy_per_capita numeric,
	wind_share_elec numeric,
	wind_share_energy numeric
);

-- Set PRIMARY KEY and NOT NULL constraints for table owid_energy.
ALTER TABLE owid_energy
ADD CONSTRAINT pk_energy_country_year PRIMARY KEY (country, year),
ALTER COLUMN country SET NOT NULL,
ALTER COLUMN year SET NOT NULL;

-- Check output of owid_energy table.
SELECT * 
FROM owid_energy
LIMIT 20;

-- Check number of rows in owid_energy table (= 21812).
SELECT COUNT(*) AS row_count
FROM owid_energy;

-- Check number of columns in owid_energy table (= 130).
SELECT COUNT(*) AS column_count
FROM information_schema.columns
WHERE table_name = 'owid_energy';

/* 
OWID CO2 
- Create table owid_co2:
	Contains data on carbon emissions from various sources, including fossil fuels and other industries, as well as indicators like GDP and population.
*/
CREATE TABLE owid_co2 (
	country varchar(50),
	year varchar(4),
	iso_code varchar(5),
	population numeric,
	gdp numeric,
	cement_co2 numeric,
	cement_co2_per_capita numeric,
	co2 numeric,
	co2_growth_abs numeric,
	co2_growth_prct numeric,
	co2_including_luc numeric,
	co2_including_luc_growth_abs numeric,
	co2_including_luc_growth_prct numeric,
	co2_including_luc_per_capita numeric,
	co2_including_luc_per_gdp numeric,
	co2_including_luc_per_unit_energy numeric,
	co2_per_capita numeric,
	co2_per_gdp numeric,
	co2_per_unit_energy numeric,
	coal_co2 numeric,
	coal_co2_per_capita numeric,
	consumption_co2 numeric,
	consumption_co2_per_capita numeric,
	consumption_co2_per_gdp numeric,
	cumulative_cement_co2 numeric,
	cumulative_co2 numeric,
	cumulative_co2_including_luc numeric,
	cumulative_coal_co2 numeric,
	cumulative_flaring_co2 numeric,
	cumulative_gas_co2 numeric,
	cumulative_luc_co2 numeric,
	cumulative_oil_co2 numeric,
	cumulative_other_co2 numeric,
	energy_per_capita numeric,
	energy_per_gdp numeric,
	flaring_co2 numeric,
	flaring_co2_per_capita numeric,
	gas_co2 numeric,
	gas_co2_per_capita numeric,
	ghg_excluding_lucf_per_capita numeric,
	ghg_per_capita numeric,
	land_use_change_co2 numeric,
	land_use_change_co2_per_capita numeric,
	methane numeric,
	methane_per_capita numeric,
	nitrous_oxide numeric,
	nitrous_oxide_per_capita numeric,
	oil_co2 numeric,
	oil_co2_per_capita numeric,
	other_co2_per_capita numeric,
	other_industry_co2 numeric,
	primary_energy_consumption numeric,
	share_global_cement_co2 numeric,
	share_global_co2 numeric,
	share_global_co2_including_luc numeric,
	share_global_coal_co2 numeric,
	share_global_cumulative_cement_co2 numeric,
	share_global_cumulative_co2 numeric,
	share_global_cumulative_co2_including_luc numeric,
	share_global_cumulative_coal_co2 numeric,
	share_global_cumulative_flaring_co2 numeric,
	share_global_cumulative_gas_co2 numeric,
	share_global_cumulative_luc_co2 numeric,
	share_global_cumulative_oil_co2 numeric,
	share_global_cumulative_other_co2 numeric,
	share_global_flaring_co2 numeric,
	share_global_gas_co2 numeric,
	share_global_luc_co2 numeric,
	share_global_oil_co2 numeric,
	share_global_other_co2 numeric,
	share_of_temperature_change_from_ghg numeric,
	temperature_change_from_ch4 numeric,
	temperature_change_from_co2 numeric,
	temperature_change_from_ghg numeric,
	temperature_change_from_n2o numeric,
	total_ghg numeric,
	total_ghg_excluding_lucf numeric,
	trade_co2 numeric,
	trade_co2_share numeric
);

-- Set PRIMARY KEY and NOT NULL constraints for table owid_co2.
ALTER TABLE owid_co2
ADD CONSTRAINT pk_co2_country_year PRIMARY KEY (country, year),
ALTER COLUMN country SET NOT NULL,
ALTER COLUMN year SET NOT NULL;

-- Check sample output of owid_co2 table.
SELECT * 
FROM owid_co2
LIMIT 20;

-- Check number of rows in owid_co2 table (= 47415).
SELECT COUNT(*) AS row_count
FROM owid_co2;

-- Check number of columns in owid_co2 table (= 80).
SELECT COUNT(*) AS column_count
FROM information_schema.columns
WHERE table_name = 'owid_co2';
/* 
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
DATA INTEGRITY CHECKS
<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< 
*/

/*
RESULTS
- Several country values are lacking a corresponding iso_code, mainly region aggregates from different sources ('Non-OECD') and previously exisitng countries ('Yugoslavia').
- Counts (i.e. available yearly records) range from 11 - 124 for owid_energy (1900 - 2023) and 1 - 273 for owid_co2 (1750 - 2022).
FIXES 
- Implement other_codes for non-country records that might still be useful for analysis (e.g. continents, income groups).
- Create table views for both owid_energy and owid_co2 to exclude irrelevant country records and only keep the years 1980 - 2022.
*/

-- Check integrity of country names and their iso_codes for both tables
SELECT 
	country, 
	iso_code, 
	COUNT(*) 
FROM owid_energy
GROUP BY country, iso_code
ORDER BY COUNT(*);

SELECT 
	country, 
	iso_code, 
	COUNT(*) 
FROM owid_co2
GROUP BY country, iso_code
ORDER BY COUNT(*);

-- Change data type of year column from varchar to smallint for easier processing and aggregates like MIN & MAX.
ALTER TABLE owid_energy
ALTER COLUMN year TYPE smallint USING year::smallint;

ALTER TABLE owid_co2
ALTER COLUMN year TYPE smallint USING year::smallint;

-- Check time range for both tables
SELECT 
	MIN(year), 
	MAX(year) 
FROM owid_energy;

SELECT 
	MIN(year), 
	MAX(year) 
FROM owid_co2;

/*
CUSTOM CODES
- Add an additional column custom_codes to account for non-country records.
- Keep continents/regions and groups that are present in both tables (e.g. 'Africa', 'Low-income countries').
- Keep reasonable non-country records that are present in either table and might be useful for further analysis (e.g. 'International shipping').
- Remove records that are a result of different mappings of various sources (e.g. 'OECD (EIA)'/'OECD (Shift)').
*/

-- Check which non-countries are missing an iso_code but are present in both tables.
SELECT 
	e.country AS e_country, 
	e.iso_code AS e_iso_code
FROM owid_energy AS e
JOIN owid_co2 AS c
ON e.country = c.country
WHERE e.iso_code IS NULL
GROUP BY e.country, e.iso_code;

-- Add a column for custom codes to both tables.
ALTER TABLE owid_energy
ADD COLUMN custom_code varchar(10);

ALTER TABLE owid_co2
ADD COLUMN custom_code varchar(10);

-- Update both tables with customized codes.
-- 1. Step: Create a table for code mapping.
CREATE TABLE custom_country_codes (
    country varchar(50) PRIMARY KEY,
    custom_code varchar(10)
);

-- 2. Step: Map reasonable non-countries and codes.
INSERT INTO custom_country_codes (country, custom_code) VALUES
	('Africa', 'AFR'),
	('Asia', 'ASIA'),
	('Europe', 'EUR'),
	('North America', 'NA'),
	('South America', 'SA'),
	('Oceania', 'OCE'),
	('World', 'GLO'),
	('High-income countries', 'HighIn'),
	('Low-income countries', 'LowIn'),
	('Lower-middle-income countries', 'LowMidIn'),
	('Upper-middle-income countries', 'UpMidIn');

-- 3. Update both tables with mappings from custom_country_codes.
UPDATE owid_energy AS e
SET custom_code = ccc.custom_code
FROM custom_country_codes AS ccc
WHERE e.country = ccc.country;

UPDATE owid_co2 AS c
SET custom_code = ccc.custom_code
FROM custom_country_codes AS ccc
WHERE c.country = ccc.country;

-- Check which additional non-countries from owid_energy are missing an iso_code but could be relevant for analysis.
SELECT country
FROM owid_energy
WHERE iso_code IS NULL AND custom_code IS NULL
GROUP BY country;

-- Check which additional non-countries from owid_co2 are missing an iso_code but could be relevant for analysis.
SELECT country
FROM owid_co2
WHERE iso_code IS NULL AND custom_code IS NULL
GROUP BY country;

-- Update owid_co2 with country/custom_code mappings.
UPDATE owid_co2
SET custom_code = 'IntAvia'
WHERE country = 'International aviation';

UPDATE owid_co2
SET custom_code = 'IntTrans'
WHERE country = 'International transport';

UPDATE owid_co2
SET custom_code = 'IntShip'
WHERE country = 'International shipping';

-- Check output of owid_energy table.
SELECT * 
FROM owid_energy
LIMIT 20;

-- Check number of rows in owid_energy table (= 21812).
SELECT COUNT(*) AS row_count
FROM owid_energy;

-- Check number of columns in owid_energy table (= 130).
SELECT COUNT(*) AS column_count
FROM information_schema.columns
WHERE table_name = 'owid_energy';

-- Check sample output of owid_co2 table.
SELECT * 
FROM owid_co2
LIMIT 20;

-- Check number of rows in owid_co2 table (= 47415).
SELECT COUNT(*) AS row_count
FROM owid_co2;

-- Check number of columns in owid_co2 table (= 80).
SELECT COUNT(*) AS column_count
FROM information_schema.columns
WHERE table_name = 'owid_co2';

/* 
SUBSET DATASETS
- Create subset tables and archive full datasets:
	Keep only countries with iso_code or custom_code and years between 1980 and 2022.
*/
-- Create an archive for the full owid_energy dataset.
CREATE TABLE owid_energy_archive AS TABLE owid_energy WITH NO DATA;

-- Store all data in the archive table.
INSERT INTO owid_energy_archive
SELECT *
FROM owid_energy;

-- Delete redundant records from original owid_energy table.
DELETE FROM owid_energy
WHERE (iso_code IS NULL AND custom_code IS NULL)
	OR year < 1980 OR year > 2022;

-- Check sample output of owid_energy table.
SELECT * 
FROM owid_energy
LIMIT 20;

-- Check number of rows in owid_energy table (= 9659).
SELECT COUNT(*) AS row_count
FROM owid_energy;

-- Check number of columns in owid_energy table (= 130).
SELECT COUNT(*) AS column_count
FROM information_schema.columns
WHERE table_name = 'owid_energy';

-- Create an archive for the full owid_co2 dataset.
CREATE TABLE owid_co2_archive AS TABLE owid_co2 WITH NO DATA;

-- Store all data in the archive table.
INSERT INTO owid_co2_archive
SELECT *
FROM owid_co2;

-- Delete redundant records from original owid_energy table.
DELETE FROM owid_co2
WHERE (iso_code IS NULL AND custom_code IS NULL)
	OR year < 1980 or year > 2022;

-- Check sample output of owid_co2 table.
SELECT * 
FROM owid_co2
LIMIT 20;

-- Check number of rows in owid_co2 table (= 9966).
SELECT COUNT(*) AS row_count
FROM owid_co2;

-- Check number of columns in owid_co2 table (= 80).
SELECT COUNT(*) AS column_count
FROM information_schema.columns
WHERE table_name = 'owid_co2';

/*
NULL VALUES
- All missing population values stem from 'Antarctica', 'Netherlands Antilles', 'Vatican' and 'Christmas Islands' so imputation with existing data is not possible.
- Missing values in iso_code are fine as records do have a custom_code instead.
- Missing values in any other energy related column are expected and should not automatically be set to 0 as this could introduce bias or incorrect assumptions in the analysis. 
*/

-- OWID_ENERGY
-- Create a temporary table to store the column names and null value counts.
CREATE TEMP TABLE temp_null_counts_energy (
    column_name varchar,
    null_count integer
);

-- Begin an anonymous PL/pgSQL block to execute dynamic SQL.
DO $$
DECLARE
    rec RECORD;         -- Declare a record to hold each column information.
    col_name varchar;   -- Declare a variable to hold the current column name.
    null_count integer; -- Declare a variable to hold the count of null values.
BEGIN
    -- Loop through each column of the specified table.
    FOR rec IN
        SELECT column_name
        FROM information_schema.columns
        WHERE table_name = 'owid_energy'
    LOOP
        col_name := rec.column_name; -- Assign the current column name to the variable.

        -- Execute a dynamic SQL query to count null values in the current column.
        EXECUTE format('SELECT COUNT(*) FROM owid_energy WHERE %I IS NULL', col_name)
        INTO null_count; -- Store the result in the null_count variable.

        -- Insert the column name and null count into the temporary table.
        INSERT INTO temp_null_counts_energy (column_name, null_count)
        VALUES (col_name, null_count);
    END LOOP; -- End of the loop.
END $$; -- End of the PL/pgSQL block.

-- Query the temporary table to retrieve the counts of null values for each column.
SELECT * FROM temp_null_counts_energy
ORDER BY null_count;


-- VIEW_OWID_CO2
-- Create a temporary table to store the column names and null value counts.
CREATE TEMP TABLE temp_null_counts_co2 (
    column_name varchar,
    null_count integer
);

-- Begin an anonymous PL/pgSQL block to execute dynamic SQL.
DO $$
DECLARE
    rec RECORD;         -- Declare a record to hold each column information.
    col_name varchar;   -- Declare a variable to hold the current column name.
    null_count integer; -- Declare a variable to hold the count of null values.
BEGIN
    -- Loop through each column of the specified table.
    FOR rec IN
        SELECT column_name
        FROM information_schema.columns
        WHERE table_name = 'owid_co2'
    LOOP
        col_name := rec.column_name; -- Assign the current column name to the variable.

        -- Execute a dynamic SQL query to count null values in the current column.
        EXECUTE format('SELECT COUNT(*) FROM owid_co2 WHERE %I IS NULL', col_name)
        INTO null_count; -- Store the result in the null_count variable.

        -- Insert the column name and null count into the temporary table.
        INSERT INTO temp_null_counts_co2 (column_name, null_count)
        VALUES (col_name, null_count);
    END LOOP; -- End of the loop.
END $$; -- End of the PL/pgSQL block.

-- Query the temporary table to retrieve the counts of null values for each column.
SELECT * FROM temp_null_counts_co2
ORDER BY null_count;

/* 
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
KEY QUESTIONS
<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< 
*/

-- 1. What are the total, per capita, and average renewable energy consumption trends for each country over the years?

SELECT 
    country, 
    iso_code,
	custom_code,
    year,
    renewables_energy_per_capita AS total_per_capita_renewables_consumption_kwh, -- Total renewable energy consumption per capita.
    -- Moving average renewable energy consumption per capita (all previous years).
	AVG(renewables_energy_per_capita) 
		OVER (PARTITION BY country ORDER BY year ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS avg_per_capita_renewables_consumption_kwh, 
	renewables_consumption AS total_renewables_consumption_twh, -- Total renewable energy consumption.
    -- Moving average renewable energy consumption (all previous years).
	AVG(renewables_consumption) 
		OVER (PARTITION BY country ORDER BY year ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS avg_renewables_consumption_twh, 
    renewables_electricity AS total_renewables_generation_twh, -- Total renewable energy generation.
    -- Moving average renewable energy generation (all previous years).
	AVG(renewables_electricity) 
		OVER (PARTITION BY country ORDER BY year ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS avg_renewables_generation_twh 
FROM owid_energy
ORDER BY country, year;

-- 2. How do different countries compare in terms of renewable energy adoption rates?

/*
Key Metrics for Adoption Rates
1. Annual Growth Rate of Renewable Energy Consumption:
- Measures the year-over-year percentage increase in renewable energy consumption.
- Given in renewables_cons_change_pct which is defined as "Annual percentage change in renewables consumption".
Formula: (Current Year Consumption − Previous Year Consumption) / Previous Year Consumption ∗ 100

2. Annual Growth Rate of Renewable Energy Capacity:
- Measures the year-over-year percentage increase in renewable energy capacity.
- renewables_elec_change_pct defined here as "Annual percentage change in renewables capacity".
Formula: (Current Year Capacity − Previous Year Capacity) / Previous Year Capacity ∗ 100

3. Renewable Energy Share in Total Energy Consumption:
- Measures the proportion of total energy consumption that comes from renewable sources.
- Given in renewables_share_energy which is defined as "Share of primary energy consumption that comes from renewables".
Formula: Renewable Energy Consumption / Total Energy Consumption ∗ 100
*/

-- Create a new column to store the annual growth rate of renewable energy capacity (aka electricity).
ALTER TABLE owid_energy ADD COLUMN renewables_elec_change_pct numeric;

-- Use a CTE renewables_growth to calculate the previous year's renewables_electricity for each country using the LAG window function.
WITH renewables_growth AS (
    SELECT 
        country, 
        year,
        renewables_electricity,
        LAG(renewables_electricity) OVER (PARTITION BY country ORDER BY year) AS prev_renewables_electricity
    FROM owid_energy
)
UPDATE owid_energy AS e
SET renewables_elec_change_pct = rg.change_pct
FROM (
    SELECT 
        country,
        year,
		-- Handles cases where the previous year's value is NULL or zero, avoiding division by zero or undefined changes.
        CASE
            WHEN prev_renewables_electricity IS NULL THEN NULL
            WHEN prev_renewables_electricity = 0 THEN NULL
            ELSE ((renewables_electricity - prev_renewables_electricity) / prev_renewables_electricity) * 100
        END AS change_pct
    FROM renewables_growth
) AS rg
WHERE e.country = rg.country AND e.year = rg.year;

-- Check the output of the new column renewables_elec_change_pct and adoption_rates in general
CREATE OR REPLACE VIEW adoption_rates AS
SELECT 
	country, 
	iso_code,
	custom_code,
	year, 
	renewables_electricity, -- Electricity generation from renewables.
	renewables_elec_change_pct, -- Annual percentage change in renewables capacity (self-defined).
	renewables_consumption, -- Primary energy consumption from renewables.
	renewables_cons_change_pct, -- Annual percentage change in renewables consumption.
	renewables_share_elec, -- Share of electricity generated by renewables
	renewables_share_energy -- Share of primary energy consumption that comes from renewables.
FROM owid_energy
ORDER BY country, year;

SELECT * 
FROM adoption_rates;

-- Calculate cumulative changes for renewable electricity generation
SELECT
    country,
    year,
	renewables_electricity,
    SUM(renewables_electricity) OVER (PARTITION BY country ORDER BY year) AS cumulative_renewables_electricity,
	renewables_elec_change_pct,
	SUM(renewables_elec_change_pct) OVER (PARTITION BY country ORDER BY year) AS cumulative_renewables_elec_change_pct
FROM adoption_rates
ORDER BY country, year;

-- Calculate cumulative changes for renewable energy consumption
SELECT
    country,
    year,
	renewables_consumption,
    SUM(renewables_consumption) OVER (PARTITION BY country ORDER BY year) AS cumulative_renewables_consumption,
	renewables_cons_change_pct,
	SUM(renewables_cons_change_pct) OVER (PARTITION BY country ORDER BY year) AS cumulative_renewables_cons_change_pct
FROM adoption_rates
ORDER BY country, year;

-- 3. What is the correlation between renewable energy adoption and CO2 emissions reduction?

/*
1. Extract Relevant Data:
- From the owid_energy table: extract renewable energy consumption and generation data.
- From the owid_co2 table: extract CO2 emissions data.
2. Calculate Yearly Changes:
- Compute annual changes or growth rates for renewable energy adoption metrics (like renewable electricity generation and consumption).
- Compute annual changes in CO2 emissions.
3. Merge Data:
- Combine data from both tables based on country and year.
4. Statistical Analysis:
- Use statistical functions to compute the correlation between renewable energy adoption and CO2 emissions reduction.
*/

-- Create a new column to store the annual change rate of greenhouse gas emissions.
ALTER TABLE owid_co2 ADD COLUMN ghg_change_prct numeric;

-- Use a CTE ghg_reduction to calculate the previous year's total_ghg for each country using the LAG window function.
WITH emission_change AS (
	SELECT
		country,
		year, 
		total_ghg, -- Total greenhouse gas emissions including land-use change and forestry.
		LAG(total_ghg) OVER (PARTITION BY country ORDER BY year) AS prev_ghg_emission
	FROM owid_co2
)
UPDATE owid_co2 AS c
SET ghg_change_prct = ec.ghg_change
FROM (
	SELECT
		country,
		year,
		-- Handles cases where the previous year's value is NULL or zero, avoiding division by zero or undefined changes.
		CASE
            WHEN prev_ghg_emission IS NULL THEN NULL
            WHEN prev_ghg_emission = 0 THEN NULL
            ELSE ((total_ghg - prev_ghg_emission) / prev_ghg_emission) * 100
        END AS ghg_change
	FROM emission_change
) AS ec
WHERE c.country = ec.country AND c.year = ec.year;

-- Check the output of the new column ghg_change_pct
SELECT
	country,
	year,
	total_ghg, -- Total greenhouse gas emissions including land-use change and forestry.
	ghg_change_prct, -- Annual percentage change in greenhouse gas emissions including land-use change and forestry self-defined).
	co2, -- Annual CO2 emissions.
	co2_growth_prct -- Annual CO2 emissions growth.
FROM owid_co2
GROUP BY country, year, total_ghg, ghg_change_prct, co2, co2_growth_prct
ORDER BY country, year;

-- Merge renewable energy and ghg emissions data
CREATE TEMP TABLE corr_renewables_emissions AS
SELECT 
	e.country,
	e.year,
	e.renewables_cons_change_pct, -- Annual percentage change in renewables consumption.
	e.renewables_elec_change_pct, -- Annual percentage change in renewables capacity (self-defined).
	c.ghg_change_prct, -- Annual percentage change in greenhouse gas emissions including land-use change and forestry (self-defined).
	c.co2_growth_prct -- Annual CO2 emissions growth.
FROM owid_energy AS e
JOIN owid_co2 AS c
	ON e.country = c.country AND e.year = c.year;

-- Calculate the correlation
SELECT
	corr(renewables_cons_change_pct, ghg_change_prct) AS consumption_ghg_corr,
	corr(renewables_elec_change_pct, ghg_change_prct) AS electricity_ghg_corr,
	corr(renewables_cons_change_pct, co2_growth_prct) AS consumption_co2_corr,
	corr(renewables_elec_change_pct, co2_growth_prct) AS electricity_co2_corr
FROM corr_renewables_emissions;
	
/*
RESULTS
- Weak correlations: The negative values suggest a slight inverse relationship where an increase in renewable energy adoption might be associated with a small decrease in emissions, but the weak magnitude of these correlations implies that this relationship is not strong.
- Complex factors: The weak correlations highlight that other factors besides renewable energy adoption might significantly influence GHG and CO2 emissions. This could include economic activities, industrial processes, and energy efficiency measures.
FURTHER ANALYSIS 
- Conduct more detailed statistical analyses, such as multiple regression, to account for other variables that might affect emissions.
- Investigate if there are time lags in the impact of renewable energy adoption on emissions reduction, which might not be captured in the current analysis.
- Different sectors (e.g., transport, industry) might have different dynamics. Analyzing the data on a sectoral basis could provide more insights.
*/

-- Analyze the lagged impact of renewable energy adoption on CO2 emissions
WITH lagged_impact AS (
    SELECT
        e.country,
        e.year,
        e.renewables_cons_change_pct,
        c.co2 AS current_co2,
        LAG(c.co2) OVER (PARTITION BY c.country ORDER BY c.year) AS previous_co2
    FROM owid_energy e
    JOIN owid_co2 c ON e.country = c.country AND e.year = c.year
)
SELECT
    country,
    year,
    renewables_cons_change_pct,
    current_co2,
    previous_co2,
    CASE
		WHEN previous_co2 IS NULL THEN NULL
		WHEN previous_co2 = 0 THEN NULL
	ELSE (current_co2 - previous_co2) / previous_co2 * 100 
	END AS co2_reduction_pct
FROM lagged_impact
ORDER BY country, year;


-- 4. How has the share of renewable energy in total electricity generation changed over the years?

SELECT
    country,
    year,
	electricity_generation, -- Total electricity generation - Measured in terawatt-hours.
	renewables_electricity, -- Electricity generation from renewables - Measured in terawatt-hours.
	renewables_share_elec -- Share of electricity generated by renewables - Measured as a percentage of total electricity.
FROM owid_energy
ORDER BY country, year;

-- 5. Are there significant differences in renewable energy adoption rates between European countries and the global average?

SELECT
	e.year,
	AVG(w.renewables_elec_change_pct) AS avg_renewables_elec_change_global, -- Annual percentage change in renewables capacity (self-defined).
	e.renewables_elec_change_pct AS renewables_elec_change_europe,
	e.renewables_elec_change_pct - AVG(w.renewables_elec_change_pct) AS diff_renewables_elec_change_europe_vs_avg_world,
	AVG(w.renewables_cons_change_pct) AS avg_renewables_cons_change_global, -- Annual percentage change in renewables consumption.
	e.renewables_cons_change_pct AS renewables_cons_change_europe, 
	e.renewables_cons_change_pct - AVG(w.renewables_cons_change_pct) AS diff_renewables_cons_change_europe_vs_avg_world,
	AVG(w.renewables_share_elec) AS avg_renewables_share_elec_global, -- Share of electricity generated by renewables.
	e.renewables_share_elec AS renewables_share_elec_europe,
	e.renewables_share_elec - AVG(w.renewables_cons_change_pct) AS diff_renewables_share_elec_europe_vs_avg_world,
	AVG(w.renewables_share_energy) AS avg_renewables_share_energy_global, -- Share of primary energy consumption that comes from renewables.
	e.renewables_share_energy AS renewables_share_energy_europe,
	e.renewables_share_energy - AVG(w.renewables_cons_change_pct) AS diff_renewables_share_energy_europe_vs_avg_world
FROM adoption_rates AS e
JOIN adoption_rates AS w ON e.year = w.year
WHERE e.custom_code = 'EUR'
GROUP BY e.year, renewables_elec_change_europe, renewables_cons_change_europe, renewables_share_elec_europe, renewables_share_energy_europe
ORDER BY year;

SELECT
	e.year,
	AVG(w.renewables_elec_change_pct) AS avg_renewables_elec_change_global, -- Annual percentage change in renewables capacity (self-defined).
	e.renewables_elec_change_pct AS renewables_elec_change_africa,
	e.renewables_elec_change_pct - AVG(w.renewables_elec_change_pct) AS diff_renewables_elec_change_europe_vs_avg_world,
	AVG(w.renewables_cons_change_pct) AS avg_renewables_cons_change_global, -- Annual percentage change in renewables consumption.
	e.renewables_cons_change_pct AS renewables_cons_change_africa,
	e.renewables_cons_change_pct - AVG(w.renewables_cons_change_pct) AS diff_renewables_cons_change_europe_vs_avg_world,
	AVG(w.renewables_share_elec) AS avg_renewables_share_elec_global, -- Share of electricity generated by renewables.
	e.renewables_share_elec AS renewables_share_elec_africa,
	e.renewables_share_elec - AVG(w.renewables_cons_change_pct) AS diff_renewables_share_elec_europe_vs_avg_world,
	AVG(w.renewables_share_energy) AS avg_renewables_share_energy_global, -- Share of primary energy consumption that comes from renewables.
	e.renewables_share_energy AS renewables_share_energy_africa,
	e.renewables_share_energy - AVG(w.renewables_cons_change_pct) AS diff_renewables_share_energy_europe_vs_avg_world
FROM adoption_rates AS e
JOIN adoption_rates AS w ON e.year = w.year
WHERE e.custom_code = 'AFR'
GROUP BY e.year, renewables_elec_change_africa, renewables_cons_change_africa, renewables_share_elec_africa, renewables_share_energy_africa
ORDER BY year;

-- 6. What is the impact of economic growth on the adoption of renewable energy sources?

WITH gdp_change AS (
SELECT
	country,
	year,
	gdp,
	LAG(gdp) OVER (PARTITION BY country ORDER BY year) AS previous_gdp
FROM owid_energy
ORDER BY country, year
)
SELECT
	gc.country,
	gc.year,
	gc.gdp,
	CASE
		WHEN previous_gdp IS NULL THEN NULL
		WHEN previous_gdp = 0 THEN NULL
		ELSE ((gdp - previous_gdp) / previous_gdp) * 100
	END AS gdp_change_pct,
	ar.renewables_elec_change_pct,
	ar.renewables_cons_change_pct,
	ar.renewables_share_elec,
	ar.renewables_share_energy
FROM gdp_change AS gc
JOIN adoption_rates AS ar 
	ON gc.country = ar.country AND gc.year = ar.year

-- 7. How do GDP and population growth affect renewable energy consumption and carbon emissions?

SELECT 
	e.country, 
	e.year, 
	e.gdp, 
	e.population, 
	e.renewables_consumption,
	c.co2
FROM owid_energy AS e
JOIN owid_co2 AS c 
	ON e.country = c.country AND e.year = c.year
WHERE e.population IS NOT NULL AND e.population IS NOT NULL;

-- 8. What are the trends in specific types of renewable energy (e.g., solar, wind) over time?
SELECT
	year,
	SUM(hydro_consumption) AS sum_hydro_consumption,
	AVG(hydro_consumption) AS avg_hydro_consumption,
	SUM(hydro_electricity) AS sum_hydro_generation,
	AVG(hydro_electricity) AS avg_hydro_generation,
	SUM(biofuel_consumption) AS sum_bio_consumption,
	AVG(biofuel_consumption) AS avg_bio_consumption,
	SUM(biofuel_electricity) AS sum_bio_generation,
	AVG(biofuel_electricity) AS avg_bio_generation,
	SUM(solar_consumption) AS sum_solar_consumption,
	AVG(solar_consumption) AS avg_solar_consumption,
	SUM(solar_electricity) AS sum_solar_generation,
	AVG(solar_electricity) AS avg_solar_generation,
	SUM(wind_consumption) AS sum_wind_consumption,
	AVG(wind_consumption) AS avg_wind_consumption,
	SUM(wind_electricity) AS sum_wind_generation,
	AVG(wind_electricity) AS avg_wind_generation,
	SUM(other_renewable_consumption) AS sum_other_consumption,
	AVG(other_renewable_consumption) AS avg_other_consumption,
	SUM(other_renewable_electricity) AS sum_other_generation,
	AVG(other_renewable_electricity) AS avg_other_generation
FROM owid_energy
WHERE iso_code IS NOT NULL
GROUP BY year
ORDER BY year;

-- 9. How do the top renewable energy adopters compare in terms of carbon emissions reduction?

/*
SELECT 
	country,
	AVG(renewables_cons_change_pct) AS avg_cons_change
FROM corr_renewables_emissions
GROUP BY country
HAVING AVG(renewables_cons_change_pct) IS NOT NULL
ORDER BY AVG(renewables_cons_change_pct) DESC

SELECT 
	country,
	AVG(renewables_elec_change_pct) AS avg_gen_change
FROM corr_renewables_emissions
GROUP BY country
HAVING AVG(renewables_elec_change_pct) IS NOT NULL
ORDER BY AVG(renewables_elec_change_pct) DESC
*/

WITH top_adopters AS (
SELECT
	country,
	renewables_share_energy
FROM owid_energy
WHERE year = 2022 AND renewables_share_energy IS NOT NULL
ORDER BY renewables_share_energy DESC
LIMIT 10
)
SELECT 
    c.country, 
    c.year, 
    c.co2, 
    CASE
		WHEN c.co2 IS NULL THEN NULL
		WHEN c.co2 = 0 THEN NULL
	ELSE (c.co2 - LAG(c.co2) OVER (PARTITION BY c.country ORDER BY c.year)) / 
		LAG(c.co2) OVER (PARTITION BY c.country ORDER BY c.year) * 100 
	END AS co2_reduction_pct
FROM owid_co2 AS c
JOIN top_adopters AS t ON c.country = t.country
ORDER BY c.country, c.year;

