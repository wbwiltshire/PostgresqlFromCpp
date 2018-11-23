--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.0
-- Dumped by pg_dump version 9.5.0

-- Started on 2016-01-23 07:25:35

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET search_path = public, pg_catalog;

--
-- TOC entry 2107 (class 0 OID 65652)
-- Dependencies: 184
-- Data for Name: city; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO city VALUES (1, 'Tampa', 'FL', B'1', '2014-04-20 09:35:00', '2014-04-20 09:35:00');
INSERT INTO city VALUES (2, 'Bellevue', 'WA', B'1', '2014-04-20 09:35:00', '2014-04-20 09:35:00');
INSERT INTO city VALUES (3, 'Washington', 'DC', B'1', '2014-04-28 11:05:00', '2014-04-28 11:05:00');
INSERT INTO city VALUES (4, 'Omaha', 'NE', B'1', '2015-12-08 22:49:00', '2015-12-08 22:49:00');
INSERT INTO city VALUES (5, 'Los Angeles', 'CA', B'1', '2015-12-08 22:50:00', '2015-12-08 22:50:00');
INSERT INTO city VALUES (6, 'Riverside', 'IA', B'1', '2015-12-08 22:50:00', '2015-12-08 22:50:00');
INSERT INTO city VALUES (7, 'Polis Massa', '00', B'1', '2015-12-08 22:50:00', '2015-12-08 22:50:00');
INSERT INTO city VALUES (8, 'Orlando', 'FL', B'1', '2015-12-08 22:50:00', '2015-12-08 22:50:00');
INSERT INTO city VALUES (9, 'Atlanta', 'GA', B'1', '2015-12-08 22:50:00', '2015-12-08 22:50:00');
INSERT INTO city VALUES (10, 'Gainesville', 'FL', B'1', '2015-12-08 22:50:00', '2015-12-08 22:50:00');
INSERT INTO city VALUES (11, 'Princeton', 'NJ', B'1', '2015-12-09 00:00:00', '2015-12-09 00:00:00');
INSERT INTO city VALUES (12, 'Taos', 'NM', B'1', '2015-12-09 00:00:00', '2015-12-09 00:00:00');
INSERT INTO city VALUES (13, 'Phoenix', 'AZ', B'1', '2015-12-09 00:00:00', '2015-12-09 00:00:00');
INSERT INTO city VALUES (14, 'New York', 'NY', B'1', '2015-12-09 00:00:00', '2015-12-09 00:00:00');
INSERT INTO city VALUES (15, 'Camarillo', 'CA', B'1', '2015-12-09 00:00:00', '2015-12-09 00:00:00');
INSERT INTO city VALUES (16, 'Venice', 'CA', B'1', '2015-12-09 00:00:00', '2015-12-09 00:00:00');
INSERT INTO city VALUES (17, 'Seattle', 'WA', B'1', '2015-12-09 00:00:00', '2015-12-09 00:00:00');

SELECT setval('city_id_seq', 17);
-- Completed on 2016-01-23 07:25:35

--
-- PostgreSQL database dump complete
--

