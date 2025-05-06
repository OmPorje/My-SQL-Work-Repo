-- Create HealthCare Database
CREATE DATABASE HealthCare_System;

-- Use It
USE HealthCare_System;

-- Table 1: Patients
CREATE TABLE Patients( 
Patient_ID INT PRIMARY KEY, 
Name VARCHAR(50), 
Age INT, 
Gender ENUM('Male', 'Female'), 
Contact VARCHAR(10) UNIQUE NOT NULL, 
Address VARCHAR(100) NOT NULL
);

INSERT INTO Patients (Patient_ID, Name, Age, Gender, Contact, Address) VALUES
(1, 'Aarav Mehta', 28, 'Male', '9876543210', '101 Marine Drive, Mumbai'),
(2, 'Sana Sheikh', 34, 'Female', '9123456780', '202 Carter Road, Bandra'),
(3, 'Rohan Desai', 41, 'Male', '9012345678', '303 Hill Road, Bandra'),
(4, 'Meera Patil', 22, 'Female', '9988776655', '404 Shivaji Park, Dadar'),
(5, 'Karan Verma', 30, 'Male', '8899001122', '505 Link Road, Andheri'),
(6, 'Neha Iyer', 27, 'Female', '7766554433', '606 Powai Lake, Powai'),
(7, 'Vikram Singh', 45, 'Male', '9663344556', '707 Juhu Beach, Juhu'),
(8, 'Priya Nair', 38, 'Female', '9090909090', '808 Palm Grove, Malad'),
(9, 'Arjun Kapoor', 50, 'Male', '9345678912', '909 Lokhandwala, Andheri'),
(10, 'Divya Shah', 29, 'Female', '9871234560', '1010 Borivali East, Mumbai');

SELECT * FROM Patients;
DROP TABLE Patients;
TRUNCATE TABLE Patients;

-- SQL_SAFE_UPDATES: to prevent accidental record deletions or modifications.
SET SQL_SAFE_UPDATES = 0;
SET SQL_SAFE_UPDATES = 1;

-- Rename Query
-- Rename the table 'Patients' to 'Hospital_Patients' 
RENAME TABLE Patients TO Hospital_Patients;

-- Rename the column 'Address' to 'Home_Address' 
ALTER TABLE Hospital_Patients RENAME COLUMN Address TO Home_Address;

-- Update Query
-- Update the contact number of the patient with Patient_ID = 3
UPDATE Hospital_Patients
SET Contact = '9998887777'
WHERE Patient_ID = 3;

-- Update the age of the patient with name 'Rahul Mehta' to 45
UPDATE Hospital_Patients
SET Age = 45
WHERE Name = 'Rahul Mehta';

-- Alter Query
-- Add a new column 'Blood_Group' to store patients' blood types
ALTER TABLE Hospital_Patients
ADD Blood_Group VARCHAR(5);

-- Modify the 'Name' column to allow up to 100 characters (was 50)
ALTER TABLE Hospital_Patients
MODIFY Name VARCHAR(100);

-- Drop the 'Gender' column if you decide to store it elsewhere
ALTER TABLE Hospital_Patients
DROP COLUMN Gender;

-- Clauses
-- 1. Get all patients over 50 years old who live in Mumbai
SELECT * 
FROM Hospital_Patients
WHERE Age > 50 AND Home_Address LIKE '%Mumbai%';

-- 2. List patients ordered by age from oldest to youngest
SELECT Patient_ID, Name, Age 
FROM Hospital_Patients
ORDER BY Age DESC;

-- 3. Show the top 5 youngest patients
SELECT Patient_ID, Name, Age 
FROM Hospital_Patients
ORDER BY Age ASC
LIMIT 5;

-- 4. Count how many patients exist for each age group where the count is more than 1
SELECT Age, COUNT(*) AS Patient_Count
FROM Hospital_Patients
GROUP BY Age
HAVING COUNT(*) > 1;

-- 5. From patients in Thane, find the 3 most common ages (with more than 1 patient), sorted by count
SELECT Age, COUNT(*) AS Count_Of_Patients
FROM Hospital_Patients
WHERE Home_Address LIKE '%Thane%'
GROUP BY Age
HAVING COUNT(*) > 1
ORDER BY Count_Of_Patients DESC
LIMIT 3;

-- Table 2: Doctors
CREATE TABLE Doctors(
Doctor_ID INT PRIMARY KEY, 
Name VARCHAR(50) NOT NULL, 
Specialty VARCHAR(50) NOT NULL, 
Phone VARCHAR(10) UNIQUE NOT NULL, 
Email VARCHAR(50) UNIQUE NOT NULL
);

INSERT INTO Doctors (Doctor_ID, Name, Specialty, Phone, Email) VALUES
(1, 'Dr. Rajiv Nair', 'Cardiologist', '9811112233', 'rajiv.nair@hospital.com'),
(2, 'Dr. Sneha Joshi', 'Dermatologist', '9822223344', 'sneha.joshi@hospital.com'),
(3, 'Dr. Amit Deshmukh', 'Neurologist', '9833334455', 'amit.deshmukh@hospital.com'),
(4, 'Dr. Kavita Rao', 'Pediatrician', '9844445566', 'kavita.rao@hospital.com'),
(5, 'Dr. Vinay Kulkarni', 'Orthopedic', '9855556677', 'vinay.kulkarni@hospital.com'),
(6, 'Dr. Alka Mehra', 'Gynecologist', '9866667788', 'alka.mehra@hospital.com'),
(7, 'Dr. Prakash Shetty', 'General Physician', '9877778899', 'prakash.shetty@hospital.com'),
(8, 'Dr. Reema Khan', 'Psychiatrist', '9888889900', 'reema.khan@hospital.com'),
(9, 'Dr. Harshad Shah', 'ENT Specialist', '9899990011', 'harshad.shah@hospital.com'),
(10, 'Dr. Anjali Menon', 'Ophthalmologist', '9900001122', 'anjali.menon@hospital.com');

SELECT * FROM Doctors;
DROP TABLE Doctors;
TRUNCATE TABLE Doctors;

-- 1. RENAME Query

-- Rename the table 'Doctors' to 'Hospital_Doctors' for clarity
RENAME TABLE Doctors TO Hospital_Doctors;

-- Rename the column 'Phone' to 'Mobile' in 'Hospital_Doctors' table
ALTER TABLE Hospital_Doctors RENAME COLUMN Phone TO Mobile;


-- 2. UPDATE Query

-- Update the mobile number of the doctor with Doctor_ID = 2
UPDATE Hospital_Doctors
SET Mobile = '9876543210'
WHERE Doctor_ID = 2;

-- Update the specialty of Dr. Amit Deshmukh to 'Neurosurgeon'
UPDATE Hospital_Doctors
SET Specialty = 'Neurosurgeon'
WHERE Name = 'Dr. Amit Deshmukh';


-- 3. ALTER Query

-- Add a new column 'Experience_Years' to store doctors' experience
ALTER TABLE Hospital_Doctors
ADD Experience_Years INT;

-- Modify the 'Name' column to support 100 characters
ALTER TABLE Hospital_Doctors
MODIFY Name VARCHAR(100);

-- Drop the 'Email' column if it's no longer needed
ALTER TABLE Hospital_Doctors
DROP COLUMN Email;


-- 🗑️ 4. DELETE Query

-- Delete the doctor with Doctor_ID = 5
DELETE FROM Hospital_Doctors
WHERE Doctor_ID = 5;

-- Delete all doctors with less than 2 years of experience
DELETE FROM Hospital_Doctors
WHERE Experience_Years < 2;


-- Clauses

-- Get all doctors who are cardiologists
SELECT * 
FROM Hospital_Doctors
WHERE Specialty = 'Cardiology';

-- List doctors ordered by years of experience (most to least)
SELECT Doctor_ID, Name, Specialty, Experience_Years
FROM Hospital_Doctors
ORDER BY Experience_Years DESC;

-- Show top 3 most experienced doctors
SELECT Doctor_ID, Name, Experience_Years
FROM Hospital_Doctors
ORDER BY Experience_Years DESC
LIMIT 3;

-- Group doctors by specialty and count how many per group
SELECT Specialty, COUNT(*) AS Doctor_Count
FROM Hospital_Doctors
GROUP BY Specialty;

-- Show only specialties that have more than 1 doctor
SELECT Specialty, COUNT(*) AS Doctor_Count
FROM Hospital_Doctors
GROUP BY Specialty
HAVING COUNT(*) > 1;


-- Table 3: Appointments
CREATE TABLE Appointments(
Appointment_ID INT PRIMARY KEY, 
Patient_ID INT, 
Doctor_ID INT, 
Date DATE, 
Time TIME, 
Status ENUM('Scheduled', 'Completed', 'Cancelled'),

FOREIGN KEY (Patient_ID) REFERENCES Patients(Patient_ID),
FOREIGN KEY (Doctor_ID) REFERENCES Doctors(Doctor_ID)
);

INSERT INTO Appointments (Appointment_ID, Patient_ID, Doctor_ID, Date, Time, Status) VALUES
(1, 1, 3, '2025-05-01', '10:00:00', 'Scheduled'),
(2, 2, 1, '2025-05-02', '11:30:00', 'Completed'),
(3, 3, 5, '2025-05-03', '09:00:00', 'Cancelled'),
(4, 4, 2, '2025-05-04', '14:00:00', 'Scheduled'),
(5, 5, 4, '2025-05-05', '15:30:00', 'Scheduled'),
(6, 6, 6, '2025-05-06', '13:00:00', 'Completed'),
(7, 7, 9, '2025-05-07', '16:00:00', 'Scheduled'),
(8, 8, 8, '2025-05-08', '11:00:00', 'Cancelled'),
(9, 9, 10, '2025-05-09', '10:30:00', 'Scheduled'),
(10, 10, 7, '2025-05-10', '12:45:00', 'Completed');

SELECT * FROM Appointments;
DROP TABLE Appointments;
TRUNCATE TABLE Appointments;

-- 1. RENAME Query

-- Rename the table 'Appointments' to 'Patient_Appointments'
RENAME TABLE Appointments TO Patient_Appointments;

-- Rename the column 'Status' to 'Appointment_Status'
ALTER TABLE Patient_Appointments RENAME COLUMN Status TO Appointment_Status;


-- 2. UPDATE Query

-- Update the status of appointment ID = 3 to 'Completed'
UPDATE Patient_Appointments
SET Appointment_Status = 'Completed'
WHERE Appointment_ID = 3;

-- Reschedule the appointment ID = 5 to a new date and time
UPDATE Patient_Appointments
SET Date = '2025-05-10', Time = '15:30:00'
WHERE Appointment_ID = 5;


-- 3. ALTER Query

-- Add a new column 'Visit_Type' to track if it's 'First Visit' or 'Follow-Up'
ALTER TABLE Patient_Appointments
ADD Visit_Type VARCHAR(20);

-- Modify the 'Time' column to allow NULL values
ALTER TABLE Patient_Appointments
MODIFY Time TIME NULL;

-- Drop the 'Visit_Type' column if no longer required
ALTER TABLE Patient_Appointments
DROP COLUMN Visit_Type;


-- 4. DELETE Query

-- Delete the appointment record where Appointment_ID = 8
DELETE FROM Patient_Appointments
WHERE Appointment_ID = 8;

-- Delete all appointments with status 'Cancelled'
DELETE FROM Patient_Appointments
WHERE Appointment_Status = 'Cancelled';


-- 5. Clauses

-- Get all appointments scheduled for '2025-05-10'
SELECT * 
FROM Patient_Appointments
WHERE Date = '2025-05-10';

-- List appointments ordered by date (soonest first)
SELECT Appointment_ID, Patient_ID, Doctor_ID, Date, Time
FROM Patient_Appointments
ORDER BY Date ASC, Time ASC;

-- Show the 5 most recent appointments
SELECT *
FROM Patient_Appointments
ORDER BY Date DESC, Time DESC
LIMIT 5;

-- Count appointments per doctor
SELECT Doctor_ID, COUNT(*) AS Total_Appointments
FROM Patient_Appointments
GROUP BY Doctor_ID;

-- Show doctors who have more than 3 appointments
SELECT Doctor_ID, COUNT(*) AS Total_Appointments
FROM Patient_Appointments
GROUP BY Doctor_ID
HAVING COUNT(*) > 3;

-- Table 4: Medical_History
CREATE TABLE Medical_History(
History_ID INT PRIMARY KEY,
Patient_ID INT, 
Diagnosis VARCHAR(50) NOT NULL, 
Treatment TEXT NOT NULL,
Notes TEXT NOT NULL,

FOREIGN KEY(Patient_ID) REFERENCES Patients(Patient_ID)
);

INSERT INTO Medical_History (History_ID, Patient_ID, Diagnosis, Treatment, Notes) VALUES
(1, 1, 'Hypertension', 'Prescribed beta-blockers and advised low-sodium diet.', 'Patient advised regular BP monitoring.'),
(2, 2, 'Acne Vulgaris', 'Topical retinoid and oral antibiotics.', 'Follow-up in 4 weeks.'),
(3, 3, 'Back Pain', 'Physiotherapy sessions and mild analgesics.', 'MRI recommended if no improvement in 2 weeks.'),
(4, 4, 'Seasonal Allergies', 'Antihistamines prescribed.', 'Avoid pollen-rich areas.'),
(5, 5, 'Fractured Wrist', 'Applied cast. Advised rest and follow-up X-ray.', 'Patient recovering well.'),
(6, 6, 'PCOS', 'Metformin prescribed, lifestyle changes advised.', 'Dietician referral suggested.'),
(7, 7, 'Type 2 Diabetes', 'Started insulin therapy.', 'Monthly sugar level checks required.'),
(8, 8, 'Anxiety Disorder', 'SSRIs and behavioral therapy recommended.', 'Patient referred to psychiatrist.'),
(9, 9, 'Ear Infection', 'Antibiotic ear drops and pain relief meds.', 'Review after 5 days.'),
(10, 10, 'Migraine', 'Painkillers and stress management techniques.', 'Keep headache diary for triggers.');

SELECT * FROM Medical_History;
DROP TABLE Medical_History;
TRUNCATE TABLE Medical_History;

-- 1. RENAME Query

-- Rename the table 'Medical_History' to 'Patient_Medical_History'
RENAME TABLE Medical_History TO Patient_Medical_History;

-- Rename the column 'Diagnosis' to 'Medical_Condition'
ALTER TABLE Patient_Medical_History RENAME COLUMN Diagnosis TO Medical_Condition;


-- 2. UPDATE Query

-- Update the treatment for history record with History_ID = 4
UPDATE Patient_Medical_History
SET Treatment = 'Prescribed antibiotics and rest'
WHERE History_ID = 4;

-- Update the medical condition of patient with ID = 2
UPDATE Patient_Medical_History
SET Medical_Condition = 'Hypertension'
WHERE Patient_ID = 2;


-- 3. ALTER Query

-- Add a new column 'Date_Recorded' to track when the record was entered
ALTER TABLE Patient_Medical_History
ADD Date_Recorded DATE;

-- Modify the 'Treatment' column to allow NULL values
ALTER TABLE Patient_Medical_History
MODIFY Treatment TEXT NULL;

-- Drop the 'Notes' column if it's no longer needed
ALTER TABLE Patient_Medical_History
DROP COLUMN Notes;


-- 4. DELETE Query

-- Delete a record where History_ID = 7
DELETE FROM Patient_Medical_History
WHERE History_ID = 7;

-- Delete all records related to Patient_ID = 10
DELETE FROM Patient_Medical_History
WHERE Patient_ID = 10;


-- 5. Clauses

-- Get all medical history records for patients diagnosed with 'Diabetes'
SELECT * 
FROM Patient_Medical_History
WHERE Medical_Condition = 'Diabetes';

-- List patient history records ordered by Date_Recorded (newest first)
SELECT * 
FROM Patient_Medical_History
ORDER BY Date_Recorded DESC;

-- Show the latest 5 history entries
SELECT * 
FROM Patient_Medical_History
ORDER BY Date_Recorded DESC
LIMIT 5;

-- Count how many records exist per condition
SELECT Medical_Condition, COUNT(*) AS Condition_Count
FROM Patient_Medical_History
GROUP BY Medical_Condition;

-- Show only those conditions which have more than 2 patients recorded
SELECT Medical_Condition, COUNT(*) AS Condition_Count
FROM Patient_Medical_History
GROUP BY Medical_Condition
HAVING COUNT(*) > 2;

-- Table 5: Medications
CREATE TABLE Medications (
  Medication_ID INT PRIMARY KEY,
  Name VARCHAR(50) NOT NULL,
  Type VARCHAR(30) NOT NULL,
  Price DECIMAL(10, 2) NOT NULL,
  Description TEXT
);

INSERT INTO Medications (Medication_ID, Name, Type, Price, Description) VALUES
(1, 'Paracetamol', 'Tablet', 10.00, 'Used to treat fever and mild pain'),
(2, 'Amoxicillin', 'Capsule', 25.50, 'Antibiotic for bacterial infections'),
(3, 'Cetirizine', 'Tablet', 15.00, 'Antihistamine for allergies'),
(4, 'Ibuprofen', 'Tablet', 20.00, 'Pain relief and anti-inflammatory'),
(5, 'Metformin', 'Tablet', 30.00, 'Used for Type 2 Diabetes'),
(6, 'Omeprazole', 'Capsule', 18.00, 'Treats acid reflux and ulcers'),
(7, 'Losartan', 'Tablet', 22.00, 'Used for high blood pressure'),
(8, 'Sertraline', 'Tablet', 50.00, 'Antidepressant (SSRI)'),
(9, 'Salbutamol', 'Inhaler', 100.00, 'Used for asthma and breathing issues'),
(10, 'Azithromycin', 'Tablet', 45.00, 'Broad-spectrum antibiotic');

SELECT * FROM Medications;
DROP TABLE Medications;
TRUNCATE TABLE Medications;

-- 1. RENAME Query

-- Rename the table 'Medications' to 'Pharmacy_Medications'
RENAME TABLE Medications TO Pharmacy_Medications;

-- Rename the column 'Type' to 'Medicine_Type'
ALTER TABLE Pharmacy_Medications RENAME COLUMN Type TO Medicine_Type;


-- 2. UPDATE Query

-- Update the price of medication with ID = 2
UPDATE Pharmacy_Medications
SET Price = 120.50
WHERE Medication_ID = 2;

-- Update the description of medication named 'Paracetamol'
UPDATE Pharmacy_Medications
SET Description = 'Used for fever and mild pain relief'
WHERE Name = 'Paracetamol';


-- 3. ALTER Query

-- Add a new column 'Manufacturer' to store the company name
ALTER TABLE Pharmacy_Medications
ADD Manufacturer VARCHAR(100);

-- Modify the 'Price' column to support decimal values with two digits after the decimal
ALTER TABLE Pharmacy_Medications
MODIFY Price DECIMAL(10, 2);

-- Drop the 'Description' column if it is no longer needed
ALTER TABLE Pharmacy_Medications
DROP COLUMN Description;


-- 4. DELETE Query

-- Delete the medication record where Medication_ID = 6
DELETE FROM Pharmacy_Medications
WHERE Medication_ID = 6;

-- Delete all medications with price less than 10 (outdated or promotional samples)
DELETE FROM Pharmacy_Medications
WHERE Price < 10;


-- 5. Clauses

-- Get all medications that cost more than 100
SELECT * 
FROM Pharmacy_Medications
WHERE Price > 100;

-- List all medications ordered by price from highest to lowest
SELECT Medication_ID, Name, Price
FROM Pharmacy_Medications
ORDER BY Price DESC;

-- Show the 5 cheapest medications
SELECT Medication_ID, Name, Price
FROM Pharmacy_Medications
ORDER BY Price ASC
LIMIT 5;

-- Count medications grouped by type
SELECT Medicine_Type, COUNT(*) AS Total_Medicines
FROM Pharmacy_Medications
GROUP BY Medicine_Type;

-- Show only medicine types that have more than 2 medications
SELECT Medicine_Type, COUNT(*) AS Total_Medicines
FROM Pharmacy_Medications
GROUP BY Medicine_Type
HAVING COUNT(*) > 2;


-- Table 6: Prescriptions
CREATE TABLE Prescriptions (
  Prescription_ID INT PRIMARY KEY,
  Patient_ID INT,
  Medication_ID INT,
  Date_Provided DATE NOT NULL,
  Dosage VARCHAR(50) NOT NULL,
  
  FOREIGN KEY (Patient_ID) REFERENCES Patients(Patient_ID),
  FOREIGN KEY (Medication_ID) REFERENCES Medications(Medication_ID)
);

INSERT INTO Prescriptions (Prescription_ID, Patient_ID, Medication_ID, Date_Provided, Dosage) VALUES
(1, 1, 1, '2025-05-01', '500mg twice daily'),
(2, 2, 2, '2025-05-02', '250mg three times a day'),
(3, 3, 4, '2025-05-03', '400mg every 6 hours'),
(4, 4, 3, '2025-05-04', '10mg once daily'),
(5, 5, 5, '2025-05-05', '500mg twice daily with food'),
(6, 6, 6, '2025-05-06', '20mg before breakfast'),
(7, 7, 7, '2025-05-07', '50mg once daily'),
(8, 8, 8, '2025-05-08', '100mg every morning'),
(9, 9, 9, '2025-05-09', '2 puffs as needed'),
(10, 10, 10, '2025-05-10', '500mg once daily for 3 days');

SELECT * FROM Prescriptions;
DROP TABLE Prescriptions;
TRUNCATE TABLE Prescriptions;

-- 1. RENAME Query

-- Rename the table 'Prescriptions' to 'Patient_Prescriptions'
RENAME TABLE Prescriptions TO Patient_Prescriptions;

-- Rename the column 'Dosage' to 'Dosage_Instruction'
ALTER TABLE Patient_Prescriptions RENAME COLUMN Dosage TO Dosage_Instruction;


-- 2. UPDATE Query

-- Update dosage for Prescription_ID = 3
UPDATE Patient_Prescriptions
SET Dosage_Instruction = '1 tablet after lunch for 5 days'
WHERE Prescription_ID = 3;

-- Update the date for Prescription_ID = 5
UPDATE Patient_Prescriptions
SET Date_Provided = '2025-05-04'
WHERE Prescription_ID = 5;


-- 3. ALTER Query

-- Add a new column 'Prescribed_By' to store the Doctor_ID
ALTER TABLE Patient_Prescriptions
ADD Prescribed_By INT;

-- Modify 'Dosage_Instruction' column to allow more text
ALTER TABLE Patient_Prescriptions
MODIFY Dosage_Instruction VARCHAR(200);

-- Drop the 'Prescribed_By' column if no longer needed
ALTER TABLE Patient_Prescriptions
DROP COLUMN Prescribed_By;


-- 4. DELETE Query

-- Delete prescription with Prescription_ID = 6
DELETE FROM Patient_Prescriptions
WHERE Prescription_ID = 6;

-- Delete all prescriptions older than 2024-01-01
DELETE FROM Patient_Prescriptions
WHERE Date_Provided < '2024-01-01';


-- 5. Clauses

-- Get all prescriptions for Patient_ID = 2
SELECT * 
FROM Patient_Prescriptions
WHERE Patient_ID = 2;

-- List all prescriptions ordered by date (most recent first)
SELECT * 
FROM Patient_Prescriptions
ORDER BY Date_Provided DESC;

-- Show the latest 5 prescriptions
SELECT * 
FROM Patient_Prescriptions
ORDER BY Date_Provided DESC
LIMIT 5;

-- Count how many prescriptions were given per medication
SELECT Medication_ID, COUNT(*) AS Prescription_Count
FROM Patient_Prescriptions
GROUP BY Medication_ID;

-- Show medications prescribed more than 2 times
SELECT Medication_ID, COUNT(*) AS Prescription_Count
FROM Patient_Prescriptions
GROUP BY Medication_ID
HAVING COUNT(*) > 2;

-- Table 7: Bills
CREATE TABLE Bills (
  Bill_ID INT PRIMARY KEY,
  Patient_ID INT,
  Total_Amount DECIMAL(10, 2) NOT NULL,
  Payment_Status ENUM('Paid', 'Unpaid', 'Pending') NOT NULL,
  Date DATE NOT NULL,

  FOREIGN KEY (Patient_ID) REFERENCES Patients(Patient_ID)
);

INSERT INTO Bills (Bill_ID, Patient_ID, Total_Amount, Payment_Status, Date) VALUES
(1, 1, 500.00, 'Paid', '2025-05-01'),
(2, 2, 1200.00, 'Unpaid', '2025-05-02'),
(3, 3, 900.00, 'Pending', '2025-05-03'),
(4, 4, 1500.00, 'Paid', '2025-05-04'),
(5, 5, 600.00, 'Unpaid', '2025-05-05'),
(6, 6, 750.00, 'Paid', '2025-05-06'),
(7, 7, 2000.00, 'Pending', '2025-05-07'),
(8, 8, 820.00, 'Paid', '2025-05-08'),
(9, 9, 1350.00, 'Paid', '2025-05-09'),
(10, 10, 990.00, 'Unpaid', '2025-05-10');

SELECT * FROM Bills;
DROP TABLE Bills;
TRUNCATE TABLE Bills;
-- 1. RENAME Query

-- Rename the table 'Bills' to 'Patient_Bills'
RENAME TABLE Bills TO Patient_Bills;

-- Rename the column 'Total_Amount' to 'Amount_Due'
ALTER TABLE Patient_Bills RENAME COLUMN Total_Amount TO Amount_Due;


-- 2. UPDATE Query

-- Update the payment status of Bill_ID = 4 to 'Paid'
UPDATE Patient_Bills
SET Payment_Status = 'Paid'
WHERE Bill_ID = 4;

-- Update the total amount for Bill_ID = 2
UPDATE Patient_Bills
SET Amount_Due = 1500.00
WHERE Bill_ID = 2;


-- 3. ALTER Query

-- Add a new column 'Discount_Applied' to store any discount applied to the bill
ALTER TABLE Patient_Bills
ADD Discount_Applied DECIMAL(5,2);

-- Modify the 'Date' column to support NULL values
ALTER TABLE Patient_Bills
MODIFY Date DATE NULL;

-- Drop the 'Discount_Applied' column if no longer required
ALTER TABLE Patient_Bills
DROP COLUMN Discount_Applied;


-- 4. DELETE Query

-- Delete bill with Bill_ID = 3
DELETE FROM Patient_Bills
WHERE Bill_ID = 3;

-- Delete all bills with 'Unpaid' status
DELETE FROM Patient_Bills
WHERE Payment_Status = 'Unpaid';


-- 5. Clauses

-- Get all bills for Patient_ID = 2
SELECT * 
FROM Patient_Bills
WHERE Patient_ID = 2;

-- List all bills ordered by date (most recent first)
SELECT * 
FROM Patient_Bills
ORDER BY Date DESC;

-- Show the 5 most recent bills
SELECT * 
FROM Patient_Bills
ORDER BY Date DESC
LIMIT 5;

-- Count how many bills were generated per patient
SELECT Patient_ID, COUNT(*) AS Bill_Count
FROM Patient_Bills
GROUP BY Patient_ID;

-- Show patients with more than 2 bills
SELECT Patient_ID, COUNT(*) AS Bill_Count
FROM Patient_Bills
GROUP BY Patient_ID
HAVING COUNT(*) > 2;

-- Table 8: Staff
CREATE TABLE Staff (
  Staff_ID INT PRIMARY KEY,
  Name VARCHAR(50) NOT NULL,
  Role VARCHAR(50) NOT NULL,
  Contact VARCHAR(10) UNIQUE NOT NULL,
  Shift ENUM('Morning', 'Evening', 'Night') NOT NULL
);

INSERT INTO Staff (Staff_ID, Name, Role, Contact, Shift) VALUES
(1, 'Anita Dsouza', 'Nurse', '9870000001', 'Morning'),
(2, 'Raj Malhotra', 'Receptionist', '9870000002', 'Evening'),
(3, 'Sunita Shah', 'Lab Technician', '9870000003', 'Night'),
(4, 'Arjun Desai', 'Pharmacist', '9870000004', 'Morning'),
(5, 'Meena Iyer', 'Accountant', '9870000005', 'Evening'),
(6, 'Kunal Bhat', 'Admin Officer', '9870000006', 'Morning'),
(7, 'Rita Kapoor', 'Nurse', '9870000007', 'Night'),
(8, 'Imran Shaikh', 'Ward Boy', '9870000008', 'Evening'),
(9, 'Alok Verma', 'Security Guard', '9870000009', 'Night'),
(10, 'Priya Sen', 'HR Executive', '9870000010', 'Morning');

SELECT * FROM Staff;
DROP TABLE Staff;
TRUNCATE TABLE Staff;

-- 1. RENAME Query

-- Rename the table 'Staff' to 'Hospital_Staff'
RENAME TABLE Staff TO Hospital_Staff;

-- Rename the column 'Contact' to 'Phone_Number'
ALTER TABLE Hospital_Staff RENAME COLUMN Contact TO Phone_Number;


-- 2. UPDATE Query

-- Update the phone number for staff with Staff_ID = 3
UPDATE Hospital_Staff
SET Phone_Number = '9876543210'
WHERE Staff_ID = 3;

-- Update the role of staff member 'John Doe' to 'Nurse'
UPDATE Hospital_Staff
SET Role = 'Nurse'
WHERE Name = 'John Doe';


-- 3. ALTER Query

-- Add a new column 'Shift_Timing' to store staff working shift
ALTER TABLE Hospital_Staff
ADD Shift_Timing VARCHAR(50);

-- Modify the 'Role' column to increase the length limit to 100 characters
ALTER TABLE Hospital_Staff
MODIFY Role VARCHAR(100);

-- Drop the 'Shift_Timing' column if no longer needed
ALTER TABLE Hospital_Staff
DROP COLUMN Shift_Timing;


-- 4. DELETE Query

-- Delete staff member with Staff_ID = 4
DELETE FROM Hospital_Staff
WHERE Staff_ID = 4;

-- Delete all staff members with role 'Intern'
DELETE FROM Hospital_Staff
WHERE Role = 'Intern';


-- 5. Clauses

-- Get all staff members who work the 'Night Shift'
SELECT * 
FROM Hospital_Staff
WHERE Shift_Timing = 'Night Shift';

-- List all staff ordered by their roles (alphabetically)
SELECT Staff_ID, Name, Role 
FROM Hospital_Staff
ORDER BY Role ASC;

-- Show the top 3 staff members with the longest working shifts
SELECT Staff_ID, Name, Shift_Timing
FROM Hospital_Staff
ORDER BY LENGTH(Shift_Timing) DESC
LIMIT 3;

-- Count how many staff members work each shift
SELECT Shift_Timing, COUNT(*) AS Staff_Count
FROM Hospital_Staff
GROUP BY Shift_Timing;

-- Show only shifts with more than 2 staff members
SELECT Shift_Timing, COUNT(*) AS Staff_Count
FROM Hospital_Staff
GROUP BY Shift_Timing
HAVING COUNT(*) > 2;

-- Table 9: Departments
CREATE TABLE Departments (
  Department_ID INT PRIMARY KEY,
  Name VARCHAR(50) NOT NULL,
  Location VARCHAR(100) NOT NULL,
  Phone VARCHAR(10) UNIQUE NOT NULL,
  Head_Name VARCHAR(50) NOT NULL
);

INSERT INTO Departments (Department_ID, Name, Location, Phone, Head_Name) VALUES
(1, 'Cardiology', '1st Floor, Wing A', '9811111111', 'Dr. Rajiv Nair'),
(2, 'Neurology', '2nd Floor, Wing B', '9822222222', 'Dr. Amit Deshmukh'),
(3, 'Orthopedics', '3rd Floor, Wing C', '9833333333', 'Dr. Vinay Kulkarni'),
(4, 'Pediatrics', '1st Floor, Wing D', '9844444444', 'Dr. Kavita Rao'),
(5, 'Radiology', 'Basement, Wing E', '9855555555', 'Dr. Harshad Shah'),
(6, 'Gynecology', '2nd Floor, Wing A', '9866666666', 'Dr. Alka Mehra'),
(7, 'ENT', '3rd Floor, Wing B', '9877777777', 'Dr. Harshad Shah'),
(8, 'Dermatology', '1st Floor, Wing C', '9888888888', 'Dr. Sneha Joshi'),
(9, 'Ophthalmology', '2nd Floor, Wing D', '9899999999', 'Dr. Anjali Menon'),
(10, 'Psychiatry', '3rd Floor, Wing E', '9900000000', 'Dr. Reema Khan');

SELECT * FROM Departments;
DROP TABLE Departments;
TRUNCATE TABLE Departments;

-- 1. RENAME Query

-- Rename the table 'Departments' to 'Hospital_Departments'
RENAME TABLE Departments TO Hospital_Departments;

-- Rename the column 'Location' to 'Department_Location'
ALTER TABLE Hospital_Departments RENAME COLUMN Location TO Department_Location;


-- 2. UPDATE Query

-- Update the location for department with Department_ID = 3
UPDATE Hospital_Departments
SET Department_Location = 'Building C, 2nd Floor'
WHERE Department_ID = 3;

-- Update the name of department with Department_ID = 1 to 'Cardiology'
UPDATE Hospital_Departments
SET Name = 'Cardiology'
WHERE Department_ID = 1;


-- 3. ALTER Query

-- Add a new column 'Head_Of_Department' to store the name of the department head
ALTER TABLE Hospital_Departments
ADD Head_Of_Department VARCHAR(100);

-- Modify the 'Phone' column to increase its length to 15 characters
ALTER TABLE Hospital_Departments
MODIFY Phone VARCHAR(15);

-- Drop the 'Head_Of_Department' column if it's no longer needed
ALTER TABLE Hospital_Departments
DROP COLUMN Head_Of_Department;


-- 4. DELETE Query

-- Delete department with Department_ID = 4
DELETE FROM Hospital_Departments
WHERE Department_ID = 4;

-- Delete all departments with less than 5 staff members
DELETE FROM Hospital_Departments
WHERE Department_ID IN (
    SELECT Department_ID 
    FROM Hospital_Staff
    GROUP BY Department_ID
    HAVING COUNT(*) < 5
);


-- 5. Clauses

-- Get all departments with the location 'Building A'
SELECT * 
FROM Hospital_Departments
WHERE Department_Location = 'Building A';

-- List all departments ordered by their name alphabetically
SELECT Department_ID, Name 
FROM Hospital_Departments
ORDER BY Name ASC;

-- Show the 3 most recently added departments
SELECT * 
FROM Hospital_Departments
ORDER BY Department_ID DESC
LIMIT 3;

-- Count departments grouped by location
SELECT Department_Location, COUNT(*) AS Department_Count
FROM Hospital_Departments
GROUP BY Department_Location;

-- Show only locations that have more than 1 department
SELECT Department_Location, COUNT(*) AS Department_Count
FROM Hospital_Departments
GROUP BY Department_Location
HAVING COUNT(*) > 1;

-- Table 10: Facilities
CREATE TABLE Facilities (
  Facility_ID INT PRIMARY KEY,
  Name VARCHAR(50) NOT NULL,
  Type VARCHAR(30) NOT NULL,
  Cost DECIMAL(10, 2) NOT NULL,
  Availability_Status ENUM('Available', 'Unavailable') NOT NULL
);

INSERT INTO Facilities (Facility_ID, Name, Type, Cost, Availability_Status) VALUES
(1, 'MRI Scanner', 'Diagnostic', 5000.00, 'Available'),
(2, 'X-Ray Machine', 'Diagnostic', 1000.00, 'Available'),
(3, 'ICU Bed', 'Emergency', 3000.00, 'Unavailable'),
(4, 'Ventilator', 'Emergency', 2000.00, 'Available'),
(5, 'Operation Theater', 'Surgical', 15000.00, 'Available'),
(6, 'Private Room', 'Accommodation', 2500.00, 'Unavailable'),
(7, 'General Ward', 'Accommodation', 800.00, 'Available'),
(8, 'CT Scanner', 'Diagnostic', 4000.00, 'Unavailable'),
(9, 'Ambulance', 'Transport', 1500.00, 'Available'),
(10, 'Physiotherapy Room', 'Rehabilitation', 1000.00, 'Available');

SELECT * FROM Facilities;
DROP TABLE Facilities;
TRUNCATE TABLE Facilities;

-- 1. RENAME Query

-- Rename the table 'Facilities' to 'Hospital_Facilities'
RENAME TABLE Facilities TO Hospital_Facilities;

-- Rename the column 'Cost' to 'Facility_Cost'
ALTER TABLE Hospital_Facilities RENAME COLUMN Cost TO Facility_Cost;


-- 2. UPDATE Query

-- Update the cost for facility with Facility_ID = 2
UPDATE Hospital_Facilities
SET Facility_Cost = 5000.00
WHERE Facility_ID = 2;

-- Update the availability status of facility 'MRI Machine' to 'Unavailable'
UPDATE Hospital_Facilities
SET Availability_Status = 'Unavailable'
WHERE Name = 'MRI Machine';


-- 3. ALTER Query

-- Add a new column 'Facility_Manager' to store the manager's name
ALTER TABLE Hospital_Facilities
ADD Facility_Manager VARCHAR(100);

-- Modify the 'Availability_Status' column to support more text options
ALTER TABLE Hospital_Facilities
MODIFY Availability_Status VARCHAR(50);

-- Drop the 'Facility_Manager' column if it's no longer required
ALTER TABLE Hospital_Facilities
DROP COLUMN Facility_Manager;


-- 4. DELETE Query

-- Delete facility with Facility_ID = 5
DELETE FROM Hospital_Facilities
WHERE Facility_ID = 5;

-- Delete all facilities that are unavailable
DELETE FROM Hospital_Facilities
WHERE Availability_Status = 'Unavailable';


-- 5. Clauses

-- Get all facilities with the type 'Surgical'
SELECT * 
FROM Hospital_Facilities
WHERE Type = 'Surgical';

-- List all facilities ordered by their cost (highest first)
SELECT Facility_ID, Name, Facility_Cost
FROM Hospital_Facilities
ORDER BY Facility_Cost DESC;

-- Show the 5 most expensive facilities
SELECT Facility_ID, Name, Facility_Cost
FROM Hospital_Facilities
ORDER BY Facility_Cost DESC
LIMIT 5;

-- Count facilities grouped by their type
SELECT Type, COUNT(*) AS Facility_Count
FROM Hospital_Facilities
GROUP BY Type;

-- Show only facility types with more than 2 facilities
SELECT Type, COUNT(*) AS Facility_Count
FROM Hospital_Facilities
GROUP BY Type
HAVING COUNT(*) > 2;

