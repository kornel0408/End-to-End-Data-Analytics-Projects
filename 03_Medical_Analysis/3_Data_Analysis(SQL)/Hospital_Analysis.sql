-- =======================================================================================
--                 				   MEDICAL ANALYSIS
-- =======================================================================================


-- ******************************************
-- 			HOSPITAL ANALYSIS	
-- ******************************************

-- Patient count by admission type
-- average time in hospital by age 
-- Average hospital stay by age group
-- Average Lab Procedures by Admission Type
-- Patients staying more than 10 days


-- Patient count by admission type
	SELECT description, count(patient_id) as total_patients
    FROM diabaties d
    JOIN admission a
    ON d.admission_type_id = a.admission_type_id
    GROUP BY description;

-- average time in hospital by age 
	SELECT age, round(avg(time_in_hospital),2) as avg_days
    FROM diabaties
    GROUP BY age
    ORDER BY age;

-- Average hospital stay by age group
	SELECT `description`, round(avg(time_in_hospital))
    as avg_days
    FROM diabaties d
    JOIN admission a
    ON d.admission_type_id = a.admission_type_id
    GROUP BY description;

-- Average Lab Procedures by Admission Type
	SELECT a.description, sum(num_lab_procedures) as 
    total_lab_procedures
    FROM diabaties d
    JOIN admission a
	ON d.admission_type_id = a.admission_type_id
    GROUP BY description
    ORDER BY total_lab_procedures desc;
    
-- Patients staying more than 10 days
	SELECT count(*)
    as long_stay_patients
    FROM diabaties
    WHERE time_in_hospital > 10;