-- SQLite

-- Read
-- SELECT column_name FROM table_name;
-- selecting specific column
-- SELECT first_name, last_name FROM doctors;

-- reading all of the info
-- SELECT * FROM doctors;

-- filtering
-- SELECT * FROM doctors
-- WHERE column_name = 'value'
-- SELECT * FROM doctors
-- WHERE specialty = 'Dermatology';
-- SELECT * FROM doctors
-- WHERE age > 50;
-- SELECT * FROM doctors
-- WHERE age > 50
-- OR first_name = 'Kenji';
-- SELECT * FROM doctors
-- WHERE specialty LIKE '%surgery%';

-- SELECT * FROM doctors
-- ORDER BY column_name ASC;
-- SELECT * FROM doctors
-- WHERE specialty LIKE '%surgery%'
-- ORDER BY last_name DESC;

-- Aggregate Functions -> collection of doctors
-- COUNT()
-- AVG()
-- SUM()
-- MAX()
-- MIN()
-- ROUND(x, num)
-- SELECT COUNT(*) FROM doctors;
-- SELECT MIN(age) FROM doctors;
-- SELECT * FROM doctors;
-- SELECT COUNT(*) c, specialty FROM doctors
-- GROUP BY specialty;


-- SELECT * FROM doctors;

-- Joining tables
-- SELECT * FROM table_name
-- JOIN other_table_name ON table.primary_key = other_table.foreign_key

-- Read all the appointments with doctors infos
-- SELECT * FROM appointments
-- JOIN doctors ON doctors.id = appointments.doctor_id;

-- Read all patients first & last names along with their appointment dates
-- SELECT patients.first_name, patients.last_name, appointments.occurs_on
-- FROM patients
-- JOIN appointments ON patients.id = appointments.patient_id;


-- Read Ryota's appointments dates along with his patients first name & last name
-- SELECT patients.first_name, patients.last_name, appointments.occurs_on
-- FROM patients
-- JOIN appointments ON patients.id = appointments.patient_id
-- JOIN doctors ON doctors.id = appointments.doctor_id
-- WHERE doctors.first_name = 'Raphael';


-- Create -> INSERT INTO
-- INSERT INTO table_name (column_name, column_name)
-- VALUES (value_for_column_one, value_for_column_two)


-- INSERT INTO doctors (first_name, last_name, specialty)
-- VALUES ('Doug', 'Y', 'Generalist');


-- UPDATE table_name
-- SET column_name = value
-- WHERE id = 1;


-- UPDATE doctors
-- SET age = 20, last_name = 'Yama'
-- WHERE id = 8;

-- DELETE FROM table_name WHERE id = 2;

-- DELETE FROM doctors WHERE id = 7;


-- SELECT * FROM doctors;

-- https://www.airbnb.com/rooms/1194121825390443254

-- SELECT * FROM rooms
-- WHERE id = 1194121825390443254;
