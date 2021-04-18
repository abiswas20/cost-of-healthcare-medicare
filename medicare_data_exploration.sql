-- QUERIES WERE RUN IN BigQuery

-- RUN THE QUERIES BELOW FOR EACH YEAR

-- 2011
-- FIRST, WE GROUP CHARGES BY drg_definition. THIS ENSURES WE COMPARES APPLES TO APPLES
SELECT drg_definition, AVG(SAFE_DIVIDE(average_medicare_payments,average_total_payments)) AS COVERED_COSTS FROM `bigquery-public-data`.medicare.inpatient_charges_2011 
GROUP BY drg_definition 
ORDER BY COVERED_COSTS;


-- NEXT WE LOOK AT '310 - CARDIAC ARRHYTHMIA & CONDUCTION DISORDERS W/O CC/MCC' CASES BECAUSE THEIR AVERAGE COVERAGE IS THE LOWEST
CREATE OR REPLACE TABLE `medicare_costs`.310_cardiac_2011 AS
SELECT provider_zipcode, provider_state AS STATE, COUNT(provider_zipcode) AS NUMBER_OF_CHARGES, AVG(average_medicare_payments) AS AVERAGE_PAYMENTS_MEDICARE, AVG(average_total_payments) AS AVERAGE_PAYMENTS_TOTAL, AVG(SAFE_DIVIDE(average_medicare_payments,average_total_payments)) AS COVERED_COSTS FROM `bigquery-public-data`.medicare.inpatient_charges_2011 
WHERE drg_definition="310 - CARDIAC ARRHYTHMIA & CONDUCTION DISORDERS W/O CC/MCC" 
GROUP BY provider_zipcode, provider_state 
ORDER BY COVERED_COSTS ASC;

-- LOOK AT THE DISTRIBUTION OF NUMBER_OF_CHARGES COLUMN
SELECT AVG(NUMBER_OF_CHARGES), MIN(NUMBER_OF_CHARGES), MAX(NUMBER_OF_CHARGES) 
FROM `medicare_costs`.310_cardiac_2011;


-- AVERAGE MEDICARE PAYMENT IN DIFFERENT ZIPCODES IN CALIFORNIA, FLORIDA, TEXAS AND NEW YORK FOR '310 - CARDIAC ARRHYTHMIA & CONDUCTION DISORDERS W/O CC/MCC':
CREATE OR REPLACE TABLE `medicare_costs`.310_cardiac_2011_CA_FL_NY_TX AS
SELECT provider_zipcode, NUMBER_OF_CHARGES, STATE, AVERAGE_PAYMENTS_MEDICARE, AVERAGE_PAYMENTS_TOTAL, COVERED_COSTS 
FROM `medicare_costs`.310_cardiac_2011 
WHERE (STATE='NY' OR STATE='TX' OR STATE='FL' OR STATE='CA');


-- 2012
-- FIRST, WE GROUP CHARGES BY drg_definition. THIS ENSURES WE COMPARES APPLES TO APPLES
SELECT drg_definition, AVG(SAFE_DIVIDE(average_medicare_payments,average_total_payments)) AS COVERED_COSTS FROM `bigquery-public-data`.medicare.inpatient_charges_2012 
GROUP BY drg_definition 
ORDER BY COVERED_COSTS;


-- NEXT WE LOOK AT '310 - CARDIAC ARRHYTHMIA & CONDUCTION DISORDERS W/O CC/MCC' CASES BECAUSE THEIR AVERAGE COVERAGE IS THE LOWEST
CREATE OR REPLACE TABLE `medicare_costs`.310_cardiac_2012 AS
SELECT provider_zipcode, provider_state AS STATE, COUNT(provider_zipcode) AS NUMBER_OF_CHARGES, AVG(average_medicare_payments) AS AVERAGE_PAYMENTS_MEDICARE, AVG(average_total_payments) AS AVERAGE_PAYMENTS_TOTAL, AVG(SAFE_DIVIDE(average_medicare_payments,average_total_payments)) AS COVERED_COSTS FROM `bigquery-public-data`.medicare.inpatient_charges_2012 
WHERE drg_definition="310 - CARDIAC ARRHYTHMIA & CONDUCTION DISORDERS W/O CC/MCC" 
GROUP BY provider_zipcode, provider_state 
ORDER BY COVERED_COSTS ASC;

-- LOOK AT THE DISTRIBUTION OF NUMBER_OF_CHARGES COLUMN
SELECT AVG(NUMBER_OF_CHARGES), MIN(NUMBER_OF_CHARGES), MAX(NUMBER_OF_CHARGES) 
FROM `medicare_costs`.310_cardiac_2012;


-- AVERAGE MEDICARE PAYMENT IN DIFFERENT ZIPCODES IN CALIFORNIA, FLORIDA, TEXAS AND NEW YORK FOR '310 - CARDIAC ARRHYTHMIA & CONDUCTION DISORDERS W/O CC/MCC':
CREATE OR REPLACE TABLE `medicare_costs`.310_cardiac_2012_CA_FL_NY_TX AS
SELECT provider_zipcode, NUMBER_OF_CHARGES, STATE, AVERAGE_PAYMENTS_MEDICARE, AVERAGE_PAYMENTS_TOTAL, COVERED_COSTS 
FROM `medicare_costs`.310_cardiac_2012 
WHERE (STATE='NY' OR STATE='TX' OR STATE='FL' OR STATE='CA');


-- 2013
-- FIRST, WE GROUP CHARGES BY drg_definition. THIS ENSURES WE COMPARES APPLES TO APPLES
SELECT drg_definition, AVG(SAFE_DIVIDE(average_medicare_payments,average_total_payments)) AS COVERED_COSTS FROM `bigquery-public-data`.medicare.inpatient_charges_2013 
GROUP BY drg_definition 
ORDER BY COVERED_COSTS;


-- NEXT WE LOOK AT '310 - CARDIAC ARRHYTHMIA & CONDUCTION DISORDERS W/O CC/MCC' CASES BECAUSE THEIR AVERAGE COVERAGE IS THE LOWEST
CREATE OR REPLACE TABLE `medicare_costs`.310_cardiac_2013 AS
SELECT provider_zipcode, provider_state AS STATE, COUNT(provider_zipcode) AS NUMBER_OF_CHARGES, AVG(average_medicare_payments) AS AVERAGE_PAYMENTS_MEDICARE, AVG(average_total_payments) AS AVERAGE_PAYMENTS_TOTAL, AVG(SAFE_DIVIDE(average_medicare_payments,average_total_payments)) AS COVERED_COSTS FROM `bigquery-public-data`.medicare.inpatient_charges_2013 
WHERE drg_definition="310 - CARDIAC ARRHYTHMIA & CONDUCTION DISORDERS W/O CC/MCC" 
GROUP BY provider_zipcode, provider_state 
ORDER BY COVERED_COSTS ASC;

-- LOOK AT THE DISTRIBUTION OF NUMBER_OF_CHARGES COLUMN
SELECT AVG(NUMBER_OF_CHARGES), MIN(NUMBER_OF_CHARGES), MAX(NUMBER_OF_CHARGES) 
FROM `medicare_costs`.310_cardiac_2013;


-- AVERAGE MEDICARE PAYMENT IN DIFFERENT ZIPCODES IN CALIFORNIA, FLORIDA, TEXAS AND NEW YORK FOR '310 - CARDIAC ARRHYTHMIA & CONDUCTION DISORDERS W/O CC/MCC':
CREATE OR REPLACE TABLE `medicare_costs`.310_cardiac_2013_CA_FL_NY_TX AS
SELECT provider_zipcode, NUMBER_OF_CHARGES, STATE, AVERAGE_PAYMENTS_MEDICARE, AVERAGE_PAYMENTS_TOTAL, COVERED_COSTS 
FROM `medicare_costs`.310_cardiac_2013 
WHERE (STATE='NY' OR STATE='TX' OR STATE='FL' OR STATE='CA');


-- 2014
-- FIRST, WE GROUP CHARGES BY drg_definition. THIS ENSURES WE COMPARES APPLES TO APPLES
SELECT drg_definition, AVG(SAFE_DIVIDE(average_medicare_payments,average_total_payments)) AS COVERED_COSTS FROM `bigquery-public-data`.medicare.inpatient_charges_2014 
GROUP BY drg_definition 
ORDER BY COVERED_COSTS;


-- NEXT WE LOOK AT '310 - CARDIAC ARRHYTHMIA & CONDUCTION DISORDERS W/O CC/MCC' CASES BECAUSE THEIR AVERAGE COVERAGE IS THE LOWEST
CREATE OR REPLACE TABLE `medicare_costs`.310_cardiac_2014 AS
SELECT provider_zipcode, provider_state AS STATE, COUNT(provider_zipcode) AS NUMBER_OF_CHARGES, AVG(average_medicare_payments) AS AVERAGE_PAYMENTS_MEDICARE, AVG(average_total_payments) AS AVERAGE_PAYMENTS_TOTAL, AVG(SAFE_DIVIDE(average_medicare_payments,average_total_payments)) AS COVERED_COSTS FROM `bigquery-public-data`.medicare.inpatient_charges_2014 
WHERE drg_definition="310 - CARDIAC ARRHYTHMIA & CONDUCTION DISORDERS W/O CC/MCC" 
GROUP BY provider_zipcode, provider_state 
ORDER BY COVERED_COSTS ASC;

-- LOOK AT THE DISTRIBUTION OF NUMBER_OF_CHARGES COLUMN
SELECT AVG(NUMBER_OF_CHARGES), MIN(NUMBER_OF_CHARGES), MAX(NUMBER_OF_CHARGES) 
FROM `medicare_costs`.310_cardiac_2014;


-- AVERAGE MEDICARE PAYMENT IN DIFFERENT ZIPCODES IN CALIFORNIA, FLORIDA, TEXAS AND NEW YORK FOR '310 - CARDIAC ARRHYTHMIA & CONDUCTION DISORDERS W/O CC/MCC':
CREATE OR REPLACE TABLE `medicare_costs`.310_cardiac_2014_CA_FL_NY_TX AS
SELECT provider_zipcode, NUMBER_OF_CHARGES, STATE, AVERAGE_PAYMENTS_MEDICARE, AVERAGE_PAYMENTS_TOTAL, COVERED_COSTS 
FROM `medicare_costs`.310_cardiac_2014 
WHERE (STATE='NY' OR STATE='TX' OR STATE='FL' OR STATE='CA');
 
