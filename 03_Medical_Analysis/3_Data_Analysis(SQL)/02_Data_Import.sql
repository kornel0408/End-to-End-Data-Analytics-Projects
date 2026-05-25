-- =======================================================================================
--                 				   MEDICAL ANALYSIS
-- =======================================================================================


-- --------------------------------------------
-- 					DATA IMPORT
-- --------------------------------------------

-- data importing in discharge table

LOAD DATA INFILE "C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/cleaned_discharge_table.csv"
INTO TABLE discharge
FIELDS TERMINATED BY ","
ENCLOSED BY "'"
LINES TERMINATED BY "\n"
IGNORE 1 ROWS;

SELECT * FROM discharge;

-- data importing in admission table

LOAD DATA INFILE "C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/cleaned_admission_table.csv"
INTO TABLE admission
FIELDS TERMINATED BY ","
ENCLOSED BY "'"
LINES TERMINATED BY "\n"
IGNORE 1 ROWS;

SELECT * FROM admission;

-- data importing in admission_source table

LOAD DATA INFILE "C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/cleaned_admission_source_table.csv"
INTO TABLE admission_source
FIELDS TERMINATED BY ","
ENCLOSED BY "'"
LINES TERMINATED BY "\n"
IGNORE 1 ROWS;

SELECT * FROM admission_source;

--  data importing diabitites table

LOAD DATA INFILE "C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/cleaned_diabaties_table.csv"
INTO TABLE diabaties
FIELDS TERMINATED BY ","
ENCLOSED BY "'"
LINES TERMINATED BY "\n"
IGNORE 1 ROWS;