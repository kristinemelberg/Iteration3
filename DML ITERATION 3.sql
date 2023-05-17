# FOR TABLE "Patient"
#INSERT INTO Patient VALUES ('888888888', 'Mathias', 'Knudsen', 'Sommerstedgade', '2000-11-05', 'Dr. Hemicke', 'Single', 76, 175);
UPDATE Patient SET CPR = '8888888888' WHERE CPR = '888888888';
#INSERT INTO Patient VALUES ('1111111111', 'Kathrine', 'Hemicke', 'Øresundsvej', '2000-03-05', 'Dr. Melberg', 'Single', 65, 172);
#INSERT INTO Patient VALUES ('2222222222', 'Karla', 'Egeberg', 'Sommerstedgade', '2000-02-23', 'Dr. Hansen', 'Married', 62, 170);
#INSERT INTO Patient VALUES ('1234567890', 'Kristine', 'Melberg', 'Torvet 9', '2000-12-05', 'Dr. Egeberg', 'Single', 65, 170);
UPDATE Patient SET MaritalStatus = 'Married' WHERE CPR = '1111111111';
DELETE FROM Patient WHERE CPR = '8888888888';
SELECT * FROM Patient;

# FOR TABLE "Healthcare Professional"
#INSERT INTO `Healthcare Professional` VALUES (123, 'Kristine', 'Melberg', 'Midwife', 'Maternity ward', 'Fulltime', '234', 'Ken Adams');
UPDATE `Healthcare Professional` SET `Work type`= 'Part time' WHERE `Healthcare ID` = 123;
SELECT * FROM `Healthcare Professional`;

# FOR TABLE GP_Secretary 
#INSERT INTO GP_Secretary VALUES (123, 'Kathrine', 'Hemicke', 'Maternity ward', '456', 'Ken Jones', 'Fulltime');
SELECT * FROM GP_Secretary;

# FOR TABLE Mailbox
#INSERT INTO Mailbox VALUES (444, 'Homebirth', '1', '2', 'I would like to give birth at home, can you please tell me what I need to know about this?', '1111111111', 123);
SELECT * FROM Mailbox;

# FOR TABLE "Diagnostic Tests"
#INSERT INTO `Diagnostic Tests` VALUES (89, 387.7, 1, 2, 'Negative', 'Negative', 'Negative', '...', '...', '...', '1111111111', 123);
ALTER TABLE `Diagnostic Tests`MODIFY COLUMN AB0 VARCHAR(10);
ALTER TABLE `Diagnostic Tests` MODIFY COLUMN RhD VARCHAR(10);  
UPDATE `Diagnostic Tests` SET AB0 = 'A' WHERE `Test ID` = 89;
UPDATE `Diagnostic Tests` SET RhD = 'Rh+' WHERE `Test ID`= 89;
SELECT RhD FROM `Diagnostic Tests`;

# FOR TABLE Appointments
ALTER TABLE Appointments MODIFY COLUMN Time Time;
#INSERT INTO Appointments VALUES (9, 123, '2023-05-14', '09:30:00', 'Hvidovre Hospital', 'Medicine', 'Consultation', 'Maternity ward', 123);
#INSERT INTO Appointments VALUES (11, 123, '2023-05-14', '10:30:00', 'Hvidovre Hospital', 'Medicine', 'Consultation', 'Maternity ward', 123);
#ALTER TABLE Appointments ADD COLUMN Patient_CPR VARCHAR(10);
#UPDATE Appointments SET Patient_CPR = '1111111111' WHERE `Appointment ID`= 5 ;
#INSERT INTO Appointments VALUES (5, 123, '2023-05-28', '12:30:00', 'Hvidovre Hospital', 'Medicine', 'Consultation', 'Maternity ward', 123, '1111111111');

SET SQL_SAFE_UPDATES = 0; 
DELETE FROM Appointments WHERE `Appointment ID` = 9;
SELECT * FROM Appointments