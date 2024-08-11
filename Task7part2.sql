CREATE TABLE hospital (
  H_id INTEGER PRIMARY KEY,
  H_name varchar(20),
  H_city varchar(20)
);

select * from hospital

INSERT INTO hospital VALUES (1, 'GGV','Mumbai');
INSERT INTO hospital VALUES (2, 'DEV','Delhi');
INSERT INTO hospital VALUES (3, 'MDK','Chennai');
INSERT INTO hospital VALUES (4, 'SHF','Salem');

select * from hospital

CREATE TABLE patient (
  H_id INTEGER PRIMARY KEY,
  H_name varchar(20),
  H_city varchar(20)
);

select * from patient

INSERT INTO patient VALUES (1, 'Sadik','Mumbai');
INSERT INTO patient VALUES (2, 'Randeep','Delhi');

select * from patient

CREATE TABLE medicalrecord (
  record_id INTEGER PRIMARY KEY,
  Date_of_info Date,
  problem varchar(20)
);

select * from medicalrecord

INSERT INTO medicalrecord VALUES (1, '20-4-2023','Appendix');
INSERT INTO medicalrecord VALUES (2, '26-3-2023','Kidney Stone');

select * from medicalrecord

CREATE TABLE Doctor (
  doc_id INTEGER PRIMARY KEY,
  doc_name varchar(20),
  salary INTEGER,
  qualification varchar(20)
);

select * from Doctor

INSERT INTO Doctor VALUES (1, 'Hardik','100000','Cardiac Surgeon');
INSERT INTO Doctor VALUES (2, 'Shradha','75000','Neurosurgeon');
INSERT INTO Doctor VALUES (3, 'Madhu','85000','Urologist');
INSERT INTO Doctor VALUES (4, 'Raval','95000','Ayush doctor');

select * from Doctor

#INNER JOIN EXAMPLE

	
SELECT h.H_id,h.H_name,d.doc_name,d.qualification
FROM hospital h
INNER JOIN Doctor d
ON h.H_id = d.doc_id;




