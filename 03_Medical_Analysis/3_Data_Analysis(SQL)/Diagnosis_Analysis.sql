-- =======================================================================================
--                 				   MEDICAL ANALYSIS
-- =======================================================================================


-- ******************************************
-- 			DIAGNOSIS ANALYSIS	
-- ******************************************

-- Most common diagnosis category
-- Most common diagnosis category
-- Diagnosis vs readmission
-- Diagnosis vs hospital stay
-- Diagnosis vs medications

-- Most common diagnosis category
	SELECT diag_1_category,
    count(*) as total
    FROM diabaties
    GROUP BY diag_1_category
    ORDER BY total DESC;

-- Diagnosis vs readmission
	SELECT diag_1_category as diagnosis,
    readmitted, COUNT(*) as toal_patients
    FROM diabaties
    GROUP BY diag_1_category, readmitted;

-- Diagnosis vs Average Hospital Stay
	SELECT diag_1_category diag_category,
    round(avg(time_in_hospital),2)
    as avg_days
    FROM diabaties
    GROUP BY diag_1_category
    ORDER BY avg_days DESC;

-- Diagnosis vs medications
	SELECT diag_1_category as diag_category, round(avg(num_medications))
    as avg_medications
    FROM diabaties
    GROUP BY diag_1_category
    ORDER BY avg_medications DESC;
    