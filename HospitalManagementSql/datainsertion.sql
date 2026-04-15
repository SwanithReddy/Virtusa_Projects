use hospitalmanagement;

-- Insert into Patients
insert into Patient(name,age,gender)values
('Swanith Reddy',22,'Male'),
('Sneha Reddy',24,'Female'),
('Arjun Reddy',35,'Male'),
('Thanush Reddy',29,'Male'),
('Kiran',38,'Male'),
('Aruna',22,'Female'),
('Vikram',50,'Male'),
('Kumari',27,'Female');

-- Insert into Doctors
insert into Doctor(name,specialisation)values
('Dr.Prasad','Cardiology'),
('Dr.Shilpa','Dermatology'),
('Dr.Umapathi','Orthopedics'),
('Dr.Srikanth','General Medicine');

-- Insert into Appointments
insert into Appointments(patientid,doctorid,date)values
(1,4,'2026-01-10'),
(2,2,'2026-01-12'),
(3,1,'2026-01-15'),
(4,4,'2026-01-18'),
(5,3,'2026-02-02'),
(1,4,'2026-02-05'),
(6,2,'2026-02-07'),
(7,1,'2026-02-10'),
(8,4,'2026-02-14'),
(2,4,'2026-03-01'),
(3,1,'2026-03-03'),
(4,2,'2026-03-05'),
(5,3,'2026-03-08'),
(6,4,'2026-03-10'),
(1,1,'2026-03-15');

-- Insert into Treatments
insert into treatments(patientid,diagnosis,cost,treatmentdate)values
(1,'Fever',1500.00,'2025-01-10'),
(2,'Skin Allergy',2000.00,'2025-01-12'),
(3,'Heart Checkup',5000.00,'2025-01-15'),
(4,'Cold',1200.00,'2025-01-18'),
(5,'Fracture',7000.00,'2025-02-02'),
(1,'Fever',1600.00,'2025-02-05'),
(6,'Skin Allergy',2100.00,'2025-02-07'),
(7,'BP Checkup',3000.00,'2025-02-10'),
(8,'Cold',1300.00,'2025-02-14'),
(2,'Fever',1700.00,'2025-03-01'),
(3,'Heart Checkup',5500.00,'2025-03-03'),
(4,'Skin Allergy',2200.00,'2025-03-05'),
(5,'Back Pain',3500.00,'2025-03-08'),
(6,'Cold',1400.00,'2025-03-10'),
(1,'Heart Checkup',6000.00,'2025-03-15');