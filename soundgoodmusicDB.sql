
drop table if exists payment cascade;
CREATE TABLE payment (
 payment_id VARCHAR(20) NOT NULL,
 student_id VARCHAR(20) NOT NULL,
 amount VARCHAR(20) NOT NULL,
 request_payment_time TIMESTAMP(0) NOT NULL,
 payment_due TIMESTAMP(0) NOT NULL,
 discount VARCHAR(3) NOT NULL
);

ALTER TABLE payment ADD CONSTRAINT PK_payment PRIMARY KEY (payment_id);




drop table if exists person cascade;
CREATE TABLE person (
 person_id VARCHAR(20) NOT NULL,
 first_name VARCHAR(20) ,
 last_name VARCHAR(20) ,
 person_number VARCHAR(12) ,
 age VARCHAR(20) NOT NULL,
 phone_number VARCHAR(20),
 city VARCHAR(20),
 street VARCHAR(20),
 zip VARCHAR(20)
);

ALTER TABLE person ADD CONSTRAINT PK_person PRIMARY KEY (person_id);

drop table if exists price cascade;
CREATE TABLE price (
 price_id VARCHAR(20) NOT NULL,
 amount VARCHAR(20),
 skill VARCHAR(20)
);

ALTER TABLE price ADD CONSTRAINT PK_price PRIMARY KEY (price_id);





drop table if exists applay cascade;
CREATE TABLE applay (
 app_id VARCHAR(20) NOT NULL,
 person_id VARCHAR(20) NOT NULL,
 email VARCHAR(55) NOT NULL,
 app_text VARCHAR(500) NOT NULL,
 student_id VARCHAR(20),
 app_accept VARCHAR(3) NOT NULL
);

ALTER TABLE applay ADD CONSTRAINT PK_applay PRIMARY KEY (app_id,person_id);



drop table if exists instructor cascade;
CREATE TABLE instructor (
 instructor_id VARCHAR(20) NOT NULL,
 email VARCHAR(55) NOT NULL,
 person_id VARCHAR(20) NOT NULL
);

ALTER TABLE instructor ADD CONSTRAINT PK_instructor PRIMARY KEY (instructor_id);



drop table if exists lesson cascade;
CREATE TABLE lesson (
 lesson_id VARCHAR(20) NOT NULL,
 room VARCHAR(20) NOT NULL,
 time_lesson TIMESTAMP(0) NOT NULL,
 instrument VARCHAR(100),
 instructor_id_0 VARCHAR(20) NOT NULL,
 price_id VARCHAR(20) NOT NULL,
 lesson_type VARCHAR(100),
 max_cap VARCHAR(100),
 min_cap VARCHAR(100),
 current_s VARCHAR(100)
);

ALTER TABLE lesson ADD CONSTRAINT PK_lesson PRIMARY KEY (lesson_id);

drop table if exists parent cascade;
CREATE TABLE parent (
 parent_id VARCHAR(20) NOT NULL,
 first_name VARCHAR(20),
 last_name VARCHAR(20),
 person_id VARCHAR(20) NOT NULL
);

ALTER TABLE parent ADD CONSTRAINT PK_parent PRIMARY KEY (parent_id);


drop table if exists salary cascade;
CREATE TABLE salary (
 salary_id VARCHAR(20) NOT NULL,
 amount VARCHAR(20) NOT NULL,
 salary_paid_date TIMESTAMP(0) NOT NULL,
 instructor_id_0 VARCHAR(20) NOT NULL
);

ALTER TABLE salary ADD CONSTRAINT PK_salary PRIMARY KEY (salary_id);




drop table if exists student cascade;
CREATE TABLE student (
 student_id VARCHAR(20) NOT NULL,
 skill VARCHAR(15) ,
 email VARCHAR(55) ,
 app_id VARCHAR(20) ,
 person_id VARCHAR(20),
 parent_id VARCHAR(20),
 lesson_id VARCHAR(20)
);

ALTER TABLE student ADD CONSTRAINT PK_student PRIMARY KEY (student_id);

drop table if exists visited_lesson cascade;
CREATE TABLE visited_lesson (
 visited_lesson_id VARCHAR(20) NOT NULL,
 student_id VARCHAR(20) NOT NULL,
 lesson_id VARCHAR(20)
);

ALTER TABLE visited_lesson ADD CONSTRAINT PK_visited_lesson PRIMARY KEY (visited_lesson_id);




drop table if exists instrument_rent cascade;
CREATE TABLE instrument_rent (
 instrument_id VARCHAR(20) ,
 instrument_name VARCHAR(20) ,
 start_date_rent TIMESTAMP(0) ,
 return_date TIMESTAMP(0) ,
 price_id VARCHAR(20) ,
 student_id_0 VARCHAR(20),
 brand VARCHAR (20),
 is_rented VARCHAR(20),
 is_terminated VARCHAR(20)
);

ALTER TABLE instrument_rent ADD CONSTRAINT PK_instrument_rent PRIMARY KEY (instrument_id);



drop table if exists recepit_lesson cascade;
CREATE TABLE recepit_lesson (
 recepit_lesson_id VARCHAR(20) NOT NULL,
 receipt_text VARCHAR(20) NOT NULL,
 time_receipt TIMESTAMP(0) NOT NULL,
 price_id VARCHAR(20) NOT NULL,
 type_of_lesson VARCHAR(30) NOT NULL,
 skill_level VARCHAR(15) NOT NULL,
 number_of_students VARCHAR(20),
 visited_lesson_id VARCHAR(20) NOT NULL
);

ALTER TABLE recepit_lesson ADD CONSTRAINT PK_recepit_lesson PRIMARY KEY (recepit_lesson_id);

drop table if exists recepit_rent cascade;
CREATE TABLE recepit_rent (
 recepit_rent_id VARCHAR(20),
 instrument_id VARCHAR(20) 
); 

ALTER TABLE recepit_rent ADD CONSTRAINT PK_recepit_rent PRIMARY KEY (recepit_rent_id);

drop table if exists invoice cascade;
CREATE TABLE invoice (
 invoice_id VARCHAR(20),
 student_id VARCHAR(20),
 discount VARCHAR(20),
 recepit_lesson_id VARCHAR(20),
 recepit_rent_id VARCHAR(20)
);

ALTER TABLE invoice ADD CONSTRAINT PK_invoice PRIMARY KEY (invoice_id);


ALTER TABLE applay ADD CONSTRAINT FK_applay_0 FOREIGN KEY (person_id) REFERENCES person (person_id);


ALTER TABLE instructor ADD CONSTRAINT FK_instructor_0 FOREIGN KEY (person_id) REFERENCES person (person_id);


ALTER TABLE lesson ADD CONSTRAINT FK_lesson_0 FOREIGN KEY (instructor_id_0) REFERENCES instructor (instructor_id);
ALTER TABLE lesson ADD CONSTRAINT FK_lesson_1 FOREIGN KEY (price_id) REFERENCES price (price_id);


ALTER TABLE parent ADD CONSTRAINT FK_parent_0 FOREIGN KEY (person_id) REFERENCES person (person_id);


ALTER TABLE salary ADD CONSTRAINT FK_salary_0 FOREIGN KEY (instructor_id_0) REFERENCES instructor (instructor_id);


ALTER TABLE student ADD CONSTRAINT FK_student_0 FOREIGN KEY (app_id,person_id) REFERENCES applay (app_id,person_id);
ALTER TABLE student ADD CONSTRAINT FK_student_1 FOREIGN KEY (parent_id) REFERENCES parent (parent_id);
ALTER TABLE student ADD CONSTRAINT FK_student_2 FOREIGN KEY (lesson_id) REFERENCES lesson (lesson_id);


ALTER TABLE visited_lesson ADD CONSTRAINT FK_visited_lesson_0 FOREIGN KEY (lesson_id) REFERENCES lesson (lesson_id);


ALTER TABLE instrument_rent ADD CONSTRAINT FK_instrument_rent_0 FOREIGN KEY (price_id) REFERENCES price (price_id);
ALTER TABLE instrument_rent ADD CONSTRAINT FK_instrument_rent_1 FOREIGN KEY (student_id_0) REFERENCES student (student_id);


ALTER TABLE recepit_lesson ADD CONSTRAINT FK_recepit_lesson_0 FOREIGN KEY (visited_lesson_id) REFERENCES visited_lesson (visited_lesson_id);

ALTER TABLE recepit_lesson ADD CONSTRAINT FK_recepit_lesson_0 FOREIGN KEY (price_id) REFERENCES price (price_id);


ALTER TABLE recepit_rent ADD CONSTRAINT FK_recepit_rent_0 FOREIGN KEY (instrument_id) REFERENCES instrument_rent (instrument_id);


ALTER TABLE invoice ADD CONSTRAINT FK_invoice_0 FOREIGN KEY (student_id) REFERENCES student (student_id);
ALTER TABLE invoice ADD CONSTRAINT FK_invoice_1 FOREIGN KEY (recepit_lesson_id) REFERENCES recepit_lesson (recepit_lesson_id);
ALTER TABLE invoice ADD CONSTRAINT FK_invoice_2 FOREIGN KEY (recepit_rent_id) REFERENCES recepit_rent (recepit_rent_id);


