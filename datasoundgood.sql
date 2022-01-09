/*        PERSON                          */
/*  children */ 
insert into person (person_id, first_name, last_name, person_number, age, phone_number, city, street, zip) VALUES ('0','0','0','0','0','0','0','0','0');
insert into person (person_id, first_name, last_name, person_number, age, phone_number, city, street, zip) VALUES ('1','Violette','Drepp','117184168139','10','0702920491','Stockholm','Q Street','14994');
insert into person (person_id, first_name, last_name, person_number, age, phone_number, city, street, zip) VALUES ('2','Nathanil','Ousbie','194949037570','12','0702920492','Stockholm','W Street','16066');
insert into person (person_id, first_name, last_name, person_number, age, phone_number, city, street, zip) VALUES ('3','Christyna','Gaunt','122634415794','14','0702920493','Stockholm','E Street','13860');
insert into person (person_id, first_name, last_name, person_number, age, phone_number, city, street, zip) VALUES ('4','Townsend','Hunton','181756308244','16','0702920494','Stockholm','R Street','19486');
insert into person (person_id, first_name, last_name, person_number, age, phone_number, city, street, zip) VALUES ('5','Bette','Rampage','182010260230','17','0702920495','Stockholm','T Street','13287');
insert into person (person_id, first_name, last_name, person_number, age, phone_number, city, street, zip) VALUES ('6','Nissa','Hayton','166104594201','11','0702920496','Stockholm','Y Street','13415');
insert into person (person_id, first_name, last_name, person_number, age, phone_number, city, street, zip) VALUES ('7','Flinn','Wynrahame','132067041633','18','0702920497','Stockholm','U Street','10832');
insert into person (person_id, first_name, last_name, person_number, age, phone_number, city, street, zip) VALUES ('8','Neall','Dalwood','192633439704','13','0702920498','Stockholm','I Street','11410');
insert into person (person_id, first_name, last_name, person_number, age, phone_number, city, street, zip) VALUES ('9','Clemens','Quimby','165725354457','14','0702920499','Stockholm','O Street','19615');
insert into person (person_id, first_name, last_name, person_number, age, phone_number, city, street, zip) VALUES ('10','Niki','Borg','141312309913','15','0702920410','Stockholm','P Street','13222');


/* parents*/

insert into person (person_id, first_name, last_name, person_number, age, phone_number, city, street, zip) VALUES ('11','Gwennie','Butt ','191238933457','25','0702920411','Stockholm','A Street','19713');
insert into person (person_id, first_name, last_name, person_number, age, phone_number, city, street, zip) VALUES ('12','Loydie','Oller','145099862842','56','0702920412','Stockholm','S Street','14462');
insert into person (person_id, first_name, last_name, person_number, age, phone_number, city, street, zip) VALUES ('13','Rene','Oconnor','122914425127','85','0702920413','Stockholm','D Street','14043');
insert into person (person_id, first_name, last_name, person_number, age, phone_number, city, street, zip) VALUES ('14','Katrine','Sendley','145518092817','50','0702920414','Stockholm','F Street','10950');
insert into person (person_id, first_name, last_name, person_number, age, phone_number, city, street, zip) VALUES ('15','Celestia','Mathy','107115983499','30','0702920415','Stockholm','G Street','17613');


/* instructors*/ 

insert into person (person_id, first_name, last_name, person_number, age, phone_number, city, street, zip) VALUES ('16','Augusto','Kiwitz','130388982436','22','0702920416','Stockholm','H Street','19411');
insert into person (person_id, first_name, last_name, person_number, age, phone_number, city, street, zip) VALUES ('17','Yolanda','Strong','135091393845','23','0702920417','Stockholm','J Street','12183');
insert into person (person_id, first_name, last_name, person_number, age, phone_number, city, street, zip) VALUES ('18','Queenie','Goford','169791624621','40','0702920418','Stockholm','K Street','19376');
insert into person (person_id, first_name, last_name, person_number, age, phone_number, city, street, zip) VALUES ('19','Quincey','Muspratt','146603595365','55','0702920419','Stockholm','L Street','13499');

/*          PARENT          */

insert into parent (parent_id, first_name, last_name, person_id) VALUES ('0','0','0','0');
insert into parent (parent_id, first_name, last_name, person_id) VALUES ('11','Gwennie','Butt','11');
insert into parent (parent_id, first_name, last_name, person_id) VALUES ('12','Loydie','Oller','12');
insert into parent (parent_id, first_name, last_name, person_id) VALUES ('13','Rene','Oconnor','13');
insert into parent (parent_id, first_name, last_name, person_id) VALUES ('14','Katrine','Sendley','14');
insert into parent (parent_id, first_name, last_name, person_id) VALUES ('15','Celestia','Mathy','15');

/*          PRICE           */
insert into price (price_id, amount ,skill) VALUES ('0','0','0');
insert into price (price_id, amount ,skill) VALUES ('1','100','Beginner');
insert into price (price_id, amount ,skill) VALUES ('2','200','Intermidiate');
insert into price (price_id, amount ,skill) VALUES ('3','300','Advanced');


insert into price (price_id, amount ,skill) VALUES ('4','200','paino');
insert into price (price_id, amount ,skill) VALUES ('5','150','flute');
insert into price (price_id, amount ,skill) VALUES ('6','250','drums');

insert into price (price_id, amount ,skill) VALUES ('7','200','Ensemble');





/*       APPLAY              */
insert into applay (app_id, person_id, email, app_text, student_id, app_accept) VALUES ('0','0','0','0','0','no');
insert into applay (app_id, person_id, email, app_text, student_id, app_accept) VALUES ('1','1','Violette@email.com','TEXT1','1','yes');
insert into applay (app_id, person_id, email, app_text, student_id, app_accept) VALUES ('2','2','Nathanil@email.com','TEXT2','2','yes');
insert into applay (app_id, person_id, email, app_text, student_id, app_accept) VALUES ('3','3','Christyna@email.com','TEXT3','3','yes');
insert into applay (app_id, person_id, email, app_text, student_id, app_accept) VALUES ('4','4','Townsend@email.com','TEXT4','4','yes');
insert into applay (app_id, person_id, email, app_text, student_id, app_accept) VALUES ('5','5','Bette@email.com','TEXT5','5','yes');
insert into applay (app_id, person_id, email, app_text, student_id, app_accept) VALUES ('6','6','Nissa@email.com','TEXT6','6','yes');
insert into applay (app_id, person_id, email, app_text, student_id, app_accept) VALUES ('7','7','Flinn@email.com','TEXT7','7','yes');
insert into applay (app_id, person_id, email, app_text, student_id, app_accept) VALUES ('8','8','Neall@email.com','TEXT8','8','yes');
insert into applay (app_id, person_id, email, app_text, student_id, app_accept) VALUES ('9','9','Clemens@email.com','TEXT9','9','yes');
insert into applay (app_id, person_id, email, app_text, student_id, app_accept) VALUES ('10','10','Niki@email.com','TEXT10','10','yes');


/*  INSTRUCTORS*/

insert into instructor (instructor_id, email, person_id) VALUES ('0','0','0');
insert into instructor (instructor_id, email, person_id) VALUES ('16','Augusto@email.com','16');
insert into instructor (instructor_id,email, person_id) VALUES ('17','Yolanda@email.com','17');
insert into instructor (instructor_id,email, person_id ) VALUES ('18','Queenie@email.com','18');
insert into instructor (instructor_id,email, person_id) VALUES ('19','Quincey@email.com','19');

/*       LESSON        */
insert into lesson (lesson_id, room, time_lesson, instrument, instructor_id_0, price_id, lesson_type, max_cap,current_s, min_cap) VALUES ('0', '0', '2000-01-08 19:00:00', '0', '0', '0','0','0','0','0');
insert into lesson (lesson_id, room, time_lesson, instrument, instructor_id_0, price_id, lesson_type, max_cap,current_s, min_cap) VALUES ('1', '101', '2022-01-08 19:00:00', 'Piano', '16', '1','solo','1','1','1');
insert into lesson (lesson_id, room, time_lesson, instrument, instructor_id_0, price_id, lesson_type, max_cap,current_s, min_cap) VALUES ('2', '202', '2022-01-08 19:00:00', 'Flute', '17', '1','solo','1','1','1');
insert into lesson (lesson_id, room, time_lesson, instrument, instructor_id_0, price_id, lesson_type, max_cap,current_s, min_cap) VALUES ('3', '303', '2022-01-08 19:00:00', 'Drums', '18', '2','solo','1','1','1');
insert into lesson (lesson_id, room, time_lesson, instrument, instructor_id_0, price_id, lesson_type, max_cap,current_s, min_cap) VALUES ('4', '404', '2022-01-08 19:00:00', 'Flute', '19', '3','solo','1','1','1');

insert into lesson (lesson_id, room, time_lesson, instrument, instructor_id_0, price_id, lesson_type, max_cap,current_s, min_cap) VALUES ('5', '101', '2022-02-09 19:00:00', 'Piano', '16', '1','solo','1','1','1');
insert into lesson (lesson_id, room, time_lesson, instrument, instructor_id_0, price_id, lesson_type, max_cap,current_s, min_cap) VALUES ('6', '202', '2022-02-09 19:00:00', 'Drums', '17', '1','solo','1','1','1');
insert into lesson (lesson_id, room, time_lesson, instrument, instructor_id_0, price_id, lesson_type, max_cap,current_s, min_cap) VALUES ('7', '303', '2022-02-09 19:00:00', 'Piano', '18', '3','solo','1','1','1');
insert into lesson (lesson_id, room, time_lesson, instrument, instructor_id_0, price_id, lesson_type, max_cap,current_s, min_cap) VALUES ('8', '404', '2022-03-09 19:00:00', 'Flute', '19', '2','solo','1','1','1');
insert into lesson (lesson_id, room, time_lesson, instrument, instructor_id_0, price_id, lesson_type, max_cap,current_s, min_cap) VALUES ('9', '505', '2022-03-10 19:00:00', 'Piano', '19', '2','solo','1','1','1');
insert into lesson (lesson_id, room, time_lesson, instrument, instructor_id_0, price_id, lesson_type, max_cap,current_s, min_cap) VALUES ('10', '202', '2022-03-10 19:00:00', 'Flute', '17', '3','solo','1','1','1');


insert into lesson (lesson_id, room, time_lesson, instrument, instructor_id_0, price_id, lesson_type, max_cap,current_s, min_cap) VALUES ('19', '202', '2022-04-10 19:00:00', 'Flute', '17', '1','solo','1','1','1');
insert into lesson (lesson_id, room, time_lesson, instrument, instructor_id_0, price_id, lesson_type, max_cap,current_s, min_cap) VALUES ('20', '202', '2022-05-10 19:00:00', 'Flute', '17', '1','solo','1','1','1');
insert into lesson (lesson_id, room, time_lesson, instrument, instructor_id_0, price_id, lesson_type, max_cap,current_s, min_cap) VALUES ('21', '202', '2022-06-10 19:00:00', 'Flute', '17', '1','solo','1','1','1');
insert into lesson (lesson_id, room, time_lesson, instrument, instructor_id_0, price_id, lesson_type, max_cap,current_s, min_cap) VALUES ('22', '202', '2022-07-10 19:00:00', 'Flute', '17', '1','solo','1','1','1');
insert into lesson (lesson_id, room, time_lesson, instrument, instructor_id_0, price_id, lesson_type, max_cap,current_s, min_cap) VALUES ('23', '202', '2022-08-10 19:00:00', 'Flute', '17', '1','solo','1','1','1');
insert into lesson (lesson_id, room, time_lesson, instrument, instructor_id_0, price_id, lesson_type, max_cap,current_s, min_cap) VALUES ('24', '202', '2022-09-10 19:00:00', 'Flute', '17', '1','solo','1','1','1');
insert into lesson (lesson_id, room, time_lesson, instrument, instructor_id_0, price_id, lesson_type, max_cap,current_s, min_cap) VALUES ('25', '202', '2022-10-10 19:00:00', 'Flute', '17', '1','solo','1','1','1');
insert into lesson (lesson_id, room, time_lesson, instrument, instructor_id_0, price_id, lesson_type, max_cap,current_s, min_cap) VALUES ('26', '202', '2022-03-11 19:00:00', 'Flute', '17', '1','solo','1','1','1');
insert into lesson (lesson_id, room, time_lesson, instrument, instructor_id_0, price_id, lesson_type, max_cap,current_s, min_cap) VALUES ('27', '202', '2022-03-12 19:00:00', 'Flute', '17', '1','solo','1','1','1');

/* GROUP*/
insert into lesson (lesson_id, room, time_lesson, instrument, instructor_id_0, price_id, lesson_type, max_cap,current_s, min_cap) VALUES ('11', '202', '2022-01-10 19:00:00', 'Flute', '17', '5','group','10','6','4');
insert into lesson (lesson_id, room, time_lesson, instrument, instructor_id_0, price_id, lesson_type, max_cap,current_s, min_cap) VALUES ('12', '202', '2022-01-10 19:00:00', 'Flute', '17', '5','group','10','7','4');
insert into lesson (lesson_id, room, time_lesson, instrument, instructor_id_0, price_id, lesson_type, max_cap,current_s, min_cap) VALUES ('13', '202', '2022-01-10 19:00:00', 'Flute', '17', '5','group','10','9','4');

/*  Ensembles */
insert into lesson (lesson_id, room, time_lesson, instrument, instructor_id_0, price_id, lesson_type, max_cap,current_s, min_cap) VALUES ('14', '202', '2022-01-10 19:00:00', 'Punk rock', '17', '7','Ensembles','20','14','10');
insert into lesson (lesson_id, room, time_lesson, instrument, instructor_id_0, price_id, lesson_type, max_cap,current_s, min_cap) VALUES ('15', '202', '2022-01-10 19:00:00', 'Gospel ', '17', '7','Ensembles','20','11','10');
insert into lesson (lesson_id, room, time_lesson, instrument, instructor_id_0, price_id, lesson_type, max_cap,current_s, min_cap) VALUES ('16', '202', '2022-01-10 19:00:00', 'Choir', '17', '7','Ensembles','20','16','10');
insert into lesson (lesson_id, room, time_lesson, instrument, instructor_id_0, price_id, lesson_type, max_cap,current_s, min_cap) VALUES ('17', '202', '2022-01-10 19:00:00', 'Jazz', '17', '7','Ensembles','20','18','10');
insert into lesson (lesson_id, room, time_lesson, instrument, instructor_id_0, price_id, lesson_type, max_cap,current_s, min_cap) VALUES ('18', '202', '2022-01-10 19:00:00', 'Rock', '17', '7','Ensembles','20','20','10');

/*      STUDENTS        */

insert into student (student_id, skill, email, app_id, person_id, parent_id, lesson_id) VALUES ('1','Beginner','Violette@email.com','1','1','15','1');
insert into student (student_id, skill, email, app_id, person_id, parent_id, lesson_id) VALUES ('2','Beginner','Nathanil@email.com','2','2','14','2');
insert into student (student_id, skill, email, app_id, person_id, parent_id, lesson_id) VALUES ('3','Intermidiate','Christyna@email.com','3','3','15','3');
insert into student (student_id, skill, email, app_id, person_id, parent_id, lesson_id) VALUES ('4','Advanced','Townsend@email.com','4','4','13','4');
insert into student (student_id, skill, email, app_id, person_id, parent_id, lesson_id) VALUES ('5','Beginner','Bette@email.com','5','5','12','5');
insert into student (student_id, skill, email, app_id, person_id, parent_id, lesson_id) VALUES ('6','Beginner','Nissa@email.com','6','6','11','6');
insert into student (student_id, skill, email, app_id, person_id, parent_id, lesson_id) VALUES ('7','Advanced','Flinn@email.com','7','7','11','7');
insert into student (student_id, skill, email, app_id, person_id, parent_id, lesson_id) VALUES ('8','Intermidiate','Neall@email.com','8','8','12','8');
insert into student (student_id, skill, email, app_id, person_id, parent_id, lesson_id) VALUES ('9','Intermidiate','Clemens@email.com','9','9','15','9');
insert into student (student_id, skill, email, app_id, person_id, parent_id, lesson_id) VALUES ('10','Advanced','Niki@email.com','10','10','15','10');
insert into student (student_id, skill, email, app_id, person_id, parent_id, lesson_id) VALUES ('0','0','0','0','0','0','0');



/*           SALARY                 */ 
insert into salary (salary_id, amount, salary_paid_date, instructor_id_0) VALUES ('0','0','2000-01-08 19:00:00','0');
insert into salary (salary_id, amount, salary_paid_date, instructor_id_0) VALUES ('1','1000','2022-01-08 19:00:00','16');
insert into salary (salary_id, amount, salary_paid_date, instructor_id_0) VALUES ('2','8000','2022-01-08 19:00:00','17');
insert into salary (salary_id, amount, salary_paid_date, instructor_id_0) VALUES ('3','9100','2022-01-08 19:00:00','18');
insert into salary (salary_id, amount, salary_paid_date, instructor_id_0) VALUES ('4','15000','2022-01-08 19:00:00','19');

insert into salary (salary_id, amount, salary_paid_date, instructor_id_0) VALUES ('5','8000','2022-02-08 19:00:00','16');
insert into salary (salary_id, amount, salary_paid_date, instructor_id_0) VALUES ('6','9000','2022-02-08 19:00:00','17');
insert into salary (salary_id, amount, salary_paid_date, instructor_id_0) VALUES ('7','900','2022-02-08 19:00:00','18');
insert into salary (salary_id, amount, salary_paid_date, instructor_id_0) VALUES ('8','1000','2022-02-08 19:00:00','19');

insert into salary (salary_id, amount, salary_paid_date, instructor_id_0) VALUES ('9','4000','2022-03-08 19:00:00','16');
insert into salary (salary_id, amount, salary_paid_date, instructor_id_0) VALUES ('10','10000','2022-03-08 19:00:00','17');
insert into salary (salary_id, amount, salary_paid_date, instructor_id_0) VALUES ('11','9100','2022-03-08 19:00:00','18');
insert into salary (salary_id, amount, salary_paid_date, instructor_id_0) VALUES ('12','10000','2022-03-08 19:00:00','19');







/*     VISITED LESSON       */ 


insert into visited_lesson (visited_lesson_id, student_id, lesson_id) VALUES ('1','1','1');
insert into visited_lesson (visited_lesson_id, student_id, lesson_id) VALUES ('2','2','2');
insert into visited_lesson (visited_lesson_id, student_id, lesson_id) VALUES ('3','3','3');
insert into visited_lesson (visited_lesson_id, student_id, lesson_id) VALUES ('4','4','4');
insert into visited_lesson (visited_lesson_id, student_id, lesson_id) VALUES ('5','5','5');
insert into visited_lesson (visited_lesson_id, student_id, lesson_id) VALUES ('6','6','6');
insert into visited_lesson (visited_lesson_id, student_id, lesson_id) VALUES ('7','7','7');
insert into visited_lesson (visited_lesson_id, student_id, lesson_id) VALUES ('8','8','8');
insert into visited_lesson (visited_lesson_id, student_id, lesson_id) VALUES ('9','9','9');
insert into visited_lesson (visited_lesson_id, student_id, lesson_id) VALUES ('10','10','10');





/*          RECEPIET LESSON*/ 

insert into recepit_lesson (recepit_lesson_id, receipt_text, time_receipt, price_id, type_of_lesson, skill_level, number_of_students, visited_lesson_id) VALUES ('1', 'WELCOME BACK', '2022-01-08 19:00:00', '1', 'instrument', 'Beginner', '1', '1');
insert into recepit_lesson (recepit_lesson_id, receipt_text, time_receipt, price_id, type_of_lesson, skill_level, number_of_students, visited_lesson_id) VALUES ('2', 'WELCOME BACK', '2022-01-08 19:00:00', '1', 'instrument', 'Beginner', '1', '2');
insert into recepit_lesson (recepit_lesson_id, receipt_text, time_receipt, price_id, type_of_lesson, skill_level, number_of_students, visited_lesson_id) VALUES ('3', 'WELCOME BACK', '2022-01-08 19:00:00', '2', 'instrument', 'Intermidiate', '1', '3');
insert into recepit_lesson (recepit_lesson_id, receipt_text, time_receipt, price_id, type_of_lesson, skill_level, number_of_students, visited_lesson_id) VALUES ('4', 'WELCOME BACK', '2022-01-08 19:00:00', '3', 'instrument', 'Advanced', '1', '4');
insert into recepit_lesson (recepit_lesson_id, receipt_text, time_receipt, price_id, type_of_lesson, skill_level, number_of_students, visited_lesson_id) VALUES ('5', 'WELCOME BACK', '2022-01-09 19:00:00', '1', 'instrument', 'Beginner', '1', '5');
insert into recepit_lesson (recepit_lesson_id, receipt_text, time_receipt, price_id, type_of_lesson, skill_level, number_of_students, visited_lesson_id) VALUES ('6', 'WELCOME BACK', '2022-01-09 19:00:00', '1', 'instrument', 'Beginner', '1', '6');
insert into recepit_lesson (recepit_lesson_id, receipt_text, time_receipt, price_id, type_of_lesson, skill_level, number_of_students, visited_lesson_id) VALUES ('7', 'WELCOME BACK', '2022-01-09 19:00:00', '3', 'instrument', 'Advanced', '1', '7');
insert into recepit_lesson (recepit_lesson_id, receipt_text, time_receipt, price_id, type_of_lesson, skill_level, number_of_students, visited_lesson_id) VALUES ('8', 'WELCOME BACK', '2022-01-09 19:00:00', '2', 'instrument', 'Intermidiate', '1', '8');
insert into recepit_lesson (recepit_lesson_id, receipt_text, time_receipt, price_id, type_of_lesson, skill_level, number_of_students, visited_lesson_id) VALUES ('9', 'WELCOME BACK', '2022-01-10 19:00:00', '2', 'instrument', 'Intermidiate', '1', '9');
insert into recepit_lesson (recepit_lesson_id, receipt_text, time_receipt, price_id, type_of_lesson, skill_level, number_of_students, visited_lesson_id) VALUES ('10', 'WELCOME BACK', '2022-01-10 19:00:00', '3', 'instrument', 'Advanced', '1', '10');
 




/*          INSTRUMENT RENT             */

insert into instrument_rent (instrument_id, instrument_name, start_date_rent, return_date, price_id, student_id_0, brand,is_rented,is_terminated) VALUES ('1', 'PAINO', '2022-01-08 19:00:00', '2022-01-10 19:00:00', '4', '1' ,'Yamaha ','1','0');
insert into instrument_rent (instrument_id, instrument_name, start_date_rent, return_date, price_id, student_id_0, brand,is_rented,is_terminated) VALUES ('2', 'FLUTE', '2022-01-08 19:00:00', '2022-01-10 19:00:00', '5', '2','Metal_flute','1','0');
insert into instrument_rent (instrument_id, instrument_name, start_date_rent, return_date, price_id, student_id_0, brand,is_rented,is_terminated) VALUES ('3', 'DRUMS', '2022-01-08 19:00:00', '2022-01-10 19:00:00', '6', '3','Metal_rock_Drums','1','0');
insert into instrument_rent (instrument_id, instrument_name, start_date_rent, return_date, price_id, student_id_0, brand,is_rented,is_terminated) VALUES ('4', 'FLUTE', '2022-01-08 19:00:00', '2022-01-10 19:00:00', '5', '4','Wood_flute','1','0');
insert into instrument_rent (instrument_id, instrument_name, start_date_rent, return_date, price_id, student_id_0, brand,is_rented,is_terminated) VALUES ('5', 'PAINO', '2022-01-08 19:00:00', '2022-01-10 19:00:00', '4', '5', 'Casio','1','0');
insert into instrument_rent (instrument_id, instrument_name, start_date_rent, return_date, price_id, student_id_0, brand,is_rented,is_terminated) VALUES ('6', 'Saxophone', '2022-01-08 19:00:00', '2022-01-10 19:00:00', '4', '0', 'SAX','0','0');
insert into instrument_rent (instrument_id, instrument_name, start_date_rent, return_date, price_id, student_id_0, brand,is_rented,is_terminated) VALUES ('7', 'Violin', '2022-01-08 19:00:00', '2022-01-10 19:00:00', '4', '0', 'VIOL','0','0');
insert into instrument_rent (instrument_id, instrument_name, start_date_rent, return_date, price_id, student_id_0, brand,is_rented,is_terminated) VALUES ('8', 'Base', '2022-01-08 19:00:00', '2022-01-10 19:00:00', '4', '0', 'Metal_Base','0','0');
insert into instrument_rent (instrument_id) VALUES ('0');


/*      RECEPIT RENT          */

insert into recepit_rent (recepit_rent_id, instrument_id) VALUES ('1', '1');
insert into recepit_rent (recepit_rent_id, instrument_id) VALUES ('2', '2');
insert into recepit_rent (recepit_rent_id, instrument_id) VALUES ('3', '3');
insert into recepit_rent (recepit_rent_id, instrument_id) VALUES ('4', '4');
insert into recepit_rent (recepit_rent_id, instrument_id) VALUES ('5', '5');
insert into recepit_rent (recepit_rent_id, instrument_id) VALUES ('0', '0');



/*       INVOICE           */ 

insert into invoice (invoice_id, student_id, discount, recepit_lesson_id, recepit_rent_id) VALUES ('1', '1', '1', '1', '1');
insert into invoice (invoice_id, student_id, discount, recepit_lesson_id, recepit_rent_id) VALUES ('2', '2', '1', '2', '2');
insert into invoice (invoice_id, student_id, discount, recepit_lesson_id, recepit_rent_id) VALUES ('3', '3', '1', '3', '3');
insert into invoice (invoice_id, student_id, discount, recepit_lesson_id, recepit_rent_id) VALUES ('4', '4', '1', '4', '4');
insert into invoice (invoice_id, student_id, discount, recepit_lesson_id, recepit_rent_id) VALUES ('5', '5', '1', '5', '5');
insert into invoice (invoice_id, student_id, discount, recepit_lesson_id, recepit_rent_id) VALUES ('6', '6', '1', '6', '0');
insert into invoice (invoice_id, student_id, discount, recepit_lesson_id, recepit_rent_id) VALUES ('7', '7', '1', '7', '0');
insert into invoice (invoice_id, student_id, discount, recepit_lesson_id, recepit_rent_id) VALUES ('8', '8', '1', '8', '0');
insert into invoice (invoice_id, student_id, discount, recepit_lesson_id, recepit_rent_id) VALUES ('9', '9', '1', '9', '0');
insert into invoice (invoice_id, student_id, discount, recepit_lesson_id, recepit_rent_id) VALUES ('10', '10', '1', '10', '0');
