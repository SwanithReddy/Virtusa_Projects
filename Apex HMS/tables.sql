-- Patients Table
CREATE TABLE Patients (
    patient_id NUMBER PRIMARY KEY,
    name VARCHAR2(100) NOT NULL,
    age NUMBER CHECK (age > 0),
    gender VARCHAR2(10)
);

-- Doctors Table
CREATE TABLE Doctors (
    doctor_id NUMBER PRIMARY KEY,
    name VARCHAR2(100) NOT NULL,
    specialization VARCHAR2(100)
);

-- Appointments Table
CREATE TABLE Appointments (
    appointment_id NUMBER PRIMARY KEY,
    patient_id NUMBER,
    doctor_id NUMBER,
    appointment_date DATE,
    CONSTRAINT fk_patient
        FOREIGN KEY (patient_id)
        REFERENCES Patients(patient_id),
    CONSTRAINT fk_doctor
        FOREIGN KEY (doctor_id)
        REFERENCES Doctors(doctor_id)
);

-- Treatments Table
CREATE TABLE Treatments (
    treatment_id NUMBER PRIMARY KEY,
    patient_id NUMBER,
    diagnosis VARCHAR2(200),
    cost NUMBER CHECK (cost >= 0),
    CONSTRAINT fk_treatment_patient
        FOREIGN KEY (patient_id)
        REFERENCES Patients(patient_id)
);