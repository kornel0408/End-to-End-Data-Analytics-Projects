-- =======================================================================================
--                 				   MEDICAL ANALYSIS
-- =======================================================================================

-- create database
	CREATE DATABASE hospital;
    USE hospital;
    
-- creating table

-- discharge table
	CREATE TABLE discharge (
    discharge_disposition_id INT PRIMARY KEY,
    description VARCHAR(100)
);

-- admission table
	CREATE TABLE admission (
    admission_type_id INT PRIMARY KEY,
    description VARCHAR(100)
);

-- admission source table
	CREATE TABLE admission_source (
    admission_source_id INT PRIMARY KEY,
    description VARCHAR(100)
);

-- diabaties table (Main Table)
	CREATE TABLE diabaties (
    
    patient_id INT AUTO_INCREMENT PRIMARY KEY,

    race VARCHAR(50),
    gender VARCHAR(20),
    age VARCHAR(20),

    admission_type_id INT,
    discharge_disposition_id INT,
    admission_source_id INT,

    time_in_hospital INT,

    payer_code VARCHAR(50),
    medical_specialty VARCHAR(100),

    num_lab_procedures INT,
    num_procedures INT,
    num_medications INT,

    number_outpatient INT,
    number_emergency INT,
    number_inpatient INT,

    diag_1 VARCHAR(20),
    diag_2 VARCHAR(20),
    diag_3 VARCHAR(20),

    number_diagnoses INT,

    metformin VARCHAR(20),
    repaglinide VARCHAR(20),
    nateglinide VARCHAR(20),
    chlorpropamide VARCHAR(20),
    glimepiride VARCHAR(20),
    glipizide VARCHAR(20),
    glyburide VARCHAR(20),
    pioglitazone VARCHAR(20),
    rosiglitazone VARCHAR(20),
    acarbose VARCHAR(20),
    miglitol VARCHAR(20),
    troglitazone VARCHAR(20),
    tolazamide VARCHAR(20),
    insulin VARCHAR(20),

    `glimepiride-pioglitazone` VARCHAR(20),
    `metformin-rosiglitazone` VARCHAR(20),
    `metformin-pioglitazone` VARCHAR(20),

    `change` VARCHAR(20),
    diabetesMed VARCHAR(20),
    readmitted VARCHAR(20),

    diag_1_category VARCHAR(50),
    diag_2_category VARCHAR(50),
    diag_3_category VARCHAR(50),

    CONSTRAINT fk_admission_type
        FOREIGN KEY (admission_type_id)
        REFERENCES admission(admission_type_id),

    CONSTRAINT fk_discharge
        FOREIGN KEY (discharge_disposition_id)
        REFERENCES discharge(discharge_disposition_id),

    CONSTRAINT fk_admission_source
        FOREIGN KEY (admission_source_id)
        REFERENCES admission_source(admission_source_id)

);
