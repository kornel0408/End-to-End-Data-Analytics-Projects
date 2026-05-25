-- =======================================================================================
--                 				   MEDICAL ANALYSIS
-- =======================================================================================


-- ******************************************
-- 			READMISSION ANALYSIS	
-- ******************************************

-- total readmitted by patients
-- Expired patients by age group
-- Total readmitted patients by age group
-- Readmission Rate by Gender
-- Readmission count by admission type
-- Readmission by Diagnosis Category
-- Readmission by Medical Specialty

-- total readmitted by patients
	SELECT age, count(readmitted)
    as total_readmitted
	FROM diabaties
    WHERE readmitted <> "no"
	GROUP BY age
    ORDER BY age;
    
-- Readmission Rate %
	SELECT ROUND(
			SUM(
				CASE WHEN readmitted <> 'NO' THEN 1 ELSE 0 END ) 
		/ COUNT(*)  * 100.0  , 2) as Readmission_rate
	FROM diabaties; 
    
--  Expired patients by age group
	SELECT description, count(patient_id)
    as total_patients, age
    FROM diabaties d
    JOIN discharge ds
    ON d.discharge_disposition_id = ds.discharge_disposition_id
    GROUP BY description, age
    HAVING description LIKE "exp%"
    ORDER BY total_patients desc 
    ;

--  Total readmitted patients by age group
	SELECT age, count(readmitted)
    total_readmitted
    FROM diabaties
    WHERE readmitted <> "NO"
    GROUP BY age
    ORDER BY total_readmitted DESC ;

-- Readmission Rate by Gender
	SELECT gender, count(*)
    as total_readmitted
    FROM diabaties
    WHERE readmitted in ('<30', '>30')
    GROUP BY gender;

-- Readmission count by admission type
	SELECT description as 'admission_type', count(*)
    as total_readmitted
    FROM diabaties d
    JOIN admission a
		ON d.admission_type_id = a.admission_type_id
    WHERE readmitted IN ('<30','>30')
	GROUP BY description
    ORDER BY total_readmitted DESC;

-- Readmission by Diagnosis Category
	SELECT diag_1_category as diagnosis_category,
    count(*) as readmission_total
    FROM diabaties
    WHERE readmitted IN ('<30', '>30')
    GROUP BY diag_1_category
    ORDER BY readmission_total DESC;

-- Readmission by Medical Specialty
	SELECT medical_specialty,
    COUNT(*) as total_readmission
    FROM diabaties
    WHERE readmitted IN ('<30','>30')
    GROUP BY medical_specialty
    ORDER BY total_readmission DESC;

