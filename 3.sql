

SELECT * FROM cpt.students;

CREATE TABLE cpt.emails (
first_email VARCHAR(100),
second_email VARCHAR(100)
);

ALTER TABLE cpt.students DROP COLUMN emails

ALTER TABLE cpt.students ADD FOREIGN KEY (emails) REFERENCES cpt.emails(first_email, second_email);

CREATE TABLE cpt.addresses(
primary_address VARCHAR(100),
secondary_address VARCHAR(100)
);

ALTER TABLE cpt.students DROP COLUMN addresses

ALTER TABLE cpt.students ADD FOREIGN KEY (addresses) REFERENCES cpt.addresses(primary_address, secondary_address);

CREATE TABLE cpt.classes(
class1 VARCHAR(50),
class2 VARCHAR(50)
);

ALTER TABLE cpt.students DROP COLUMN classes

ALTER TABLE cpt.students ADD FOREIGN KEY (classes) REFERENCES cpt.addresses(class1, class2);