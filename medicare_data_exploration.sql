-- QUERIES WERE RUN IN BigQuery


-- FIRST GROUP CHARGES BY drg_definition. THIS ENSURES WE COMPARES APPLES TO APPLES
SELECT drg_definition, AVG(SAFE_DIVIDE(average_medicare_payments,average_total_payments)) AS COVERED_COSTS FROM `bigquery-public-data`.medicare.inpatient_charges_2011 GROUP BY drg_definition ORDER BY COVERED_COSTS;


-- NEXT WE LOOK AT '310 - CARDIAC ARRHYTHMIA & CONDUCTION DISORDERS W/O CC/MCC' CASES BECAUSE THEIR AVERAGE COVERAGE IS THE LOWEST
SELECT provider_zipcode, provider_state AS STATE, COUNT(provider_zipcode) AS NUMBER_OF_CHARGES, AVG(SAFE_DIVIDE(average_medicare_payments,average_total_payments)) AS COVERED_COSTS FROM `bigquery-public-data`.medicare.inpatient_charges_2011 WHERE drg_definition="310 - CARDIAC ARRHYTHMIA & CONDUCTION DISORDERS W/O CC/MCC" GROUP BY provider_zipcode, provider_state ORDER BY COVERED_COSTS ASC;



