--Create Table

CREATE TABLE AllergyHistory(Allergy_ID int  NOT NULL,
        Name varchar(40)  NOT NULL,
        Reasons varchar(500)  NOT NULL,
        Treat varchar(500),
		Patient_ID int  NOT NULL,
        PRIMARY KEY (Allergy_ID));

CREATE TABLE Bed(Bed_ID int  NOT NULL,
        Availability bit  NOT NULL,
		Patient_ID int  NOT NULL,
		Room_ID int  NOT NULL,
        PRIMARY KEY (Bed_ID));

CREATE TABLE Bill(Bill_ID int NOT NULL PRIMARY KEY,
        Amount int  NOT NULL,
        Patient_ID int NOT NULL,
		Insurance_ID int NOT NULL,
        Payment_Method varchar(20)  NOT NULL);

CREATE TABLE Contact_Nurse(Nurse_ID int  NOT NULL,
        Num_1 varchar(20),
		Num_2 varchar(20),
        Num_3 varchar(20),
        Email_1 varchar(50),
        Email_2 varchar(50));

CREATE TABLE Contact_Patient(Patient_ID int  NOT NULL,
		Num_1 varchar(20),
		Num_2 varchar(20),
        Num_3 varchar(20),
        Email_1 varchar(50),
        Email_2 varchar(50));

CREATE TABLE Contact_Physician(Physician_ID int  NOT NULL,
		Num_1 varchar(20),
		Num_2 varchar(20),
        Num_3 varchar(20),
        Email_1 varchar(50),
        Email_2 varchar(50));

CREATE TABLE Contact_Receptionist(Receptionist_ID int  NOT NULL,
		Num_1 varchar(20),
		Num_2 varchar(20),
        Num_3 varchar(20),
        Email_1 varchar(50),
        Email_2 varchar(50));

CREATE TABLE Department(Department_ID int  NOT NULL,
		Section_ID int  NOT NULL,
		Name varchar(20)  NOT NULL,
        Explanation varchar(500),
        PRIMARY KEY (Department_ID));


CREATE TABLE Drawer(Drawer_ID int  NOT NULL,
		Morgue_ID int  NOT NULL,
		Patient_ID int ,
		Availability bit  NOT NULL,
        PRIMARY KEY (Drawer_ID));



CREATE TABLE Insurance(Insurance_ID int  NOT NULL,
		Name varchar(20)  NOT NULL,
        Class varchar(20)  NOT NULL,
        Max_Payment float  NOT NULL,
        Max_Percentage float  NOT NULL,
		Patient_ID int  NOT NULL,
        PRIMARY KEY (Insurance_ID));


CREATE TABLE Medicine(Medicine_ID int  NOT NULL,
		Name varchar(50)  NOT NULL,
        Pharmaceutical_Form varchar(20)  NOT NULL,
        Medicinal_Power int  NOT NULL,
        Drug_Interactions varchar(500)  NOT NULL,
        Consumption_Instruction varchar(500)  NOT NULL,
        PRIMARY KEY (Medicine_ID));

CREATE TABLE Medicine_prescription(Pharmaceutical_Form varchar(20)  NOT NULL,
        Prescription_ID int  NOT NULL,
		Medicine_ID int  NOT NULL,
        Medicinal_Power int  NOT NULL,
        Explanation varchar(500)  NOT NULL);

CREATE TABLE Morgue(Morgue_ID int  NOT NULL,
        Capacity int  NOT NULL,
        PRIMARY KEY (Morgue_ID));

CREATE TABLE Nurse(Nurse_ID int  NOT NULL,
        National_ID int  NOT NULL,
        Name varchar(20)  NOT NULL,
        Family_Name varchar(20)  NOT NULL,
		Section_ID int  NOT NULL,
        Address varchar(200)  NOT NULL,
        Date_of_Birth date  NOT NULL,
        Level_of_Education varchar(20)  NOT NULL,
        Marital_Status bit,
        Salary_Base float  NOT NULL,
        PRIMARY KEY (Nurse_ID));

CREATE TABLE Patient(Patient_ID int  NOT NULL,
        Name varchar(20)  NOT NULL,
        Family_Name varchar(30)  NOT NULL,
        National_ID int  NOT NULL,
        Address varchar(200)  NOT NULL,
        Blood_Type varchar(3)  NOT NULL,
        Date_of_Birth date  NOT NULL,
        Marital_Status bit,
        Is_Alive bit  NOT NULL,
        PRIMARY KEY (Patient_ID));

CREATE TABLE Patient_Bed(I_date date  NOT NULL,
        O_date date  NOT NULL,
		Bed_ID int  NOT NULL,
		Patient_ID int  NOT NULL);

CREATE TABLE Physician(Physician_ID int  NOT NULL,
        National_ID int  NOT NULL,
        ME_Number int  NOT NULL,
        Name varchar(20)  NOT NULL,
        Family_Name varchar(20)  NOT NULL,
        Address varchar(200)  NOT NULL,
        Date_of_Birth date  NOT NULL,
        Specialization varchar(40)  NOT NULL,
        Level_of_Education varchar(20)  NOT NULL,
        Experience varchar(500),
        Marital_Status bit,
        Salary_Base float  NOT NULL,
		Department_ID int  NOT NULL,
        PRIMARY KEY (Physician_ID));

CREATE TABLE Prescription(Prescription_ID int  NOT NULL,
        Patient_ID int  NOT NULL,
		Physician_ID int  NOT NULL,
		Medicine_ID int  NOT NULL,
        Issue_Date date  NOT NULL,
        PRIMARY KEY (Prescription_ID));

CREATE TABLE Receptionist(Receptionist_ID int  NOT NULL,
        National_ID int  NOT NULL,
        Name varchar(20)  NOT NULL,
        Family_Name varchar(20)  NOT NULL,
        Address varchar(200)  NOT NULL,
        Date_of_Birth date  NOT NULL,
        Level_of_Education varchar(20)  NOT NULL,
        Marital_Status bit,
        Salary_Base float  NOT NULL,
		Patient_ID int  NOT NULL,
        PRIMARY KEY (Receptionist_ID));

CREATE TABLE Record(Record_ID int NOT NULL PRIMARY KEY,
        Nurse_ID int  NOT NULL,
		Patient_ID int  NOT NULL,
        Record_Time time  NOT NULL,
        Record_Date date  NOT NULL,
        Breathing_Status varchar(20),
        Blood_Pressure varchar(10),
        Blood_Oxygen float,
        Vigilance varchar(20),
        General_Condition varchar(100));

CREATE TABLE Room(Room_ID int  NOT NULL,
        Class varchar(20)  NOT NULL,
        Size int,
        Availability bit,
        PRIMARY KEY (Room_ID));

CREATE TABLE Section(Section_ID int  NOT NULL,
        Name varchar(20)  NOT NULL,
        Explanation varchar(500),
        PRIMARY KEY (Section_ID));



		-----------------------------------------------------------------------------------------------------------
--Set Foreign key

ALTER TABLE AllergyHistory
ADD FOREIGN KEY (Patient_ID) REFERENCES Patient(Patient_ID);

ALTER TABLE Bed
ADD FOREIGN KEY (Patient_ID) REFERENCES Patient(Patient_ID);

ALTER TABLE Bed
ADD FOREIGN KEY (Room_ID) REFERENCES Room(Room_ID);

ALTER TABLE Bill
ADD FOREIGN KEY (Patient_ID) REFERENCES Patient(Patient_ID);

ALTER TABLE Bill
ADD FOREIGN KEY (Insurance_ID) REFERENCES Insurance(Insurance_ID);

ALTER TABLE Contact_Nurse
ADD FOREIGN KEY (Nurse_ID) REFERENCES Nurse(Nurse_ID);

ALTER TABLE Contact_Patient
ADD FOREIGN KEY (Patient_ID) REFERENCES Patient(Patient_ID);

ALTER TABLE Contact_Physician
ADD FOREIGN KEY (Physician_ID) REFERENCES Physician(Physician_ID);

ALTER TABLE Contact_Receptionist
ADD FOREIGN KEY (Receptionist_ID) REFERENCES Receptionist(Receptionist_ID);

ALTER TABLE Physician
ADD FOREIGN KEY (Department_ID) REFERENCES Department(Department_ID);

ALTER TABLE Department
ADD FOREIGN KEY (Section_ID) REFERENCES Section(Section_ID);

ALTER TABLE Drawer
ADD FOREIGN KEY (Patient_ID) REFERENCES Patient(Patient_ID);

ALTER TABLE Drawer
ADD FOREIGN KEY (Morgue_ID) REFERENCES Morgue(Morgue_ID);

ALTER TABLE Insurance
ADD FOREIGN KEY (Patient_ID) REFERENCES Patient(Patient_ID);

ALTER TABLE Medicine_prescription
ADD FOREIGN KEY (Prescription_ID) REFERENCES Prescription(Prescription_ID);

ALTER TABLE Medicine_prescription
ADD FOREIGN KEY (Medicine_ID) REFERENCES Medicine(Medicine_ID);

ALTER TABLE Nurse
ADD FOREIGN KEY (Section_ID) REFERENCES Section(Section_ID);

ALTER TABLE Patient_bed
ADD FOREIGN KEY (Bed_ID) REFERENCES Bed(Bed_ID);

ALTER TABLE Patient_bed
ADD FOREIGN KEY (Patient_ID) REFERENCES Patient(Patient_ID);

ALTER TABLE Prescription
ADD FOREIGN KEY (Patient_ID) REFERENCES Patient(Patient_ID);

ALTER TABLE Prescription
ADD FOREIGN KEY (Physician_ID) REFERENCES Physician(Physician_ID);

ALTER TABLE Prescription
ADD FOREIGN KEY (Medicine_ID) REFERENCES Medicine(Medicine_ID);

ALTER TABLE Receptionist
ADD FOREIGN KEY (Patient_ID) REFERENCES Patient(Patient_ID);

ALTER TABLE Record
ADD FOREIGN KEY (Nurse_ID) REFERENCES Nurse(Nurse_ID);

ALTER TABLE Record
ADD FOREIGN KEY (Patient_ID) REFERENCES Patient(Patient_ID);
