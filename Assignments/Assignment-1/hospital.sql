create database hospital;
use hospital;

-- 1. patients table
create table patients (
    patient_id int primary key,
    name varchar(100) not null,
    age int not null,
    contact varchar(10) not null,
    address varchar(255) not null
);

select * from patients;

insert into patients (patient_id, name, age, contact, address) values
(1, 'rahul sharma', 32, '9876543210', 'mumbai, india'),
(2, 'sneha patil', 28, '8765432109', 'pune, india'),
(3, 'arjun mehta', 40, '7654321098', 'delhi, india'),
(4, 'priya singh', 35, '6543210987', 'bangalore, india'),
(5, 'vikas verma', 50, '5432109876', 'kolkata, india');

-- 2. doctors table
create table doctors (
    doctor_id int primary key,
    name varchar(100) not null,
    specialization varchar(100) not null,
    contact varchar(10) not null,
    experience int not null
);

select * from doctors;

insert into doctors (doctor_id, name, specialization, contact, experience) values
(1, 'dr. amit kapoor', 'cardiologist', '9998887776', 10),
(2, 'dr. reema das', 'dermatologist', '8887776665', 8),
(3, 'dr. sanjay gupta', 'orthopedic', '7776665554', 12),
(4, 'dr. anita rai', 'pediatrician', '6665554443', 7),
(5, 'dr. vikas malhotra', 'neurologist', '5554443332', 15);


-- 3. appointments table
create table appointments (
    appointment_id int primary key,
    patient_id int not null,
    doctor_id int not null,
    appointment_date date not null,
    status varchar(50) not null,
    foreign key (patient_id) references patients(patient_id),
    foreign key (doctor_id) references doctors(doctor_id)
);

select * from appointments;

insert into appointments (appointment_id, patient_id, doctor_id, appointment_date, status) values
(1, 1, 3, '2024-04-10', 'confirmed'),
(2, 2, 1, '2024-04-12', 'pending'),
(3, 3, 5, '2024-04-15', 'confirmed'),
(4, 4, 4, '2024-04-18', 'cancelled'),
(5, 5, 2, '2024-04-20', 'confirmed');



-- 4. medicines table
create table medicines (
    medicine_id int primary key,
    name varchar(100) not null,
    manufacturer varchar(100) not null,
    price varchar(100) not null,
    expiry_date date not null
);

select * from medicines;

insert into medicines (medicine_id, name, manufacturer, price, expiry_date) values
(1, 'paracetamol', 'cipla', 50.00, '2025-08-10'),
(2, 'amoxicillin', 'sun pharma', 120.00, '2026-01-15'),
(3, 'ibuprofen', 'ranbaxy', 80.00, '2025-05-20'),
(4, 'cetirizine', 'dr. reddy', 40.00, '2025-11-30'),
(5, 'omeprazole', 'lupin', 90.00, '2026-03-25');

-- 5. bills table
create table bills (
    bill_id int primary key,
    patient_id int not null,
    amount varchar(100) not null,
    payment_mode varchar(50) not null,
    bill_date date not null,
    foreign key (patient_id) references patients(patient_id)
);

select * from bills;

insert into bills (bill_id, patient_id, amount, payment_mode, bill_date) values
(1, 1, 1500.00, 'cash', '2024-04-10'),
(2, 2, 2000.00, 'credit card', '2024-04-12'),
(3, 3, 2500.00, 'upi', '2024-04-15'),
(4, 4, 1800.00, 'debit card', '2024-04-18'),
(5, 5, 3000.00, 'net banking', '2024-04-20');

