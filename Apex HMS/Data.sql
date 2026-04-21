-- =========================================
-- INSERT SAMPLE DATA
-- =========================================

-- Patients
INSERT INTO Patients VALUES (1, 'Ravi Kumar', 25, 'Male');
INSERT INTO Patients VALUES (2, 'Anjali Sharma', 30, 'Female');
INSERT INTO Patients VALUES (3, 'Suresh Reddy', 45, 'Male');

-- Doctors
INSERT INTO Doctors VALUES (1, 'Dr. Rao', 'Cardiology');
INSERT INTO Doctors VALUES (2, 'Dr. Mehta', 'Neurology');
INSERT INTO Doctors VALUES (3, 'Dr. Priya', 'Dermatology');

-- Appointments
INSERT INTO Appointments VALUES (1, 1, 1, DATE '2025-04-01');
INSERT INTO Appointments VALUES (2, 2, 2, DATE '2025-04-02');
INSERT INTO Appointments VALUES (3, 1, 2, DATE '2025-04-05');
INSERT INTO Appointments VALUES (4, 3, 1, DATE '2025-04-10');

-- Treatments
INSERT INTO Treatments VALUES (1, 1, 'Heart Disease', 5000);
INSERT INTO Treatments VALUES (2, 2, 'Migraine', 2000);
INSERT INTO Treatments VALUES (3, 1, 'Blood Pressure', 1500);
INSERT INTO Treatments VALUES (4, 3, 'Skin Allergy', 1000);

COMMIT;