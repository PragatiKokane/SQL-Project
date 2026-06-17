create database Hospital_Management_System;
use Hospital_Management_System;

#1. Display all patients
SELECT * FROM Patients;

#2. Display all doctors
SELECT * FROM Doctors;

#3. Show patient names only
SELECT Name FROM Patients;

#4. Show doctor names only
SELECT Doctor_Name FROM Doctors;

#5. Show patients older than 50
SELECT * FROM Patients
WHERE Age > 50;

#6. Show female patients
SELECT * FROM Patients
WHERE Gender='Female';

#7. Show male patients
SELECT * FROM Patients
WHERE Gender='Male';

#8. Display all appointments
SELECT * FROM Appointments;

#8. Display all billing records
SELECT * FROM Billing;

#10. Display all payment records
SELECT * FROM Payments;


#11. Count total patients
SELECT COUNT(*) AS TotalPatients
FROM Patients;

#12. Count total doctors
SELECT COUNT(*) AS TotalDoctors
FROM Doctors;

#13. Find maximum bill amount
SELECT MAX(Amount)
FROM Billing;

#14. Find minimum bill amount
SELECT MIN(Amount)
FROM Billing;

#15. Find average bill amount
SELECT AVG(Amount)
FROM Billing;

#16. Total revenue
SELECT SUM(Amount)
FROM Billing;

#17. Count male patients
SELECT COUNT(*)
FROM Patients
WHERE Gender='Male';

#18. Count female patients
SELECT COUNT(*)
FROM Patients
WHERE Gender='Female';

#19. Average patient age
SELECT AVG(Age)
FROM Patients;

#20. Oldest patient
SELECT MAX(Age)
FROM Patients;

#21. Patients by gender
SELECT Gender, COUNT(*)
FROM Patients
GROUP BY Gender;

#22. Doctors by specialization
SELECT Specialization, COUNT(*)
FROM Doctors
GROUP BY Specialization;

#23. Patients by disease
SELECT Disease, COUNT(*)
FROM Diagnosis
GROUP BY Disease;


#24. Revenue by payment method
SELECT Payment_Method,
SUM(Amount_Paid)
FROM Payments
GROUP BY Payment_Method;

#25. Bills count by amount
SELECT Amount, COUNT(*)
FROM Billing
GROUP BY Amount;

#26. Average bill by payment method
SELECT Payment_Method,
AVG(Amount_Paid)
FROM Payments
GROUP BY Payment_Method;

#27. Patients grouped by age
SELECT Age, COUNT(*)
FROM Patients
GROUP BY Age;

#28.Disease frequency
SELECT Disease,
COUNT(*)
FROM Diagnosis
GROUP BY Disease;

#29. Treatment frequency
SELECT Treatment,
COUNT(*)
FROM Treatment
GROUP BY Treatment;

#30. Specialization frequency
SELECT Specialization,
COUNT(*)
FROM Doctors
GROUP BY Specialization;

#31. Patient with appointment details
SELECT P.Name,A.Appointment_Date
FROM Patients P
JOIN Appointments A
ON P.Patient_ID=A.Patient_ID;

#32. Doctor with appointment details
SELECT D.Doctor_Name,A.Appointment_Date
FROM Doctors D
JOIN Appointments A
ON D.Doctor_ID=A.Doctor_ID;

#33. Patient and doctor details
SELECT P.Name,D.Doctor_Name
FROM Patients P
JOIN Appointments A
ON P.Patient_ID=A.Patient_ID
JOIN Doctors D
ON A.Doctor_ID=D.Doctor_ID;

#34. Patient with diagnosis
SELECT P.Name,DG.Disease
FROM Patients P
JOIN Appointments A
ON P.Patient_ID=A.Patient_ID
JOIN Diagnosis DG
ON A.Appointment_ID=DG.Appointment_ID;

#35. Diagnosis with treatment
SELECT DG.Disease,T.Treatment
FROM Diagnosis DG
JOIN Treatment T
ON DG.Diagnosis_ID=T.Diagnosis_ID;


#36. Treatment with bill amount
SELECT T.Treatment,B.Amount
FROM Treatment T
JOIN Billing B
ON T.Treatment_ID=B.Treatment_ID;


#37. Bill with payment method
SELECT B.Amount,PM.Payment_Method
FROM Billing B
JOIN Payments PM
ON B.Bill_ID=PM.Bill_ID;


#38. Patient discharge details
SELECT P.Name,DS.Discharge_Date
FROM Patients P
JOIN Discharge DS
ON P.Patient_ID=DS.Patient_ID;

#39. Appointment with disease
 SELECT A.Appointment_ID,DG.Disease
FROM Appointments A
JOIN Diagnosis DG
ON A.Appointment_ID=DG.Appointment_ID;
# 41. Top 5 highest bills
 SELECT *
FROM Billing
ORDER BY Amount DESC
LIMIT 5;

#42. Top 10 oldest patients
SELECT *
FROM Patients
ORDER BY Age DESC
LIMIT 10;

#43. Patients with age between 20 and 40
SELECT *
FROM Patients
WHERE Age BETWEEN 20 AND 40;

#44. Patients whose name starts with 'P'
SELECT *
FROM Patients
WHERE Name LIKE 'P%';

#45. Cardiologists only
 SELECT *
FROM Doctors
WHERE Specialization='Cardiologist';

SELECT *
FROM Doctors
WHERE Specialization='Cardiologist';

#46. Bills greater than ₹20,000
SELECT *
FROM Billing
WHERE Amount > 20000;


#47. Payments made through UPI
SELECT *
FROM Payments
WHERE Payment_Method='UPI';

#48. Diseases sorted alphabetically
 SELECT DISTINCT Disease
FROM Diagnosis
ORDER BY Disease;


#49. Doctors sorted by name
 SELECT *
FROM Doctors
ORDER BY Doctor_Name;




#Hospital Management System – SQL Database Project'''

#'''Project Description'''

#'''Developed a Hospital Management System database using SQL to efficiently manage hospital operations, including patient records, doctor information, appointments, diagnoses, treatments, billing, payments, and discharge details. Designed and queried a relational database to automate data management, generate reports, track hospital revenue, and provide insights into patient care and hospital performance. Implemented SQL operations such as joins, aggregate functions, grouping, filtering, sorting, and reporting queries to support decision-making and reduce manual record-keeping.'''

#'''Key Features'''
#'''Managed patient and doctor records.
Scheduled and tracked appointments.
Maintained diagnosis and treatment information.
Generated billing and payment reports.
Analyzed hospital revenue and patient statistics.
Monitored disease trends and doctor specialization data.
Produced management reports using SQL queries.'''

#'''Technologies Used
MySQL
SQL (DDL, DML, Joins, Aggregate Functions, Subqueries)
Relational Database Management System (RDBMS)'''

#'''Business Usefulness
Reduces manual paperwork and data redundancy.
Provides quick access to patient medical history.
Helps hospital staff manage appointments efficiently.
Tracks billing and payment transactions accurately.
Supports management with data-driven reports and analytics.
Identifies common diseases and treatment patterns.
Improves operational efficiency and decision-making.''''