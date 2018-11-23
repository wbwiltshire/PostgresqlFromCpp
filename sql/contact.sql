--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.0
-- Dumped by pg_dump version 9.5.0

-- Started on 2017-02-16 10:23:38

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET search_path = public, pg_catalog;

--
-- TOC entry 2106 (class 0 OID 65617)
-- Dependencies: 181
-- Data for Name: contact; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO contact (id, firstname, lastname, address1, address2, notes, zipcode, homephone, workphone, cellphone, email, cityid, active, modifieddt, createdt) VALUES (2, 'Bill', 'Gates', '1313 Mockingbird Lane', NULL, NULL, '98004', '4255551212', '4255551212', '4255551212', 'billg@microsoft.com', 2, B'1', '2014-04-13 13:37:00', '2014-04-13 13:37:00');
INSERT INTO contact (id, firstname, lastname, address1, address2, notes, zipcode, homephone, workphone, cellphone, email, cityid, active, modifieddt, createdt) VALUES (12, 'Albert', 'Einstein', '1 Relativity Blvd', NULL, NULL, '08450', '6095551212', '6095551212', '6095551212', 'EMC2@Princeton.Edu', 11, B'1', '2015-12-09 00:00:00', '2015-12-09 00:00:00');
INSERT INTO contact (id, firstname, lastname, address1, address2, notes, zipcode, homephone, workphone, cellphone, email, cityid, active, modifieddt, createdt) VALUES (13, 'Robert', 'Oppenheimer', '1934 Manhattan St.', NULL, NULL, '87571', '5755551212', '5755551212', '5755551212', 'BigBang@Army.Gov', 12, B'1', '2015-12-09 00:00:00', '2015-12-09 00:00:00');
INSERT INTO contact (id, firstname, lastname, address1, address2, notes, zipcode, homephone, workphone, cellphone, email, cityid, active, modifieddt, createdt) VALUES (14, 'Barry', 'Goldwater', '1234 Presidential Way', NULL, NULL, '85001', '4805551212', '4805551212', '4805551212', 'Barry@Arizona.State.US', 13, B'1', '2015-12-09 00:00:00', '2015-12-09 00:00:00');
INSERT INTO contact (id, firstname, lastname, address1, address2, notes, zipcode, homephone, workphone, cellphone, email, cityid, active, modifieddt, createdt) VALUES (15, 'Julianne', 'Margulies', '100 Broadway Blvd', NULL, NULL, '10012', '2125551212', '2125551212', '2125551212', 'Julianne@Marguiles.Com', 14, B'1', '2015-12-09 00:00:00', '2015-12-09 00:00:00');
INSERT INTO contact (id, firstname, lastname, address1, address2, notes, zipcode, homephone, workphone, cellphone, email, cityid, active, modifieddt, createdt) VALUES (16, 'Kaley', 'Cuoco', '123 Big Bang Ave.', NULL, NULL, '93010', '8055551212', '8055551212', '8055551212', 'Penny@BigBang.Com', 15, B'1', '2015-12-09 00:00:00', '2015-12-09 00:00:00');
INSERT INTO contact (id, firstname, lastname, address1, address2, notes, zipcode, homephone, workphone, cellphone, email, cityid, active, modifieddt, createdt) VALUES (17, 'Ronda', 'Rousey', '200 UFC Lane', NULL, NULL, '90011', '2135551213', '2135551213', '2135551213', 'Knockout@UFC.Com', 16, B'1', '2015-12-09 00:00:00', '2015-12-09 00:00:00');
INSERT INTO contact (id, firstname, lastname, address1, address2, notes, zipcode, homephone, workphone, cellphone, email, cityid, active, modifieddt, createdt) VALUES (18, 'Howard', 'Schultz', '4 Hot Coffee Drive', NULL, NULL, '98101', '2065551212', '2065551212', '2065551212', 'Howard@Starbucks.com', 17, B'1', '2015-12-09 00:00:00', '2015-12-09 00:00:00');
INSERT INTO contact (id, firstname, lastname, address1, address2, notes, zipcode, homephone, workphone, cellphone, email, cityid, active, modifieddt, createdt) VALUES (19, 'Jeff', 'Probst', '1234 Tribal Council Way', NULL, NULL, '90011', '2135551213', '2135551213', '2135551213', 'Jeff@Survivor.Com', 16, B'1', '2015-12-09 00:00:00', '2015-12-09 00:00:00');
INSERT INTO contact (id, firstname, lastname, address1, address2, notes, zipcode, homephone, workphone, cellphone, email, cityid, active, modifieddt, createdt) VALUES (21, 'Katniss', 'Everdeen', '99 Capitol Drive', NULL, NULL, '99999', '9995551212', '9995551212', '9995551212', 'Katniss@HungerGames.Com', 16, B'1', '2015-12-09 00:00:00', '2015-12-09 00:00:00');
INSERT INTO contact (id, firstname, lastname, address1, address2, notes, zipcode, homephone, workphone, cellphone, email, cityid, active, modifieddt, createdt) VALUES (8, 'Deleted', 'User', 'Address1', 'Address2', NULL, '000000000', '000000000', '000000000', '000000000', 'deleteduser@test.com', 1, B'0', '2014-04-13 13:37:00', '2014-04-13 13:37:00');
INSERT INTO contact (id, firstname, lastname, address1, address2, notes, zipcode, homephone, workphone, cellphone, email, cityid, active, modifieddt, createdt) VALUES (20, 'Elon', 'Musk', '1 Electric Car Drive', NULL, NULL, '90011', '2135551213', '2135551213', '2135551213', 'Elon@Tesla.com', 16, B'1', '2015-12-09 00:00:00', '2015-12-09 00:00:00');
INSERT INTO contact (id, firstname, lastname, address1, address2, notes, zipcode, homephone, workphone, cellphone, email, cityid, active, modifieddt, createdt) VALUES (3, 'Warren', 'Buffett', '1 Billionaire Way', NULL, NULL, '68114', '4025551212', '4025551212', '4025551212', 'warren@buffett.com', 4, B'1', '2014-04-13 13:37:00', '2014-04-13 13:37:00');
INSERT INTO contact (id, firstname, lastname, address1, address2, notes, zipcode, homephone, workphone, cellphone, email, cityid, active, modifieddt, createdt) VALUES (5, 'James', 'Kirk', '2 Galaxy Lane', NULL, NULL, '52327', '3195551214', '3195551214', '3195551214', 'JamesTKirk@StarTrek.com', 6, B'1', '2014-04-13 13:37:00', '2014-04-13 13:37:00');
INSERT INTO contact (id, firstname, lastname, address1, address2, notes, zipcode, homephone, workphone, cellphone, email, cityid, active, modifieddt, createdt) VALUES (1, 'Daffy', 'Duck', '4201 Disney Blvd. ', 'Unit 100', 'No notes', '32822', '4072581111', '4072581111', '4073171111', 'daffyd@disney.com', 8, B'1', '2014-04-13 13:35:00', '2014-04-13 13:35:00');
INSERT INTO contact (id, firstname, lastname, address1, address2, notes, zipcode, homephone, workphone, cellphone, email, cityid, active, modifieddt, createdt) VALUES (4, 'Ronald', 'Reagan', '1 Great Communicator Street', NULL, NULL, '90011', '2135551213', '2135551213', '2135551213', 'RonaldRayGun@Reagan.org', 5, B'1', '2014-04-13 13:37:00', '2014-04-13 13:37:00');
INSERT INTO contact (id, firstname, lastname, address1, address2, notes, zipcode, homephone, workphone, cellphone, email, cityid, active, modifieddt, createdt) VALUES (6, 'Darth', 'Vader', '3 Darkside Way', NULL, NULL, '99999', '9995551215', '9995551215', '9995551215', 'DarthVader@gmail.com', 7, B'1', '2014-04-13 13:37:00', '2014-04-13 13:37:00');
INSERT INTO contact (id, firstname, lastname, address1, address2, notes, zipcode, homephone, workphone, cellphone, email, cityid, active, modifieddt, createdt) VALUES (7, 'Barak', 'OBama', '1600 Pennsylvania Ave NW', NULL, NULL, '20006', '2024561414', '2024561414', '2024561414', 'BObama@WhiteHouse.Gov', 3, B'1', '2014-04-28 11:04:00', '2014-04-28 11:04:00');
INSERT INTO contact (id, firstname, lastname, address1, address2, notes, zipcode, homephone, workphone, cellphone, email, cityid, active, modifieddt, createdt) VALUES (9, 'Hulk', 'Hogan', '100 WWE Way', NULL, NULL, '33611', '8135551212', '8135551212', '8135551212', 'Hulk@WWE.com', 1, B'1', '2015-12-08 22:00:00', '2015-12-08 22:00:00');
INSERT INTO contact (id, firstname, lastname, address1, address2, notes, zipcode, homephone, workphone, cellphone, email, cityid, active, modifieddt, createdt) VALUES (10, 'Hank', 'Aaron', '755 Braves Street', NULL, NULL, '30327', '4045551212', '4045551212', '4045551212', 'Hank@AtlantaBraves.Com', 9, B'1', '2015-12-08 22:00:00', '2015-12-08 22:00:00');
INSERT INTO contact (id, firstname, lastname, address1, address2, notes, zipcode, homephone, workphone, cellphone, email, cityid, active, modifieddt, createdt) VALUES (11, 'Tim', 'Tebow', '2006 Gators Lane', NULL, NULL, '33627', '3525551212', '3525551212', '3525551212', 'TimmyT@Heisman.org', 10, B'1', '2015-12-08 22:00:00', '2015-12-08 22:00:00');
INSERT INTO contact (id, firstname, lastname, address1, address2, notes, zipcode, homephone, workphone, cellphone, email, cityid, active, modifieddt, createdt) VALUES (22, 'Steve', 'Spurrier', '1996 Gator Crossing', NULL, NULL, '32608', '3525551996', '3525551212', '3525551996', 'HeadBallCoach@UFL.Edu', 10, B'1', '2017-02-15 00:00:00', '2017-02-15 00:00:00');
INSERT INTO contact (id, firstname, lastname, address1, address2, notes, zipcode, homephone, workphone, cellphone, email, cityid, active, modifieddt, createdt) VALUES (23, 'Frank', 'Underwood', '1600 Pennsylvania Ave NW', NULL, NULL, '20006', '2025551212', '2024561414', '2025551212', 'FU@WhiteHouse.Gov', 3, B'1', '2017-02-15 00:00:00', '2017-02-15 00:00:00');


SELECT setval('contact_id_seq', 23);

-- Completed on 2017-02-16 10:23:38

--
-- PostgreSQL database dump complete
--

