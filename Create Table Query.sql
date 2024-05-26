CREATE TABLE `hospitaldbms`.`department` (
  `DepartmentId` INT NOT NULL,
  `DepartmentName` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`DepartmentId`));
  
  CREATE TABLE `hospitaldbms`.`employeerole` (
  `EmpRoleID` INT NOT NULL,
  `RoleDescription` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`EmpRoleID`));
  
CREATE TABLE `hospitaldbms`.`employee` (
  `EmployeeID` INT NOT NULL,
  `FName` VARCHAR(45) NOT NULL,
  `LName` VARCHAR(45) NULL,
  `Gender` VARCHAR(45) NULL,
  `Age` INT NOT NULL,
  `ContactNo` VARCHAR(45) NULL,
  `EmpRoleID` INT NOT NULL,
  PRIMARY KEY (`EmployeeID`),
  CONSTRAINT `fk_EmployeeRole`
    FOREIGN KEY (`EmpRoleID`)
    REFERENCES `hospitaldbms`.`employeerole`(`EmpRoleID`)
	ON DELETE CASCADE
    ON UPDATE CASCADE
);

CREATE TABLE `hospitaldbms`.`employeedepartment` (
	EmployeeDepartmentID INT PRIMARY KEY,
	DepartmentId INT,
    EmployeeID INT,
    CONSTRAINT `fk_DepartmentId`
    FOREIGN KEY (DepartmentId) REFERENCES `hospitaldbms`.`department`(DepartmentId)
	ON DELETE CASCADE
    ON UPDATE CASCADE,
    CONSTRAINT `fk_EmployeeID`
    FOREIGN KEY (EmployeeID) REFERENCES `hospitaldbms`.`employee`(EmployeeID)
	ON DELETE CASCADE
    ON UPDATE CASCADE
);

CREATE TABLE `hospitaldbms`.`patient` (
  `PatientID` INT NOT NULL,
  `FName` VARCHAR(45) NOT NULL,
  `LName` VARCHAR(45) NULL,
  `Gender` VARCHAR(45) NOT NULL,
  `Age` INT NOT NULL,
  `ContactNo` VARCHAR(45) NOT NULL,
  `EmailID` VARCHAR(45) NULL,
  `Address` VARCHAR(45) NOT NULL,
  `Height` VARCHAR(45) NOT NULL,
  `Weight` VARCHAR(45) NULL,
  `BloodGroup` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`PatientID`));

CREATE TABLE `hospitaldbms`.`patientrecord` (
  `PatientRecordID` INT NOT NULL,
  `AdmittedOn` VARCHAR(45) NOT NULL,
  `DischargedOn` VARCHAR(45) NOT NULL,
  `RoomNumber` VARCHAR(45) NOT NULL,
  `Disease` VARCHAR(45) NOT NULL,
  `PatientID` INT NOT NULL,
  `EmployeeID` INT NOT NULL,
  PRIMARY KEY (`PatientRecordID`),
  CONSTRAINT `fk_PatientID`
    FOREIGN KEY (`PatientID`)
    REFERENCES `hospitaldbms`.`patient` (`PatientID`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_EmployeeID1`
    FOREIGN KEY (`EmployeeID`)
    REFERENCES `hospitaldbms`.`employee` (`EmployeeID`)
    ON DELETE CASCADE
    ON UPDATE CASCADE);
    
CREATE TABLE `hospitaldbms`.`labtest` (
  `LabTestID` INT NOT NULL,
  `TestName` VARCHAR(45) NOT NULL,
  `MinValue` FLOAT NOT NULL,
  `MaxValues` FLOAT NOT NULL,
  `Unit` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`LabTestID`));
  
  CREATE TABLE `hospitaldbms`.`report` (
  `ReportID` INT NOT NULL,
  `ResultValue` FLOAT NOT NULL,
  `Comment` VARCHAR(45) NOT NULL,
  `PatientRecordID` INT NOT NULL,
  `LabTestID` INT NOT NULL,
  PRIMARY KEY (`ReportID`),
  CONSTRAINT `fk_PatientRecordID`
    FOREIGN KEY (`PatientRecordID`)
    REFERENCES `hospitaldbms`.`patientrecord` (`PatientRecordID`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_LabTestID`
    FOREIGN KEY (`LabTestID`)
    REFERENCES `hospitaldbms`.`labtest` (`LabTestID`)
    ON DELETE CASCADE
    ON UPDATE CASCADE);
    
CREATE TABLE `hospitaldbms`.`patientbill` (
  `PatientBillID` INT NOT NULL,
  `Amount` FLOAT NOT NULL,
  `PaymentMethod` VARCHAR(45) NOT NULL,
  `PatientRecordID` INT NOT NULL,
  PRIMARY KEY (`PatientBillID`),
  CONSTRAINT `fk_PatientRecordID1`
    FOREIGN KEY (`PatientRecordID`)
    REFERENCES `hospitaldbms`.`patientrecord` (`PatientRecordID`)
    ON DELETE CASCADE
    ON UPDATE CASCADE
    );