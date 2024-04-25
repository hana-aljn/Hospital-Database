INSERT INTO Patient(Patient_ID, Name, Family_Name, National_ID, Address, Blood_Type, Date_of_Birth, Marital_Status, Is_Alive)
VALUES (18118, 'Rochester', 'Allans', 837893, 'Room 167', 'A', '1990-11-12', 0, 1),
       (19839, 'Barny', 'De La Cote', 225065, 'Apt 704', 'AB', '1992-05-12', 0, 1),
	   (13365, 'Bartholemy', 'Quantrell', 527364, 'Suite 77', 'AB', '2010-02-02', 1, 0),
	   (13957, 'Tildie', 'Chellam', 799761, '8th Floor', 'O', '2015-01-03', 1, 1),
	   (14428, 'Edwin', 'Lambal', 560728, 'Suite 8', 'AB', '1981-08-08', 0, 0),
	   (10933, 'Doy', 'McCutheon', 389746, 'PO Box 552', 'B', '1976-02-06', 0, 1),
	   (11670, 'Hollyanne', 'Sutcliff', 505729, '13th Floor', 'A', '1950-11-24', 0, 0),
	   (16926, 'Camile', 'Blakebrough', 787459, '16th Floor', 'O', '1980-12-31', 1, 0),
	   (13531, 'Desiri', 'Duerden', 338278, '18th Floor', 'A', '1977-01-16', 0, 0),
	   (15640, 'Danny', 'Dittson', 720517, 'PO Box 89116', 'AB', '1982-04-11', 0, 0);


INSERT INTO Contact_Patient(Patient_ID, Num_1, Num_2, Num_3, Email_1, Email_2)
VALUES (18118, '571-160-1111', '126-652-2532', '955-218-4049', 'asagg0@geocities.com', 'smalsher0@businesswire.com'),
       (19839, '973-922-6817', '596-654-4739', '179-750-8528', 'cmargaret1@ox.ac.uk', 'cayrs1@mapquest.com'),
	   (13365, '688-624-8867', '213-946-7201', '906-977-9671', 'graff2@uol.com.br', 'mleipold2@marriott.com'),
	   (13957, '723-880-6360', '974-276-7259', '591-715-2612', 'bbaudinelli3@devhub.com', 'rfrancecione3@cbc.ca'),
	   (14428, '615-567-1718', '515-434-0028', '373-264-9159', 'cvallow4@nbcnews.com', 'lledgeway4@arizona.edu'),
	   (10933, '180-493-3807', '928-667-0224', '395-132-2895', 'canthoine5@shutterfly.com', 'aheavens5@gnu.org'),
	   (11670, '444-905-6804', '599-543-8818', '707-591-4874', 'mlewinton6@macromedia.com', 'gheart6@google.co.uk'),
	   (16926, '346-122-1770', '234-159-0618', '407-815-7610', 'kwittier7@nsw.gov.au', 'jdryden7@barnesandnoble.com'),
	   (13531, '412-312-6356', '561-110-0805', '152-474-9179', 'sgritsunov8@woothemes.com', 'iorrah8@google.co.uk'),
	   (15640, '478-447-3891', '891-962-5438', '238-893-8525', 'asteer9@baidu.com', 'kdumbelton9@sciencedaily.com');


INSERT INTO AllergyHistory (Allergy_ID, Name, Reasons, Treat, Patient_ID)
VALUES (34589, 'Shellfish', 'Food', 'Antihistamines',19839),
       (20686, 'Peanuts', 'Mold', 'LeukotrieneModifiers',18118),
	   (29834, 'Dairy', 'Mold', 'NasalCorticosteroids',10933),
	   (24301, 'Shellfish', 'Other', 'Decongestants',16926),
	   (57417, 'Shellfish', 'Mold', 'NasalCorticosteroids',19839),
	   (72726, 'Dairy', 'Latex', 'Antihistamines',16926),
	   (74957, 'Shellfish', 'Mold', 'LeukotrieneModifiers',13531),
	   (61022, 'Peanuts', 'InsectSting', 'LeukotrieneModifiers',10933),
	   (63399, 'Peanuts', 'Dust', 'LeukotrieneModifiers',15640),
       (50250, 'Shellfish', 'Pollen', 'LeukotrieneModifiers',18118);


INSERT INTO Morgue(Morgue_ID, Capacity)
VALUES (495, 3740),
       (155, 1378),
	   (288, 1022),
       (123, 3683),
	   (212, 3420),
	   (242, 3618),
	   (184, 2096),
	   (328, 1380),
	   (205, 1458),
	   (302, 2209);


INSERT INTO Drawer(Drawer_ID, Morgue_ID, Patient_ID, Availability)
VALUES (278, 495, 18118, 0),
       (119, 155, 19839, 1),
       (103, 288, 13365, 0),
       (498, 123, 13957, 0),
       (199, 212, 14428, 0),
       (114, 242, 10933, 0),
       (215, 184, 11670, 1),
       (486, 328, 16926, 1),
       (269, 205, 13531, 1),
       (237, 302, 15640, 0);


INSERT INTO Insurance(Insurance_ID, Name, Class, Max_Payment, Max_Percentage, Patient_ID)
VALUES (330, 'Nonnah', 2663, 523509, 69, 15640),
       (247, 'Stevie', 2856, 410501, 80, 16926),
	   (370, 'Bendix', 2885, 297199, 27, 10933),
	   (240, 'Luci', 3615, 832902, 66, 13957),
	   (169, 'Charley', 3096, 871251, 84, 19839),
	   (150, 'Bondie', 1527, 840763, 92, 18118),
	   (275, 'Giovanni', 1447, 359236, 89, 13365),
	   (368, 'Cello', 2628, 189717, 10, 14428),
	   (217, 'Mervin', 3599, 810663, 22, 11670),
	   (285, 'Augustin', 1077, 690271, 93, 13531);

INSERT INTO Bill(Bill_ID, Amount, Patient_ID, Insurance_ID, Payment_Method)
VALUES (4690, 881.07, 13365, 285, 'debit_card'),
       (4556, 698.54, 13957, 275, 'google_wallet'),
	   (4576, 698.54, 10933, 285, 'google_wallet'),
	   (3558, 561.12, 15640, 370, 'apple_pay'),
	   (6557, 270.59, 13531, 275, 'google_wallet'),
       (4679, 873.45, 15640, 217, 'credit_card'),
       (6007, 763.48, 18118, 368, 'google_wallet'),
       (5193, 508.97, 16926, 240, 'paypal'),
       (6424, 381.33, 14428, 370, 'debit_card'),
       (3912, 98.59, 11670, 247, 'apple_pay');

INSERT INTO Section(Section_ID, Name, Explanation)
VALUES (6379, 'Radiology', 'Radiology Department'),
       (2501, 'Surgery', 'Psychiatric Ward'),
       (3926, 'Pharmacy', 'Pediatrics Ward'),
       (5996, 'Emergency Room', 'Operating Room'),
       (2224, 'Pediatrics', 'Radiology Department'),
       (6627, 'Pediatrics', 'Emergency Room'),
       (6692, 'Surgery', 'Occupational Therapy'),
       (6165, 'Oncology', 'Emergency Room'),
       (6027, 'Pediatrics', 'Emergency Room'),
       (6229, 'Cardiology', 'Occupational Therapy');

INSERT INTO Room(Room_ID, Class, Size, Availability)
VALUES (5988, 'CCU', 3, 1),
       (6318, 'Surgery', 2, 0),
       (5643, 'ER', 1, 0),
       (5969, 'Surgery', 1, 1),
       (4637, 'ICU', 1, 0),
       (2898, 'Pediatrics', 1, 0),
       (3376, 'ER', 3, 0),
       (2658, 'ICU', 1, 0),
       (3993, 'Surgery', 2, 1),
       (3149, 'Surgery', 3, 0);


INSERT INTO Bed(Bed_ID, Availability, Patient_ID, Room_ID)
VALUES (385, 0, 15640, 5988),
       (323, 1, 11670, 6318),
	   (411, 1, 14428, 5643),
	   (149, 0, 13365, 4637),
	   (419, 1, 19839, 2898),
	   (387, 1, 18118, 3376),
	   (406, 0, 19839, 3993),
	   (362, 0, 14428, 3149),
	   (324, 1, 16926, 5969),
	   (277, 1, 13531, 6318)


INSERT INTO Department(Department_ID, Section_ID, Name, Explanation)
VALUES  (36, 2501, 'Oncology', 'Pediatrics department deals with children''s health-related issues.'),
        (79, 2224, 'Gynecology', 'Gynecology department deals with women''s reproductive system-related issues.'),
        (28, 6627, 'Pediatrics', 'Pediatrics department deals with children''s health-related issues.'),
        (76, 6165, 'Cardiology', 'Cardiology department deals with heart-related issues.'),
        (86, 6027, 'Psychiatry', 'Psychiatry department deals with mental health-related issues.'),
        (20, 6229, 'Pediatrics', 'Pediatrics department deals with children''s health-related issues.'),
        (89, 6379, 'Oncology', 'Oncology department deals with cancer-related issues.'),
        (95, 3926, 'Gynecology', 'Gynecology department deals with women''s reproductive system-related issues.'),
        (25, 5996, 'Pediatrics', 'Pediatrics department deals with children''s health-related issues.'),
        (40, 6692, 'Radiology', 'Radiology department deals with imaging and diagnosis of diseases.');


INSERT INTO Physician(Physician_ID, National_ID, ME_Number, Name, Family_Name, Address, Date_of_Birth, Specialization, Level_of_Education, Experience, Marital_Status, Salary_Base, Department_ID)
VALUES  (90612, 544450, 5615, 'Cassius', 'Frederick', '14 Butternut Terrace', '1979-11-08', 'Endocrinologist', 'Master''s Degree', '13y', 1, 199, 20),
        (37193, 990156, 5411, 'Marten', 'Tabb', '49 La Follette Terrace', '1948-10-09', 'Pediatrician', 'Doctoral Degree', '21y', 1, 212, 89),
		(25377, 820645, 6808, 'Gian', 'Fairhurst', '8040 Northwestern Way', '1992-02-01', 'Psychiatrist', 'Doctoral Degree', '48y', 1, 587, 95),
		(33336, 243835, 1216, 'Mohandis', 'Feldon', '99335 Derek Hill', '1966-03-06', 'Oncologist', 'Master''s Degree', '43y', 0, 629, 76),
		(92374, 819272, 3744, 'Jory', 'Stokell', '3 American Ash Center', '1978-03-04', 'Radiologist', 'Master''s Degree', '16y', 1, 479, 36),
		(40237, 194624, 1126, 'Haskell', 'Heighway', '722 Erie Parkway', '1955-08-11', 'Hematologist', 'Bachelor''s Degree', '15y', 1, 144, 79),
		(51889, 369735, 3412, 'Lilian', 'Varker', '50328 Evergreen Street', '1971-08-02', 'Psychiatrist', 'Doctoral Degree', '10y', 0, 303, 95),
		(89259, 479397, 2324, 'Marlie', 'Hammand', '502 Union Point', '1964-02-20', 'Hematologist', 'Bachelor''s Degree', '34y', 0, 287, 25),
		(22653, 587143, 2414, 'Esra', 'Pattison', '4 Calypso Court', '1958-06-17', 'Neurologist', 'Doctoral Degree', '23y', 1, 250, 40),
		(74223, 362357, 5360, 'Ali', 'Durward', '0885 Steensland Park', '1956-07-09', 'Urologist', 'Master''s Degree', '10y', 1, 318, 86);

INSERT INTO Contact_Physician(Physician_ID, Num_1, Num_2, Num_3, Email_1, Email_2)
VALUES  (90612, '720-130-6943', '303-593-3350', '878-694-9512', 'bmarryatt0@discuz.net', 'dcholdcroft0@altervista.org'),
        (37193, '610-256-2027', '788-706-0670', '796-450-2147', 'kulster1@tmall.com', 'rleuren1@over-blog.com'),
		(25377, '860-844-6294', '124-886-0474', '770-266-5077', 'gconnew2@flickr.com', 'jpaule2@parallels.com'),
		(33336, '645-838-8767', '879-703-4808', '397-975-3715', 'jconybear3@themeforest.net', 'btimmermann3@digg.com'),
		(92374, '927-117-1372', '458-715-7246', '323-598-2488', 'pmunnings4@51.la', 'wcaspell4@youku.com'),
		(40237, '576-488-4587', '323-798-8650', '823-436-6237', 'sfoss5@kickstarter.com', 'blyburn5@uol.com.br'),
		(51889, '746-817-1910', '812-664-1311', '538-741-4423', 'cgunstone6@creativecommons.org', 'jsiflet6@omniture.com'),
		(89259, '547-209-6281', '862-651-2251', '901-895-0583', 'aenser7@ibm.com', 'gclatworthy7@symantec.com'),
		(22653, '627-979-6200', '236-210-4034', '300-112-5708', 'epaule8@trellian.com', 'ypoulney8@cbslocal.com'),
		(74223, '694-425-9734', '869-385-6469', '894-636-1439', 'pwhitney9@blinklist.com', 'cdelascy9@google.pl');


INSERT INTO Nurse(Nurse_ID, National_ID, Name, Family_Name, Section_ID, Address, Date_of_Birth, Level_of_Education, Marital_Status, Salary_Base)
VALUES  (38491, 281700, 'Gwenni', 'Corain', 6379, '34 Anderson Parkway', '1986-05-08', 'Doctoral Degree', 0, 319),
        (34182, 503254, 'Rhoda', 'Saby', 2224, '8 Merrick Terrace', '1959-05-08', 'Bachelor''s Degree', 0, 132),
		(34663, 763206, 'Max', 'Amar', 3926, '99111 Eliot Circle', '1941-07-02', 'Master''s Degree', 0, 899),
		(41374, 392528, 'Jenni', 'Hundey', 2501, '6357 Grim Junction', '1933-05-19', 'Bachelor''s Degree', 0, 596),
		(31685, 125294, 'Lamont', 'Junkin', 6165, '8 Surrey Center', '1973-03-26', 'Doctoral Degree', 1, 306),
		(28396, 755982, 'Ramsey', 'Kubasek', 6027, '02187 Atwood Hill', '1936-05-02', 'Master''s Degree', 0, 609),
		(39777, 614104, 'Loralie', 'Acton', 6229, '711 Scott Junction', '1985-11-26', 'Doctoral Degree', 0, 471),
		(47158, 584241, 'Yvette', 'Oliveto', 5996, '107 Golf Course Junction', '1933-06-27', 'Doctoral Degree', 0, 765),
		(35849, 505134, 'Lanie', 'Bussens', 2501, '04150 Ludington Street', '1954-12-10', 'Master''s Degree', 1, 875),
		(32700, 605319, 'Crin', 'Hatherley', 5996, '9 Oak Valley Place', '1954-11-14', 'Bachelor''s Degree', 1, 350);


INSERT INTO Contact_Nurse(Nurse_ID, Num_1, Num_2, Num_3, Email_1, Email_2)
VALUES  (38491, '636-449-0996', '170-392-7266', '225-371-6143', 'kallett0@ovh.net', 'pjoicey0@sciencedirect.com'),
        (34182, '671-757-0217', '922-997-7871', '919-881-6415', 'igreenham1@ed.gov', 'dmatelyunas1@apache.org'),
        (34663,  '811-712-8670', '153-908-3640', '999-691-4369', 'gjakoviljevic2@miitbeian.gov.cn', 'omcnern2@gmpg.org'),
        (41374, '335-138-8829', '426-498-2791', '752-570-9480', 'rsigge3@ihg.com', 'gdutch3@zimbio.com'),
        (31685, '971-960-5508', '882-893-7533', '291-552-3057', 'oprobetts4@woothemes.com', 'stathacott4@arstechnica.com'),
        (28396, '589-367-2627', '230-472-2323', '941-344-3360', 'ddeath5@example.com', 'rfewlass5@livejournal.com'),
        (39777, '677-553-2516', '369-553-5181', '947-552-9814', 'bvinton6@qq.com', 'bspaduzza6@cpanel.net'),
        (47158, '296-292-1695', '268-599-4437', '878-917-7170', 'gcarneck7@ycombinator.com', 'scalabry7@nps.gov'),
        (35849, '888-871-1844', '585-533-7120', '500-127-6513', 'rsowte8@buzzfeed.com', 'hgownge8@army.mil'),
        (32700, '455-751-7928', '795-514-3958', '997-494-4551', 'cmatusovsky9@posterous.com', 'bredrup9@pen.io');


INSERT INTO Patient_Bed(I_date, O_date, Bed_ID, Patient_ID)
VALUES  ('2021-09-26', '2022-11-23', 323, 15640),
        ('2021-11-30', '2022-07-24', 324, 18118),
        ('2021-06-10', '2021-10-06', 362, 13531),
        ('2021-06-26', '2022-01-07', 406, 19839),
        ('2021-12-11', '2022-09-21', 387, 16926),
        ('2021-12-15', '2022-06-25', 419, 13365),
        ('2021-11-08', '2022-02-05', 149, 11670),
        ('2021-06-07', '2021-12-08', 411, 13957),
        ('2021-12-29', '2022-03-16', 277, 10933),
        ('2022-01-06', '2022-07-29', 385, 14428);


INSERT INTO Receptionist(Receptionist_ID, National_ID, Name, Family_Name, Address, Date_of_Birth, Level_of_Education, Marital_Status, Salary_Base, Patient_ID)
VALUES  (12345, 13579, 'Alexandra', 'Cossington', '0 Pawling Drive', '1992-12-12', 'Bachelor', 1, 10000, 18118),
        (23456, 90123, 'Connor', 'Bertrand', '639 Huxley Point', '1990-01-01', 'Master', 0, 10000, 13365),
        (34567, 89012, 'Silvie', 'Parke', '01 Maywood Plaza', '1996-07-30', 'Bachelor', 1, 10000, 14428),
        (45678, 78901, 'Darsie', 'Roote', '17 Corscot Park', '1984-11-11', 'Master', 1, 10000, 11670),
        (56789, 15732, 'Jaine', 'Barczewski', '48 Tomscot Center', '1984-10-08', 'Master', 1, 10000, 16926),
        (67890, 10284, 'Garrett', 'MacGibbon', '7780 Morning Park', '1966-06-26', 'Bachelor', 0, 10000, 15640),
        (78901, 45678, 'Gaye', 'Ruane', '49 Cordelia Avenue', '1986-10-08', 'Master', 1, 10000, 13531),
        (89012, 34567, 'Korry', 'DElia', '7152 Katie Center', '1936-02-15', 'Master', 1, 10000, 11670),
        (90123, 23456, 'Faustina', 'Chillcot', '6528 Veith Parkway', '1936-02-08', 'Bachelor', 1, 10000, 14428),
        (13579, 12345, 'Niven', 'McElroy', '4 Chive Alley', '1988-12-29','Master', 0, 10000, 13365);


INSERT INTO Contact_Receptionist(Receptionist_ID, Num_1, Num_2, Num_3, Email_1, Email_2)
VALUES  (12345, '922-529-1201', '976-560-5766', '673-997-0590', 'ehenworth0@51.la', 'bmelly0@pinterest.com'),
        (23456, '260-109-6344', '3323919158', '961-615-8841', 'lgrinyer1@purevolume.com', 'lgooday1@soundcloud.com'),
        (34567, '700-589-3416', '410-472-1374', '661-616-7977', 'rprater2@google.com.hk', 'syule2@blinklist.com'),
        (45678, '873-881-8790', '966-938-7223', '180-575-6624', 'bfrascone3@foxnews.com', 'denticknap3@state.tx.us'),
        (56789, '714-172-5537', '583-479-7455', '728-378-2112', 'brouby4@ucoz.com', 'mpaddle4@deliciousdays.com'),
        (67890, '551-383-5568', '257-355-0773', '322-380-8345', 'jnewberry5@desdev.cn', 'abaudouin5@house.gov'),
        (78901, '454-261-4555', '873-606-8089', '249-781-5976', 'npatifield6@g.co', 'pfish6@tamu.edu'),
        (89012, '634-807-0343', '720-710-0187', '581-910-1940', 'chards7@kickstarter.com', 'useine7@ucsd.edu'),
        (90123, '544-144-6160', '857-545-1068', '987-625-1169', 'bquainton8@telegraph.co.uk', 'rdamsell8@alexa.com'),
        (13579, '210-241-8375', '979-783-4498', '923-975-3526', 'jclifforth9@accuweather.com', 'cgeikie9@telegraph.co.uk');

INSERT INTO Record(Record_ID, Nurse_ID, Patient_ID, Record_Time, Record_Date, Breathing_Status, Blood_Pressure, Blood_Oxygen, Vigilance, General_Condition)
VALUES  (1234, 38491, 18118, '08:19', '2023-04-14',  'dangerous', '22222', 64, 'dangerous', NULL),
        (2345, 34182, 19839, '08:22', '2023-04-27', 'bad', '22222', 16, 'normal', NULL),
        (3456, 34663, 19839, '09:58', '2323-05-12',  'normal', '22222', 90, 'normal', NULL),
        (4567, 41374, 19839, '03:30', '2022-09-01', 'normat', '22222', 3, 'normal', NULL),
        (5678, 31685, 16926, '01:37', '2022-11-28', 'dangerous', '22222', 33, 'dangerous', NULL),
        (6789, 28396, 16926, '05:38', '2023-02-09', 'normal', '22222', 17, 'normal', NULL),
        (7890, 39777, 16926, '03:10', '2322-11-15', 'normal', '22222', 88, 'normal', NULL),
        (8901, 47158, 15640, '09:29', '2022-10-19', 'dangerous', '22222', 35, 'dangerous', NULL),
        (1470, 35849, 15640, '01:03', '2023-04-08', 'normal', '22222', 74, 'normal', NULL),
        (9742, 32700, 15640, '07:07', '2023-05-02', 'bad', '22222', 87, 'normal', NULL); 

ALTER TABLE Record ALTER COLUMN Record_Date Date;

INSERT INTO Prescription(Prescription_ID, Patient_ID, Physician_ID, Medicine_ID, Issue_Date)
VALUES  (4716, 18118, 90612, 671, '2022-01-03'),
        (6444, 19839, 37193, 424, '2022-10-02'),
        (2247, 13365, 25377, 545, '2023-03-08'),
        (4884, 13957, 33336, 580, '2022-10-06'),
        (1432, 14428, 92374, 722, '2022-04-21'),
        (4618, 10933, 40237, 869, '2022-11-23'),
        (6351, 11670, 51889, 824, '2022-12-24'),
        (7983, 16926, 89259, 452, '2022-02-21'),
        (7209, 13531, 22653, 945, '2023-04-17'),
        (2475, 15640, 74223, 133, '2023-03-21');


INSERT INTO Medicine(Medicine_ID, Name, Pharmaceutical_Form, Medicinal_Power, Drug_Interactions, Consumption_Instruction)
VALUES  (671, 'Naproxen', 'Syrup', 3, 'Mild interaction', 'Take on an empty stomach'),
        (424, 'Simvastatin', 'Cream', 1, 'Moderate interaction', 'Take with food'),
	    (545, 'Lisinopril', 'Tablet', 1, 'Moderate interaction', 'Take with food'),
		(580, 'Metformin', 'Patch', 3, 'No known interactions', 'Take with food'),
        (722, 'Aspirin', 'Ointment', 2, 'Severe interaction', 'Take on an empty stomach'),
		(869, 'Aspirin', 'Syrup', 3, 'Mild interaction', 'Take on an empty stomach'),
		(824, 'Lisinopril', 'Injection', 1, 'Mild interaction', 'Take with food'),
		(452, 'Ibuprofen', 'Injection', 3, 'Mild interaction', 'Take every 6 hours'),
		(945, 'Acetaminophen', 'Patch', 1, 'No known interactions', 'Take with food'),
		(133, 'Naproxen', 'Injection', 3, 'Mild interaction', 'Do not exceed recommended dose');


INSERT INTO Medicine_prescription(Pharmaceutical_Form, Prescription_ID, Medicine_ID, Medicinal_Power, Explanation)
VALUES  ('Ointment', 4716, 671, 3, 'Insert one suppository rectally every night before bed'),
        ('Gel', 6444, 424, 2, 'Apply a thin layer to affected area twice daily'),
        ('Solution', 2247, 545, 3, 'Insert one suppository rectally every night before bed'),
        ('Capsule', 4884, 580, 2, 'Insert one suppository rectally every night before bed'),
        ('Suspension', 1432, 722, 3, 'Shake well before use and take 2 teaspoons by mouth once daily'),
        ('Suspension', 4618, 869, 2, 'Insert one suppository rectally every night before bed'),
        ('Injection', 6351, 824, 1, 'Take one tablet by mouth every 6 hours'),
        ('Suspension', 7983, 452, 3, 'Apply a thin layer to affected area twice daily'),
        ('Patch', 7209, 945, 1, 'Insert one suppository rectally every night before bed'),
        ('Tablet', 2475, 133, 1, 'Shake well before use and take 2 teaspoons by mouth once daily');

