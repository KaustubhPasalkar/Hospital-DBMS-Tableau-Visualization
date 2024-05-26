-- 1.	How many times has a patient visited the hospital.
SELECT
    p.PatientID,
    p.FName,
    p.LName,
    p.Gender,
    p.Age,
    p.ContactNo,
    p.EmailID,
    p.Address,
    p.Height,
    p.Weight,
    p.BloodGroup,
    COUNT(pr.PatientRecordID) AS VisitCount
FROM
    hospitaldbms.patient p
JOIN
    hospitaldbms.patientrecord pr ON p.PatientID = pr.PatientID
GROUP BY
    p.PatientID
ORDER BY
    VisitCount DESC;
    
-- 2.	What is the total amount billed by a particular patient throughout his/her visits.
SELECT
    p.PatientID,
    p.FName,
    p.LName,
    p.Gender,
    p.Age,
    p.ContactNo,
    p.EmailID,
    p.Address,
    p.Height,
    p.Weight,
    p.BloodGroup,
    SUM(pb.Amount) AS TotalAmountBilled
FROM
    hospitaldbms.patientbill pb
JOIN
    hospitaldbms.patientrecord pr ON pb.PatientRecordID = pr.PatientRecordID
JOIN
    hospitaldbms.patient p ON pr.PatientID = p.PatientID
GROUP BY
    p.PatientID
ORDER BY
    TotalAmountBilled DESC;

-- 3.	What is the most preferred payment method.
SELECT
    PaymentMethod,
    COUNT(PatientBillID) AS PaymentCount
FROM
    hospitaldbms.patientbill
GROUP BY
    PaymentMethod
ORDER BY
    PaymentCount DESC;

-- 4.	What is the amount spent per age group on hospital bills.
WITH AgeGroups AS (
    SELECT
        CASE
            WHEN Age BETWEEN 0 AND 18 THEN '0-18'
            WHEN Age BETWEEN 19 AND 30 THEN '19-30'
            WHEN Age BETWEEN 31 AND 45 THEN '31-45'
            WHEN Age BETWEEN 46 AND 60 THEN '46-60'
            ELSE '61+'
        END AS AgeGroup,
        PatientID
    FROM
        hospitaldbms.patient
)

SELECT
    ag.AgeGroup,
    SUM(pb.Amount) AS TotalAmountBilled
FROM
    AgeGroups ag
JOIN
    hospitaldbms.patientrecord pr ON ag.PatientID = pr.PatientID
JOIN
    hospitaldbms.patientbill pb ON pr.PatientRecordID = pb.PatientRecordID
GROUP BY
    ag.AgeGroup
ORDER BY
    TotalAmountBilled DESC;

-- 5.	What is the count of visits in hospital for a particular age group.
WITH AgeGroups AS (
    SELECT
        CASE
            WHEN Age BETWEEN 0 AND 18 THEN '0-18'
            WHEN Age BETWEEN 19 AND 30 THEN '19-30'
            WHEN Age BETWEEN 31 AND 45 THEN '31-45'
            WHEN Age BETWEEN 46 AND 60 THEN '46-60'
            ELSE '61+'
        END AS AgeGroup,
        PatientID
    FROM
        hospitaldbms.patient
)

SELECT
    ag.AgeGroup,
    COUNT(pr.PatientRecordID) AS VisitCount
FROM
    AgeGroups ag
JOIN
    hospitaldbms.patientrecord pr ON ag.PatientID = pr.PatientID
GROUP BY
    ag.AgeGroup
ORDER BY
    VisitCount DESC;
    
-- 6.	Who are the top 5 hardworking employees who treated maximum patients.
SELECT
    e.EmployeeID,
    e.FName,
    e.LName,
    er.RoleDescription AS EmployeeRole,
    COUNT(pr.PatientID) AS PatientsTreated
FROM
    hospitaldbms.employee e
JOIN
    hospitaldbms.patientrecord pr ON e.EmployeeID = pr.EmployeeID
JOIN
    hospitaldbms.employeerole er ON e.EmpRoleID = er.EmpRoleID
GROUP BY
    e.EmployeeID
ORDER BY
    PatientsTreated DESC
LIMIT 5;

-- 7.	Which patients underwent the maximum number of lab tests.
SELECT
    pr.PatientID,
    p.FName,
    p.LName,
    COUNT(rt.LabTestID) AS LabTestsCount
FROM
    hospitaldbms.patientrecord pr
JOIN
    hospitaldbms.report rt ON pr.PatientRecordID = rt.PatientRecordID
JOIN
    hospitaldbms.patient p ON pr.PatientID = p.PatientID
GROUP BY
    pr.PatientID
ORDER BY
    LabTestsCount DESC;
    
-- 8.	What is the number of Lab tests performed by patients based on their age group.
WITH AgeGroups AS (
    SELECT
        CASE
            WHEN Age BETWEEN 0 AND 18 THEN '0-18'
            WHEN Age BETWEEN 19 AND 30 THEN '19-30'
            WHEN Age BETWEEN 31 AND 45 THEN '31-45'
            WHEN Age BETWEEN 46 AND 60 THEN '46-60'
            ELSE '61+'
        END AS AgeGroup,
        PatientID
    FROM
        hospitaldbms.patient
)

SELECT
    ag.AgeGroup,
    COUNT(rt.LabTestID) AS LabTestsCount
FROM
    AgeGroups ag
JOIN
    hospitaldbms.patientrecord pr ON ag.PatientID = pr.PatientID
JOIN
    hospitaldbms.report rt ON pr.PatientRecordID = rt.PatientRecordID
JOIN
    hospitaldbms.patient p ON pr.PatientID = p.PatientID
GROUP BY
    ag.AgeGroup
ORDER BY
    LabTestsCount DESC;
