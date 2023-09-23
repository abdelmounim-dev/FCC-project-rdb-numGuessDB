--
-- PostgreSQL database dump
--

-- Dumped from database version 12.16 (Ubuntu 12.16-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.16 (Ubuntu 12.16-0ubuntu0.20.04.1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL,
    num_games integer DEFAULT 0,
    best_game integer DEFAULT 0
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (136, 'user_1695480825047', 153, 250);
INSERT INTO public.users VALUES (117, 'user_1695480736961', 211, 0);
INSERT INTO public.users VALUES (20, 'younes', 512, 0);
INSERT INTO public.users VALUES (21, 'user_1695480158217', 512, 869);
INSERT INTO public.users VALUES (22, 'user_1695480158216', 510, 588);
INSERT INTO public.users VALUES (23, 'user_1695480216779', 505, 124);
INSERT INTO public.users VALUES (24, 'user_1695480216778', 503, 904);
INSERT INTO public.users VALUES (25, 'user_1695480243675', 498, 164);
INSERT INTO public.users VALUES (26, 'user_1695480243674', 496, 960);
INSERT INTO public.users VALUES (27, 'user_1695480289388', 491, 324);
INSERT INTO public.users VALUES (28, 'user_1695480289387', 489, 818);
INSERT INTO public.users VALUES (29, 'user_1695480296117', 484, 818);
INSERT INTO public.users VALUES (30, 'user_1695480296116', 482, 295);
INSERT INTO public.users VALUES (31, 'user_1695480301579', 477, 250);
INSERT INTO public.users VALUES (32, 'user_1695480301578', 475, 264);
INSERT INTO public.users VALUES (143, 'user_1695480938611', 127, 715);
INSERT INTO public.users VALUES (105, 'user_1695480674499', 246, 0);
INSERT INTO public.users VALUES (153, 'ab', 92, 10);
INSERT INTO public.users VALUES (154, 'user_1695481049448', 91, 470);
INSERT INTO public.users VALUES (138, 'user_1695480832163', 146, 729);
INSERT INTO public.users VALUES (148, 'user_1695480946470', 111, 344);
INSERT INTO public.users VALUES (59, 'user_1695480442852', 393, 245);
INSERT INTO public.users VALUES (50, 'user_1695480369351', 426, 773);
INSERT INTO public.users VALUES (94, 'user_1695480649530', 272, 986);
INSERT INTO public.users VALUES (51, 'user_1695480376466', 421, 3);
INSERT INTO public.users VALUES (52, 'user_1695480376465', 419, 29);
INSERT INTO public.users VALUES (99, 'user_1695480662745', 260, 0);
INSERT INTO public.users VALUES (102, 'user_1695480666277', 258, 81);
INSERT INTO public.users VALUES (86, 'user_1695480557722', 300, 285);
INSERT INTO public.users VALUES (87, 'user_1695480629774', 295, 1);
INSERT INTO public.users VALUES (132, 'user_1695480799674', 167, 186);
INSERT INTO public.users VALUES (126, 'user_1695480749845', 183, 0);
INSERT INTO public.users VALUES (119, 'user_1695480740707', 204, 0);
INSERT INTO public.users VALUES (176, 'user_1695481450603', 14, 283);
INSERT INTO public.users VALUES (147, 'user_1695480946471', 113, 555);
INSERT INTO public.users VALUES (151, 'user_1695480953350', 99, 153);
INSERT INTO public.users VALUES (168, 'user_1695481169556', 42, 445);
INSERT INTO public.users VALUES (170, 'user_1695481223507', 35, 301);
INSERT INTO public.users VALUES (172, 'user_1695481415409', 28, 457);
INSERT INTO public.users VALUES (45, 'user_1695480352398', 442, 245);
INSERT INTO public.users VALUES (46, 'user_1695480352397', 440, 522);
INSERT INTO public.users VALUES (66, 'user_1695480499246', 370, 602);
INSERT INTO public.users VALUES (68, 'user_1695480510407', 363, 890);
INSERT INTO public.users VALUES (92, 'user_1695480643575', 279, 97);
INSERT INTO public.users VALUES (167, 'user_1695481074163', 47, 78);
INSERT INTO public.users VALUES (165, 'user_1695481068774', 54, 960);
INSERT INTO public.users VALUES (61, 'user_1695480483823', 386, 237);
INSERT INTO public.users VALUES (120, 'user_1695480740706', 202, 0);
INSERT INTO public.users VALUES (121, 'user_1695480743102', 197, 0);
INSERT INTO public.users VALUES (145, 'user_1695480942837', 120, 47);
INSERT INTO public.users VALUES (156, 'user_1695481052931', 84, 594);
INSERT INTO public.users VALUES (160, 'user_1695481056340', 70, 679);
INSERT INTO public.users VALUES (128, 'user_1695480752120', 181, 935);
INSERT INTO public.users VALUES (129, 'user_1695480755910', 176, 347);
INSERT INTO public.users VALUES (179, 'user_1695481455038', 5, 525);
INSERT INTO public.users VALUES (67, 'user_1695480510408', 365, 90);
INSERT INTO public.users VALUES (175, 'user_1695481445204', 19, 129);
INSERT INTO public.users VALUES (130, 'user_1695480755909', 174, 157);
INSERT INTO public.users VALUES (134, 'user_1695480808837', 160, 120);
INSERT INTO public.users VALUES (159, 'user_1695481054997', 75, 811);
INSERT INTO public.users VALUES (162, 'user_1695481066857', 63, 134);
INSERT INTO public.users VALUES (163, 'user_1695481066856', 61, 635);
INSERT INTO public.users VALUES (164, 'user_1695481068775', 56, 425);
INSERT INTO public.users VALUES (141, 'user_1695480837757', 134, 985);
INSERT INTO public.users VALUES (47, 'user_1695480366636', 435, 779);
INSERT INTO public.users VALUES (69, 'user_1695480517865', 358, 293);
INSERT INTO public.users VALUES (169, 'user_1695481169555', 40, 46);
INSERT INTO public.users VALUES (139, 'user_1695480834964', 141, 698);
INSERT INTO public.users VALUES (144, 'user_1695480938610', 125, 274);
INSERT INTO public.users VALUES (152, 'user_1695480953349', 97, 943);
INSERT INTO public.users VALUES (125, 'user_1695480749846', 183, 0);
INSERT INTO public.users VALUES (85, 'user_1695480557723', 302, 184);
INSERT INTO public.users VALUES (89, 'user_1695480640121', 288, 0);
INSERT INTO public.users VALUES (43, 'user_1695480344821', 449, 862);
INSERT INTO public.users VALUES (44, 'user_1695480344820', 447, 808);
INSERT INTO public.users VALUES (95, 'user_1695480656248', 267, 0);
INSERT INTO public.users VALUES (131, 'user_1695480799675', 169, 925);
INSERT INTO public.users VALUES (118, 'user_1695480736960', 209, 0);
INSERT INTO public.users VALUES (78, 'user_1695480537613', 328, 68);
INSERT INTO public.users VALUES (79, 'user_1695480539096', 323, 709);
INSERT INTO public.users VALUES (80, 'user_1695480539095', 321, 900);
INSERT INTO public.users VALUES (133, 'user_1695480808838', 162, 607);
INSERT INTO public.users VALUES (48, 'user_1695480366635', 433, 717);
INSERT INTO public.users VALUES (60, 'user_1695480442851', 391, 558);
INSERT INTO public.users VALUES (62, 'user_1695480483822', 384, 571);
INSERT INTO public.users VALUES (64, 'user_1695480492348', 377, 284);
INSERT INTO public.users VALUES (88, 'user_1695480629773', 293, 1);
INSERT INTO public.users VALUES (137, 'user_1695480832164', 148, 922);
INSERT INTO public.users VALUES (70, 'user_1695480517864', 356, 438);
INSERT INTO public.users VALUES (57, 'user_1695480422583', 400, 202);
INSERT INTO public.users VALUES (123, 'user_1695480744497', 190, 0);
INSERT INTO public.users VALUES (98, 'user_1695480657757', 265, 468);
INSERT INTO public.users VALUES (115, 'user_1695480726217', 218, 370);
INSERT INTO public.users VALUES (109, 'user_1695480692026', 232, 0);
INSERT INTO public.users VALUES (110, 'user_1695480692025', 232, 0);
INSERT INTO public.users VALUES (108, 'user_1695480686184', 237, 0);
INSERT INTO public.users VALUES (100, 'user_1695480662744', 260, 0);
INSERT INTO public.users VALUES (65, 'user_1695480499247', 372, 729);
INSERT INTO public.users VALUES (63, 'user_1695480492349', 379, 153);
INSERT INTO public.users VALUES (166, 'user_1695481074164', 49, 917);
INSERT INTO public.users VALUES (161, 'user_1695481056339', 68, 306);
INSERT INTO public.users VALUES (155, 'user_1695481049447', 89, 160);
INSERT INTO public.users VALUES (158, 'user_1695481054998', 77, 663);
INSERT INTO public.users VALUES (150, 'user_1695480951909', 104, 811);
INSERT INTO public.users VALUES (103, 'user_1695480670039', 253, 0);
INSERT INTO public.users VALUES (112, 'user_1695480693990', 230, 336);
INSERT INTO public.users VALUES (91, 'user_1695480643576', 281, 730);
INSERT INTO public.users VALUES (93, 'user_1695480649531', 274, 672);
INSERT INTO public.users VALUES (74, 'user_1695480532755', 342, 217);
INSERT INTO public.users VALUES (58, 'user_1695480422582', 398, 945);
INSERT INTO public.users VALUES (82, 'user_1695480546572', 314, 723);
INSERT INTO public.users VALUES (113, 'user_1695480697886', 225, 602);
INSERT INTO public.users VALUES (71, 'user_1695480527351', 351, 282);
INSERT INTO public.users VALUES (73, 'user_1695480532756', 344, 775);
INSERT INTO public.users VALUES (75, 'user_1695480535021', 337, 554);
INSERT INTO public.users VALUES (76, 'user_1695480535020', 335, 433);
INSERT INTO public.users VALUES (77, 'user_1695480537614', 330, 791);
INSERT INTO public.users VALUES (49, 'user_1695480369352', 428, 155);
INSERT INTO public.users VALUES (35, 'user_1695480322515', 463, 851);
INSERT INTO public.users VALUES (36, 'user_1695480322514', 461, 592);
INSERT INTO public.users VALUES (37, 'user_1695480337956', 456, 0);
INSERT INTO public.users VALUES (38, 'user_1695480337955', 456, 0);
INSERT INTO public.users VALUES (39, 'user_1695480339180', 456, 0);
INSERT INTO public.users VALUES (135, 'user_1695480825048', 155, 324);
INSERT INTO public.users VALUES (146, 'user_1695480942836', 118, 371);
INSERT INTO public.users VALUES (157, 'user_1695481052930', 82, 692);
INSERT INTO public.users VALUES (142, 'user_1695480837756', 132, 80);
INSERT INTO public.users VALUES (33, 'user_1695480305738', 470, 903);
INSERT INTO public.users VALUES (34, 'user_1695480305737', 468, 557);
INSERT INTO public.users VALUES (122, 'user_1695480743101', 195, 0);
INSERT INTO public.users VALUES (127, 'user_1695480752121', 183, 402);
INSERT INTO public.users VALUES (124, 'user_1695480744496', 188, 0);
INSERT INTO public.users VALUES (116, 'user_1695480726216', 216, 601);
INSERT INTO public.users VALUES (114, 'user_1695480697885', 223, 524);
INSERT INTO public.users VALUES (90, 'user_1695480640120', 286, 0);
INSERT INTO public.users VALUES (101, 'user_1695480666278', 260, 934);
INSERT INTO public.users VALUES (97, 'user_1695480657758', 267, 911);
INSERT INTO public.users VALUES (53, 'user_1695480404148', 414, 303);
INSERT INTO public.users VALUES (54, 'user_1695480404147', 412, 507);
INSERT INTO public.users VALUES (55, 'user_1695480415471', 407, 346);
INSERT INTO public.users VALUES (56, 'user_1695480415470', 405, 138);
INSERT INTO public.users VALUES (177, 'user_1695481450602', 12, 38);
INSERT INTO public.users VALUES (178, 'user_1695481455039', 7, 110);
INSERT INTO public.users VALUES (149, 'user_1695480951910', 106, 120);
INSERT INTO public.users VALUES (174, 'user_1695481445205', 21, 81);
INSERT INTO public.users VALUES (81, 'user_1695480546573', 316, 945);
INSERT INTO public.users VALUES (83, 'user_1695480555782', 309, 450);
INSERT INTO public.users VALUES (84, 'user_1695480555781', 307, 787);
INSERT INTO public.users VALUES (72, 'user_1695480527350', 349, 364);
INSERT INTO public.users VALUES (171, 'user_1695481223506', 33, 929);
INSERT INTO public.users VALUES (173, 'user_1695481415408', 26, 650);
INSERT INTO public.users VALUES (96, 'user_1695480656247', 267, 0);
INSERT INTO public.users VALUES (104, 'user_1695480670038', 251, 0);
INSERT INTO public.users VALUES (106, 'user_1695480674498', 244, 0);
INSERT INTO public.users VALUES (107, 'user_1695480686185', 239, 0);
INSERT INTO public.users VALUES (111, 'user_1695480693991', 232, 289);
INSERT INTO public.users VALUES (40, 'user_1695480339179', 456, 0);
INSERT INTO public.users VALUES (41, 'user_1695480342344', 456, 210);
INSERT INTO public.users VALUES (42, 'user_1695480342343', 454, 992);
INSERT INTO public.users VALUES (140, 'user_1695480834963', 139, 39);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 179, true);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- PostgreSQL database dump complete
--

