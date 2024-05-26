-- Inserting hospital-related departments
INSERT INTO `hospitaldbms2`.`department` (`DepartmentId`, `DepartmentName`)
VALUES
  (100, 'Emergency Medicine'),
  (101, 'Internal Medicine'),
  (102, 'Surgery'),
  (103, 'Pediatrics'),
  (104, 'Obstetrics and Gynecology'),
  (105, 'Radiology'),
  (106, 'Laboratory Services'),
  (107, 'Pharmacy'),
  (108, 'Nutrition and Dietary'),
  (109, 'Physical Therapy');

-- Inserting 10 hospital-related dummy data rows into the employeerole table
INSERT INTO `hospitaldbms2`.`employeerole` (`EmpRoleID`, `RoleDescription`)
VALUES
  (200, 'Doctor'),
  (201, 'Nurse'),
  (202, 'Surgeon'),
  (203, 'Radiologist'),
  (204, 'Laboratory Technician'),
  (205, 'Pharmacist'),
  (206, 'Administrative Staff'),
  (207, 'Nutritionist'),
  (208, 'Physical Therapist'),
  (209, 'Security Guard');

-- Inserting 10 hospital-related dummy data rows into the employee table
INSERT INTO `hospitaldbms2`.`employee` (`EmployeeID`, `FName`, `LName`, `Gender`, `Age`, `ContactNo`, `EmpRoleID`)
VALUES
  (300, 'John', 'Doe', 'Male', 35, '123-456-7890', 200),
  (301, 'Jane', 'Smith', 'Female', 28, '987-654-3210', 201),
  (302, 'David', 'Johnson', 'Male', 42, '555-123-4567', 200),
  (303, 'Emily', 'Williams', 'Female', 33, '111-222-3333', 201), 
  (304, 'Michael', 'Brown', 'Male', 29, '444-555-6666', 202),
  (305, 'Samantha', 'Miller', 'Female', 38, '777-888-9999', 203),
  (306, 'Robert', 'Davis', 'Male', 31, '666-777-8888', 204),
  (307, 'Grace', 'Anderson', 'Female', 45, '222-333-4444', 205),
  (308, 'Daniel', 'Clark', 'Male', 27, '999-888-7777', 206),
  (309, 'Olivia', 'Taylor', 'Female', 40, '333-444-5555', 204);

-- Inserting 10 hospital-related dummy data rows into the employeedepartment table
INSERT INTO `hospitaldbms2`.`employeedepartment` (`EmployeeDepartmentID`, `DepartmentId`, `EmployeeID`)
VALUES
  (400, 100, 300),  -- Employee 300 assigned to Department 100
  (401, 101, 301),  -- Employee 301 assigned to Department 101
  (402, 102, 302),  -- Employee 302 assigned to Department 102
  (403, 103, 303),  -- Employee 303 assigned to Department 103
  (404, 104, 304),  -- Employee 304 assigned to Department 104
  (405, 105, 305),  -- Employee 305 assigned to Department 105
  (406, 106, 306),  -- Employee 306 assigned to Department 106
  (407, 107, 307),  -- Employee 307 assigned to Department 107
  (408, 108, 308),  -- Employee 308 assigned to Department 108
  (409, 109, 309);  -- Employee 309 assigned to Department 109


-- Inserting 10 hospital-related dummy data rows into the patient table
INSERT INTO `hospitaldbms2`.`patient` (`PatientID`, `FName`, `LName`, `Gender`, `Age`, `ContactNo`, `EmailID`, `Address`, `Height`, `Weight`, `BloodGroup`)
VALUES
  (500, 'Elder1', 'Last1', 'Male', 70, '123-456-7890', 'elder1@example.com', '123 Elder Street', '170 cm', '75 kg', 'A+'),
  (501, 'Elder2', 'Last2', 'Female', 75, '987-654-3210', 'elder2@example.com', '456 Senior Avenue', '160 cm', '65 kg', 'B-'),
  (502, 'Senior1', 'Citizen1', 'Male', 31, '555-123-4567', 'senior1@example.com', '789 Retirement Lane', '175 cm', '80 kg', 'O+'),
  (503, 'Senior2', 'Citizen2', 'Female', 72, '111-222-3333', 'senior2@example.com', '101 Senior Park', '155 cm', '70 kg', 'AB+'),
  (504, 'Grandparent1', 'Lastname1', 'Male', 80, '444-555-6666', 'grand1@example.com', '234 Grand Avenue', '160 cm', '75 kg', 'A-'),
  (505, 'Grandparent2', 'Lastname2', 'Female', 78, '777-888-9999', 'grand2@example.com', '567 Grandparents Circle', '155 cm', '68 kg', 'B+'),
  (506, 'Mature1', 'Surname1', 'Male', 26, '666-777-8888', 'mature1@example.com', '789 Wisdom Lane', '180 cm', '85 kg', 'O-'),
  (507, 'Mature2', 'Surname2', 'Female', 56, '222-333-4444', 'mature2@example.com', '890 Experience Street', '165 cm', '72 kg', 'AB-'),
  (508, 'Wise1', 'Lastname', 'Male', 75, '999-888-7777', 'wise1@example.com', '123 Sage Avenue', '175 cm', '78 kg', 'A+'),
  (509, 'Wise2', 'Lastname', 'Female', 21, '333-444-5555', 'wise2@example.com', '456 Wisdom Circle', '160 cm', '70 kg', 'B+');
  
INSERT INTO `hospitaldbms2`.`patient` (`PatientID`, `FName`, `LName`, `Gender`, `Age`, `ContactNo`, `EmailID`, `Address`, `Height`, `Weight`, `BloodGroup`)
VALUES
  (510, 'Ryan', 'Harris', 'Male', 25, '111-222-3333', 'ryan.harris@example.com', '123 Oak Street', '175 cm', '70 kg', 'O+'),
  (511, 'Sophie', 'Mitchell', 'Female', 22, '444-555-6666', 'sophie.mitchell@example.com', '456 Pine Avenue', '160 cm', '55 kg', 'B-'),
  (512, 'Dylan', 'Woods', 'Male', 40, '777-888-9999', 'dylan.woods@example.com', '789 Cedar Lane', '180 cm', '85 kg', 'A+'),
  (513, 'Emma', 'Stewart', 'Female', 35, '999-888-7777', 'emma.stewart@example.com', '101 Pine Park', '165 cm', '72 kg', 'AB+'),
  (514, 'Ethan', 'Cooper', 'Male', 50, '666-777-8888', 'ethan.cooper@example.com', '234 Elm Avenue', '160 cm', '75 kg', 'A-'),
  (515, 'Ava', 'Robinson', 'Female', 45, '222-333-4444', 'ava.robinson@example.com', '567 Birch Circle', '155 cm', '68 kg', 'B+'),
  (516, 'Tyler', 'Ward', 'Male', 65, '333-444-5555', 'tyler.ward@example.com', '789 Walnut Street', '175 cm', '80 kg', 'O-'),
  (517, 'Grace', 'Fisher', 'Female', 70, '123-456-7890', 'grace.fisher@example.com', '890 Pine Lane', '155 cm', '70 kg', 'AB-'),
  (518, 'Jackson', 'Murray', 'Male', 80, '987-654-3210', 'jackson.murray@example.com', '123 Oak Avenue', '160 cm', '78 kg', 'A+'),
  (519, 'Chloe', 'Reid', 'Female', 73, '555-123-4567', 'chloe.reid@example.com', '456 Maple Circle', '165 cm', '72 kg', 'B+');
  
INSERT INTO `hospitaldbms2`.`patient` (`PatientID`, `FName`, `LName`, `Gender`, `Age`, `ContactNo`, `EmailID`, `Address`, `Height`, `Weight`, `BloodGroup`)
VALUES
  (520, 'Eleanor', 'Clark', 'Female', 50, '111-222-3333', 'eleanor.clark@example.com', '123 Maple Street', '160 cm', '65 kg', 'A+'),
  (521, 'George', 'Evans', 'Male', 55, '444-555-6666', 'george.evans@example.com', '456 Oak Avenue', '170 cm', '75 kg', 'B-'),
  (522, 'Charlotte', 'Turner', 'Female', 65, '777-888-9999', 'charlotte.turner@example.com', '789 Cedar Lane', '155 cm', '70 kg', 'A+'),
  (523, 'Henry', 'Hughes', 'Male', 58, '999-888-7777', 'henry.hughes@example.com', '101 Pine Park', '180 cm', '85 kg', 'AB+'),
  (524, 'Evelyn', 'Wells', 'Female', 72, '666-777-8888', 'evelyn.wells@example.com', '234 Elm Avenue', '155 cm', '68 kg', 'B+'),
  (525, 'Albert', 'Fisher', 'Male', 60, '222-333-4444', 'albert.fisher@example.com', '567 Birch Circle', '160 cm', '75 kg', 'O-'),
  (526, 'Violet', 'Bennett', 'Female', 78, '333-444-5555', 'violet.bennett@example.com', '789 Walnut Street', '165 cm', '72 kg', 'AB-'),
  (527, 'Frank', 'Morrison', 'Male', 80, '123-456-7890', 'frank.morrison@example.com', '890 Pine Lane', '175 cm', '80 kg', 'A-'),
  (528, 'Clara', 'Nicholson', 'Female', 65, '987-654-3210', 'clara.nicholson@example.com', '123 Oak Avenue', '160 cm', '78 kg', 'B+'),
  (529, 'Samuel', 'Lawrence', 'Male', 68, '555-123-4567', 'samuel.lawrence@example.com', '456 Maple Circle', '165 cm', '74 kg', 'A-'),
  (530, 'Mabel', 'Harrison', 'Female', 55, '666-777-8888', 'mabel.harrison@example.com', '789 Pine Street', '170 cm', '68 kg', 'B+'),
  (531, 'Walter', 'Bishop', 'Male', 75, '777-888-9999', 'walter.bishop@example.com', '101 Cedar Avenue', '175 cm', '77 kg', 'A+'),
  (532, 'Edith', 'Dixon', 'Female', 70, '111-222-3333', 'edith.dixon@example.com', '234 Oak Lane', '160 cm', '72 kg', 'O+'),
  (533, 'Oscar', 'Hudson', 'Male', 57, '444-555-6666', 'oscar.hudson@example.com', '456 Pine Circle', '180 cm', '85 kg', 'B-'),
  (534, 'Lillian', 'McCarthy', 'Female', 85, '123-456-7890', 'lillian.mccarthy@example.com', '567 Elm Street', '155 cm', '60 kg', 'A+'),
  (535, 'Hugo', 'Ross', 'Male', 61, '555-123-4567', 'hugo.ross@example.com', '789 Cedar Avenue', '165 cm', '72 kg', 'AB-'),
  (536, 'Eva', 'Graham', 'Female', 80, '987-654-3210', 'eva.graham@example.com', '890 Maple Lane', '160 cm', '68 kg', 'A-'),
  (537, 'Max', 'Ward', 'Male', 72, '333-444-5555', 'max.ward@example.com', '123 Birch Avenue', '175 cm', '80 kg', 'O-'),
  (538, 'Ruby', 'Hartman', 'Female', 58, '777-888-9999', 'ruby.hartman@example.com', '456 Walnut Circle', '155 cm', '70 kg', 'B+'),
  (539, 'Leonard', 'Newton', 'Male', 63, '111-222-3333', 'leonard.newton@example.com', '789 Oak Street', '160 cm', '78 kg', 'A+'),
  (540, 'Grace', 'Beck', 'Female', 75, '444-555-6666', 'grace.beck@example.com', '101 Maple Lane', '165 cm', '72 kg', 'B+');

INSERT INTO `hospitaldbms2`.`patient` (`PatientID`, `FName`, `LName`, `Gender`, `Age`, `ContactNo`, `EmailID`, `Address`, `Height`, `Weight`, `BloodGroup`)
VALUES
  (541, 'Aiden', 'Williams', 'Male', 18, '111-222-3333', 'aiden.williams@example.com', '123 Pine Street', '175 cm', '65 kg', 'O+'),
  (542, 'Sophia', 'Johnson', 'Female', 16, '444-555-6666', 'sophia.johnson@example.com', '456 Cedar Avenue', '160 cm', '55 kg', 'B-'),
  (543, 'Liam', 'Brown', 'Male', 19, '777-888-9999', 'liam.brown@example.com', '789 Maple Lane', '180 cm', '85 kg', 'A+'),
  (544, 'Olivia', 'Smith', 'Female', 17, '999-888-7777', 'olivia.smith@example.com', '101 Oak Park', '165 cm', '72 kg', 'AB+'),
  (545, 'Noah', 'Taylor', 'Male', 16, '666-777-8888', 'noah.taylor@example.com', '234 Birch Circle', '160 cm', '75 kg', 'A-'),
  (546, 'Ava', 'Miller', 'Female', 18, '222-333-4444', 'ava.miller@example.com', '567 Elm Avenue', '155 cm', '68 kg', 'B+'),
  (547, 'Caden', 'Davis', 'Male', 17, '333-444-5555', 'caden.davis@example.com', '789 Cedar Street', '175 cm', '80 kg', 'O-'),
  (548, 'Isabella', 'Martinez', 'Female', 19, '123-456-7890', 'isabella.martinez@example.com', '890 Pine Circle', '155 cm', '70 kg', 'AB-'),
  (549, 'Mason', 'Jones', 'Male', 18, '987-654-3210', 'mason.jones@example.com', '123 Oak Lane', '160 cm', '78 kg', 'A+'),
  (550, 'Emma', 'Garcia', 'Female', 16, '555-123-4567', 'emma.garcia@example.com', '456 Pine Street', '165 cm', '72 kg', 'B+');
  
INSERT INTO `hospitaldbms2`.`patient` (`PatientID`, `FName`, `LName`, `Gender`, `Age`, `ContactNo`, `EmailID`, `Address`, `Height`, `Weight`, `BloodGroup`)
VALUES
  (551, 'Eleanor', 'Baker', 'Female', 55, '111-222-3333', 'eleanor.baker@example.com', '123 Cedar Avenue', '160 cm', '65 kg', 'A+'),
  (552, 'George', 'Henderson', 'Male', 58, '444-555-6666', 'george.henderson@example.com', '456 Oak Street', '170 cm', '75 kg', 'B-'),
  (553, 'Charlotte', 'Collins', 'Female', 65, '777-888-9999', 'charlotte.collins@example.com', '789 Pine Lane', '155 cm', '70 kg', 'A+'),
  (554, 'Henry', 'Simpson', 'Male', 70, '999-888-7777', 'henry.simpson@example.com', '101 Maple Circle', '180 cm', '85 kg', 'AB+'),
  (555, 'Evelyn', 'Harrison', 'Female', 72, '666-777-8888', 'evelyn.harrison@example.com', '234 Elm Lane', '155 cm', '68 kg', 'B+'),
  (556, 'Albert', 'Barnes', 'Male', 75, '222-333-4444', 'albert.barnes@example.com', '567 Pine Circle', '160 cm', '75 kg', 'O-'),
  (557, 'Violet', 'Gibson', 'Female', 78, '333-444-5555', 'violet.gibson@example.com', '789 Cedar Street', '165 cm', '72 kg', 'AB-'),
  (558, 'Frank', 'Wells', 'Male', 80, '123-456-7890', 'frank.wells@example.com', '890 Oak Avenue', '175 cm', '80 kg', 'A-'),
  (559, 'Clara', 'Matthews', 'Female', 68, '987-654-3210', 'clara.matthews@example.com', '123 Maple Lane', '160 cm', '78 kg', 'B+'),
  (560, 'Samuel', 'Hunter', 'Male', 75, '555-123-4567', 'samuel.hunter@example.com', '456 Cedar Circle', '165 cm', '74 kg', 'A-'),
  (561, 'Mabel', 'Watson', 'Female', 72, '666-777-8888', 'mabel.watson@example.com', '789 Elm Street', '170 cm', '68 kg', 'B+'),
  (562, 'Walter', 'Olson', 'Male', 80, '777-888-9999', 'walter.olson@example.com', '101 Pine Lane', '175 cm', '77 kg', 'A+'),
  (563, 'Edith', 'Simmons', 'Female', 78, '111-222-3333', 'edith.simmons@example.com', '234 Cedar Circle', '160 cm', '72 kg', 'O+'),
  (564, 'Oscar', 'Bryant', 'Male', 76, '444-555-6666', 'oscar.bryant@example.com', '456 Oak Lane', '180 cm', '85 kg', 'B-'),
  (565, 'Lillian', 'Carter', 'Female', 85, '123-456-7890', 'lillian.carter@example.com', '567 Maple Street', '155 cm', '60 kg', 'A+'),
  (566, 'Hugo', 'Harvey', 'Male', 61, '555-123-4567', 'hugo.harvey@example.com', '789 Pine Avenue', '165 cm', '72 kg', 'AB-'),
  (567, 'Eva', 'Fletcher', 'Female', 80, '987-654-3210', 'eva.fletcher@example.com', '890 Elm Circle', '160 cm', '68 kg', 'A-'),
  (568, 'Max', 'Ferguson', 'Male', 72, '333-444-5555', 'max.ferguson@example.com', '123 Cedar Street', '175 cm', '80 kg', 'O-'),
  (569, 'Ruby', 'Reynolds', 'Female', 68, '777-888-9999', 'ruby.reynolds@example.com', '456 Oak Circle', '155 cm', '70 kg', 'B+'),
  (570, 'Leonard', 'Newton', 'Male', 63, '111-222-3333', 'leonard.newton@example.com', '789 Pine Lane', '160 cm', '78 kg', 'A+'),
  (571, 'Grace', 'Beck', 'Female', 75, '444-555-6666', 'grace.beck@example.com', '101 Maple Circle', '165 cm', '72 kg', 'B+');

-- Inserting 10 hospital-related dummy data rows into the patientrecord table
INSERT INTO `hospitaldbms2`.`patientrecord` (`PatientRecordID`, `AdmittedOn`, `DischargedOn`, `RoomNumber`, `Disease`, `PatientID`, `EmployeeID`)
VALUES
  (600, '2023-01-01', '2023-01-10', '101', 'Flu', 500, 301),
  (601, '2023-02-01', '2023-02-15', '202', 'Pneumonia', 500, 301),
  (602, '2023-03-01', '2023-03-10', '103', 'Pneumonia', 501, 300),
  (603, '2023-04-01', '2023-04-12', '204', 'Heart Attack', 501, 300),
  (604, '2023-05-01', '2023-05-18', '105', 'Appendicitis', 504, 304),
  (605, '2023-06-01', '2023-06-10', '206', 'Fractured Arm', 505, 305),
  (606, '2023-07-01', '2023-07-05', '107', 'Migraine', 506, 306),
  (607, '2023-08-01', '2023-08-20', '208', 'Kidney Stones', 507, 307),
  (608, '2023-09-01', '2023-09-14', '109', 'Diabetes', 508, 308),
  (609, '2023-10-01', '2023-10-08', '210', 'Hypertension', 509, 309);
  
INSERT INTO `hospitaldbms2`.`patientrecord` (`PatientRecordID`, `AdmittedOn`, `DischargedOn`, `RoomNumber`, `Disease`, `PatientID`, `EmployeeID`)
VALUES
  (610, '2023-11-01', '2023-11-15', '111', 'Arthritis', 551, 300),
  (611, '2023-12-01', '2023-12-10', '212', 'Osteoporosis', 552, 302),
  (612, '2024-01-01', '2024-01-20', '113', 'Rheumatism', 553, 300),
  (613, '2024-02-01', '2024-02-15', '214', 'Stroke', 554, 302),
  (614, '2024-03-01', '2024-03-10', '115', 'Dementia', 555, 300),
  (615, '2024-04-01', '2024-04-12', '216', 'Parkinson’s', 556, 305),
  (616, '2024-05-01', '2024-05-18', '117', 'Alzheimer’s', 557, 301),
  (617, '2024-06-01', '2024-06-10', '218', 'Cancer', 558, 302),
  (618, '2024-07-01', '2024-07-05', '119', 'Hypothyroidism', 559, 305),
  (619, '2024-08-01', '2024-08-20', '220', 'Osteoarthritis', 560, 302),
  (620, '2024-09-01', '2024-09-14', '121', 'COPD', 561, 300),
  (621, '2024-10-01', '2024-10-08', '222', 'Ovarian Cancer', 562, 301),
  (622, '2024-11-01', '2024-11-15', '123', 'Prostate Cancer', 563, 300),
  (623, '2024-12-01', '2024-12-10', '224', 'Dementia', 564, 302),
  (624, '2025-01-01', '2025-01-20', '125', 'Lung Cancer', 565, 300),
  (625, '2025-02-01', '2025-02-15', '226', 'Hypertension', 566, 302),
  (626, '2025-03-01', '2025-03-10', '127', 'Type 2 Diabetes', 567, 309),
  (627, '2025-04-01', '2025-04-12', '228', 'Heart Disease', 568, 302),
  (628, '2025-05-01', '2025-05-18', '129', 'Colon Cancer', 569, 300),
  (629, '2025-06-01', '2025-06-10', '230', 'Rheumatoid Arthritis', 570, 308);

UPDATE hospitaldbms2.patient
SET FName = CASE
        WHEN PatientID = 500 THEN 'John'
        WHEN PatientID = 501 THEN 'Mary'
        WHEN PatientID = 502 THEN 'Robert'
        WHEN PatientID = 503 THEN 'Patricia'
        WHEN PatientID = 504 THEN 'William'
        WHEN PatientID = 505 THEN 'Barbara'
        WHEN PatientID = 506 THEN 'Daniel'
        WHEN PatientID = 507 THEN 'Judith'
        WHEN PatientID = 508 THEN 'Richard'
        WHEN PatientID = 509 THEN 'Emily'
    END,
    LName = CASE
        WHEN PatientID = 500 THEN 'Smith'
        WHEN PatientID = 501 THEN 'Johnson'
        WHEN PatientID = 502 THEN 'Miller'
        WHEN PatientID = 503 THEN 'Davis'
        WHEN PatientID = 504 THEN 'Wilson'
        WHEN PatientID = 505 THEN 'Taylor'
        WHEN PatientID = 506 THEN 'Anderson'
        WHEN PatientID = 507 THEN 'Brown'
        WHEN PatientID = 508 THEN 'White'
        WHEN PatientID = 509 THEN 'Harris'
    END,
    EmailID = CASE
        WHEN PatientID = 500 THEN 'john.smith@example.com'
        WHEN PatientID = 501 THEN 'mary.johnson@example.com'
        WHEN PatientID = 502 THEN 'robert.miller@example.com'
        WHEN PatientID = 503 THEN 'patricia.davis@example.com'
        WHEN PatientID = 504 THEN 'william.wilson@example.com'
        WHEN PatientID = 505 THEN 'barbara.taylor@example.com'
        WHEN PatientID = 506 THEN 'daniel.anderson@example.com'
        WHEN PatientID = 507 THEN 'judith.brown@example.com'
        WHEN PatientID = 508 THEN 'richard.white@example.com'
        WHEN PatientID = 509 THEN 'emily.harris@example.com'
    END
WHERE PatientID IN (500, 501, 502, 503, 504, 505, 506, 507, 508, 509);


-- Inserting 10 hospital-related dummy data rows into the labtest table
INSERT INTO `hospitaldbms2`.`labtest` (`LabTestID`, `TestName`, `MinValue`, `MaxValues`, `Unit`)
VALUES
  (700, 'Blood Pressure', 90.0, 120.0, 'mmHg'),
  (701, 'Cholesterol Level', 150.0, 200.0, 'mg/dL'),
  (702, 'Blood Sugar Level', 70.0, 110.0, 'mg/dL'),
  (703, 'Complete Blood Count', 4.0, 11.0, 'millions/uL'),
  (704, 'Thyroid Stimulating Hormone (TSH)', 0.5, 4.0, 'uIU/mL'),
  (705, 'Hemoglobin A1c', 4.0, 6.0, '%'),
  (706, 'Liver Function Tests', 10.0, 40.0, 'u/L'),
  (707, 'Kidney Function Tests', 0.6, 1.2, 'mg/dL'),
  (708, 'C-Reactive Protein (CRP)', 0.0, 3.0, 'mg/L'),
  (709, 'Prothrombin Time (PT)', 11.0, 14.0, 'seconds');
  
  -- Inserting 10 hospital-related dummy data rows into the report table
INSERT INTO `hospitaldbms2`.`report` (`ReportID`, `ResultValue`, `Comment`, `PatientRecordID`, `LabTestID`)
VALUES
  (800, 110.0, 'Normal', 600, 700),
  (801, 180.0, 'Slightly Elevated', 601, 701),
  (802, 90.0, 'Normal', 602, 702),
  (803, 5.5, 'Within Range', 603, 703),
  (804, 2.0, 'Normal', 602, 704),
  (805, 5.7, 'Slightly Elevated', 605, 705),
  (806, 25.0, 'Normal', 606, 706),
  (807, 1.0, 'Within Range', 600, 707),
  (808, 1.2, 'Normal', 608, 708),
  (809, 13.0, 'Slightly Elevated', 609, 709);
  
INSERT INTO `hospitaldbms2`.`report` (`ReportID`, `ResultValue`, `Comment`, `PatientRecordID`, `LabTestID`)
VALUES
  (810, 110.0, 'Normal', 610, 700),
  (811, 180.0, 'Slightly Elevated', 611, 701),
  (812, 90.0, 'Normal', 612, 702),
  (813, 5.5, 'Within Range', 613, 703),
  (814, 2.0, 'Normal', 614, 704),
  (815, 5.7, 'Slightly Elevated', 615, 705),
  (816, 25.0, 'Normal', 616, 706),
  (817, 1.0, 'Within Range', 617, 707),
  (818, 1.2, 'Normal', 618, 708),
  (819, 13.0, 'Slightly Elevated', 619, 709),
  (820, 110.0, 'Normal', 620, 700),
  (821, 180.0, 'Slightly Elevated', 621, 701),
  (822, 90.0, 'Normal', 622, 702),
  (823, 5.5, 'Within Range', 623, 703),
  (824, 2.0, 'Normal', 624, 704),
  (825, 5.7, 'Slightly Elevated', 625, 705),
  (826, 25.0, 'Normal', 626, 706),
  (827, 1.0, 'Within Range', 627, 707),
  (828, 1.2, 'Normal', 628, 708),
  (829, 13.0, 'Slightly Elevated', 629, 709),
  (830, 110.0, 'Normal', 610, 700),
  (831, 180.0, 'Slightly Elevated', 611, 701),
  (832, 90.0, 'Normal', 612, 702),
  (833, 5.5, 'Within Range', 613, 703),
  (834, 2.0, 'Normal', 614, 704),
  (835, 5.7, 'Slightly Elevated', 615, 705),
  (836, 25.0, 'Normal', 616, 706),
  (837, 1.0, 'Within Range', 617, 707),
  (838, 1.2, 'Normal', 618, 708),
  (839, 13.0, 'Slightly Elevated', 619, 709),
  (840, 110.0, 'Normal', 620, 700),
  (841, 180.0, 'Slightly Elevated', 621, 701),
  (842, 90.0, 'Normal', 622, 702),
  (843, 5.5, 'Within Range', 623, 703),
  (844, 2.0, 'Normal', 624, 704),
  (845, 5.7, 'Slightly Elevated', 625, 705),
  (846, 25.0, 'Normal', 626, 706),
  (847, 1.0, 'Within Range', 627, 707),
  (848, 1.2, 'Normal', 628, 708),
  (849, 13.0, 'Slightly Elevated', 629, 709),
  (850, 110.0, 'Normal', 610, 700);



-- Inserting 10 hospital-related dummy data rows into the patientbill table
INSERT INTO `hospitaldbms2`.`patientbill` (`PatientBillID`, `Amount`, `PaymentMethod`, `PatientRecordID`)
VALUES
  (900, 1500.50, 'Credit Card', 600),
  (901, 2000.75, 'Cash', 601),
  (902, 1200.25, 'Insurance', 602),
  (903, 3000.60, 'Debit Card', 600),
  (904, 1800.90, 'Cash', 604),
  (905, 2500.25, 'Insurance', 605),
  (906, 1200.80, 'Credit Card', 606),
  (907, 2800.45, 'Debit Card', 600),
  (908, 2200.30, 'Cash', 608),
  (909, 3200.50, 'Insurance', 602);
  
INSERT INTO `hospitaldbms2`.`patientbill` (`PatientBillID`, `Amount`, `PaymentMethod`, `PatientRecordID`)
VALUES
  (910, 1500.50, 'Credit Card', 610),
  (911, 2000.75, 'Cash', 611),
  (912, 1200.25, 'Insurance', 612),
  (913, 3000.60, 'Debit Card', 613),
  (914, 1800.90, 'Cash', 614),
  (915, 2500.25, 'Insurance', 615),
  (916, 1200.80, 'Credit Card', 616),
  (917, 2800.45, 'Debit Card', 617),
  (918, 2200.30, 'Cash', 618),
  (919, 3200.50, 'Insurance', 619),
  (920, 1500.50, 'Credit Card', 620),
  (921, 2000.75, 'Cash', 621),
  (922, 1200.25, 'Insurance', 622),
  (923, 3000.60, 'Debit Card', 623),
  (924, 1800.90, 'Cash', 624),
  (925, 2500.25, 'Insurance', 625),
  (926, 1200.80, 'Credit Card', 626),
  (927, 2800.45, 'Debit Card', 627),
  (928, 2200.30, 'Cash', 628),
  (929, 3200.50, 'Insurance', 629),
  (930, 1500.50, 'Credit Card', 610),
  (931, 2000.75, 'Cash', 611),
  (932, 1200.25, 'Insurance', 612),
  (933, 3000.60, 'Debit Card', 613),
  (934, 1800.90, 'Cash', 614),
  (935, 2500.25, 'Insurance', 615),
  (936, 1200.80, 'Credit Card', 616),
  (937, 2800.45, 'Debit Card', 617),
  (938, 2200.30, 'Cash', 618),
  (939, 3200.50, 'Insurance', 619),
  (940, 1500.50, 'Credit Card', 620),
  (941, 2000.75, 'Cash', 621),
  (942, 1200.25, 'Insurance', 622),
  (943, 3000.60, 'Debit Card', 623),
  (944, 1800.90, 'Cash', 624),
  (945, 2500.25, 'Insurance', 625),
  (946, 1200.80, 'Credit Card', 626),
  (947, 2800.45, 'Debit Card', 627),
  (948, 2200.30, 'Cash', 628),
  (949, 3200.50, 'Insurance', 629),
  (950, 1500.50, 'Credit Card', 610);

INSERT INTO `hospitaldbms2`.`patientbill` (`PatientBillID`, `Amount`, `PaymentMethod`, `PatientRecordID`)
VALUES
  (951, 1800.25, 'Insurance', 611),
  (952, 2400.50, 'Insurance', 612),
  (953, 1500.75, 'Insurance', 613),
  (954, 3200.60, 'Insurance', 614),
  (955, 2000.90, 'Insurance', 615),
  (956, 2800.25, 'Insurance', 616),
  (957, 1500.80, 'Insurance', 617),
  (958, 2600.45, 'Insurance', 618),
  (959, 2000.30, 'Insurance', 619),
  (960, 3000.50, 'Insurance', 620);
  
INSERT INTO `hospitaldbms2`.`patientrecord` (`PatientRecordID`, `AdmittedOn`, `DischargedOn`, `RoomNumber`, `Disease`, `PatientID`, `EmployeeID`)
VALUES
  (630, '2024-09-01', '2024-09-10', '301', 'Flu', 502, 301),
  (631, '2024-10-01', '2024-10-15', '302', 'Pneumonia', 503, 302);


INSERT INTO `hospitaldbms2`.`patientrecord` (`PatientRecordID`, `AdmittedOn`, `DischargedOn`, `RoomNumber`, `Disease`, `PatientID`, `EmployeeID`)
VALUES
  (632, '2025-01-15', '2025-02-05', '303', 'Headache', 510, 301),
  (633, '2025-02-15', '2025-03-10', '304', 'Back Pain', 511, 302),
  (634, '2025-03-15', '2025-04-05', '305', 'Gastritis', 512, 303),
  (635, '2025-04-15', '2025-05-10', '306', 'Fever', 513, 304),
  (636, '2025-05-15', '2025-06-05', '307', 'Sprained Ankle', 514, 305),
  (637, '2025-06-15', '2025-07-10', '308', 'Sinusitis', 515, 306),
  (638, '2025-07-15', '2025-08-05', '309', 'Allergies', 516, 307),
  (639, '2025-08-15', '2025-09-10', '310', 'UTI', 517, 308),
  (640, '2025-09-15', '2025-10-05', '311', 'Acid Reflux', 518, 309),
  (641, '2025-10-15', '2025-11-10', '312', 'Arthritis', 519, 301),
  (642, '2025-11-15', '2025-12-05', '313', 'Headache', 520, 302),
  (643, '2025-12-15', '2026-01-10', '314', 'Back Pain', 521, 303),
  (644, '2026-01-15', '2026-02-05', '315', 'Gastritis', 522, 304),
  (645, '2026-02-15', '2026-03-10', '316', 'Fever', 523, 305),
  (646, '2026-03-15', '2026-04-05', '317', 'Sprained Ankle', 524, 306),
  (647, '2026-04-15', '2026-05-10', '318', 'Sinusitis', 525, 307),
  (648, '2026-05-15', '2026-06-05', '319', 'Allergies', 526, 308),
  (649, '2026-06-15', '2026-07-10', '320', 'UTI', 527, 309),
  (650, '2026-07-15', '2026-08-05', '321', 'Acid Reflux', 528, 301),
  (651, '2026-08-15', '2026-09-10', '322', 'Arthritis', 529, 302),
  (652, '2026-09-15', '2026-10-05', '323', 'Headache', 530, 303);

INSERT INTO `hospitaldbms2`.`patientrecord` (`PatientRecordID`, `AdmittedOn`, `DischargedOn`, `RoomNumber`, `Disease`, `PatientID`, `EmployeeID`)
VALUES
  (653, '2026-10-15', '2026-11-05', '324', 'Headache', 531, 301),
  (654, '2026-11-15', '2026-12-10', '325', 'Back Pain', 532, 302),
  (655, '2026-12-15', '2027-01-05', '326', 'Gastritis', 533, 303),
  (656, '2027-01-15', '2027-02-10', '327', 'Fever', 534, 304),
  (657, '2027-02-15', '2027-03-05', '328', 'Sprained Ankle', 535, 305),
  (658, '2027-03-15', '2027-04-10', '329', 'Sinusitis', 536, 306),
  (659, '2027-04-15', '2027-05-05', '330', 'Allergies', 537, 307),
  (660, '2027-05-15', '2027-06-10', '331', 'UTI', 538, 308),
  (661, '2027-06-15', '2027-07-05', '332', 'Acid Reflux', 539, 309),
  (662, '2027-07-15', '2027-08-10', '333', 'Arthritis', 540, 301),
  (663, '2027-08-15', '2027-09-05', '334', 'Headache', 541, 302),
  (664, '2027-09-15', '2027-10-10', '335', 'Back Pain', 542, 303),
  (665, '2027-10-15', '2027-11-05', '336', 'Gastritis', 543, 304),
  (666, '2027-11-15', '2027-12-10', '337', 'Fever', 544, 305),
  (667, '2027-12-15', '2028-01-05', '338', 'Sprained Ankle', 545, 306),
  (668, '2028-01-15', '2028-02-10', '339', 'Sinusitis', 546, 307),
  (669, '2028-02-15', '2028-03-05', '340', 'Allergies', 547, 308),
  (670, '2028-03-15', '2028-04-10', '341', 'UTI', 548, 309),
  (671, '2028-04-15', '2028-05-05', '342', 'Acid Reflux', 549, 301),
  (672, '2028-05-15', '2028-06-10', '343', 'Arthritis', 550, 302);
