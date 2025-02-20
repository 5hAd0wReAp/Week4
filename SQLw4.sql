select * from cpt.primary;

Create table cpt.students (
Id serial,
first_name text,
last_name text
);

Insert into cpt.students 
(first_name,last_name)
SELECT first_name, last_name FROM cpt.primary;

select * from cpt.students;

CREATE TABLE cpt.addresses(
id serial,
student_id bigint,
address text
);

INSERT INTO cpt.addresses
(student_id, address)
SELECT
    id,
    unnest(string_to_array(addresses, '|')) AS split_value
FROM
    cpt.primary;

CREATE TABLE cpt.emails(
id serial,
student_id bigint,
emails text
);

INSERT INTO cpt.emails
(student_id, emails)
SELECT
    id,
    unnest(string_to_array(emails, '|')) AS split_value
FROM
    cpt.primary;

CREATE TABLE cpt.classes(
id serial,
student_id bigint,
classes text
);

INSERT INTO cpt.classes
(student_id, classes)
SELECT
    id,
    unnest(string_to_array(classes, '|')) AS split_value
FROM
    cpt.primary;