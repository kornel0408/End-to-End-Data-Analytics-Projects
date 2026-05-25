-- =======================================================================================
--                 				   MEDICAL ANALYSIS
-- =======================================================================================


-- ******************************************
-- 			MEDICATION ANALYSIS	
-- ******************************************

-- Patients receiving diabetes medication
-- Patients receiving Insulin Usage
-- Medication Change Impact on Readmission
-- Diabetes Medication vs Readmission

-- Patients receiving diabetes medication
	SELECT diabetesMed, count(*)
    as total_patients 
    FROM diabaties
    GROUP BY diabetesMed;

-- Patients receiving Insulin Usage
	SELECT insulin, count(*) as total_count
    FROM diabaties
    GROUP BY insulin;

-- Medication Change Impact on Readmission
	SELECT `change`, readmitted,
    count(*) as total_patients
    FROM
    diabaties 
    GROUP BY `change`, readmitted;

-- Diabetes Medication vs Readmission
	SELECT diabetesMed, readmitted,
    count(*) as 'total_patients'
    FROM diabaties
    GROUP BY diabetesMed, readmitted;