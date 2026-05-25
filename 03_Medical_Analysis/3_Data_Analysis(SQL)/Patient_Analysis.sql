-- =======================================================================================
--                 				   MEDICAL ANALYSIS
-- =======================================================================================


-- ******************************************
-- 			PATIENT ANALYSIS	
-- ******************************************

-- Total number of patients
-- Gender-wise patient distribution
-- Age group distribution of patients
-- Average Medications by Age


-- Total number of patients
	SELECT count(*)
    as total_patients
    FROM diabaties;

-- Gender-wise patient distribution
	SELECT gender, COUNT(patient_id)
    as total_count
    FROM diabaties
    GROUP BY gender;

-- Age group distribution of patients
	SELECT age, COUNT(patient_id)
    as total_count
    FROM diabaties
    GROUP BY age
    ORDER BY age ;

--  Average Medications by Age
	SELECT age, round(avg(num_medications))
	as avg_medications
    FROM diabaties
    GROUP BY age
    ORDER BY age asc;
     

    