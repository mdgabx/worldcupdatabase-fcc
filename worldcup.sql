--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying(20) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (85, 2018, 'Final', 1767, 1768, 4, 2);
INSERT INTO public.games VALUES (86, 2018, 'Third Place', 1769, 1770, 2, 0);
INSERT INTO public.games VALUES (87, 2018, 'Semi-Final', 1768, 1770, 2, 1);
INSERT INTO public.games VALUES (88, 2018, 'Semi-Final', 1767, 1769, 1, 0);
INSERT INTO public.games VALUES (89, 2018, 'Quarter-Final', 1768, 1771, 3, 2);
INSERT INTO public.games VALUES (90, 2018, 'Quarter-Final', 1770, 1772, 2, 0);
INSERT INTO public.games VALUES (91, 2018, 'Quarter-Final', 1769, 1773, 2, 1);
INSERT INTO public.games VALUES (92, 2018, 'Quarter-Final', 1767, 1774, 2, 0);
INSERT INTO public.games VALUES (93, 2018, 'Eighth-Final', 1770, 1775, 2, 1);
INSERT INTO public.games VALUES (94, 2018, 'Eighth-Final', 1772, 1776, 1, 0);
INSERT INTO public.games VALUES (95, 2018, 'Eighth-Final', 1769, 1777, 3, 2);
INSERT INTO public.games VALUES (96, 2018, 'Eighth-Final', 1773, 1778, 2, 0);
INSERT INTO public.games VALUES (97, 2018, 'Eighth-Final', 1768, 1779, 2, 1);
INSERT INTO public.games VALUES (98, 2018, 'Eighth-Final', 1771, 1780, 2, 1);
INSERT INTO public.games VALUES (99, 2018, 'Eighth-Final', 1774, 1781, 2, 1);
INSERT INTO public.games VALUES (100, 2018, 'Eighth-Final', 1767, 1782, 4, 3);
INSERT INTO public.games VALUES (101, 2014, 'Final', 1783, 1782, 1, 0);
INSERT INTO public.games VALUES (102, 2014, 'Third Place', 1784, 1773, 3, 0);
INSERT INTO public.games VALUES (103, 2014, 'Semi-Final', 1782, 1784, 1, 0);
INSERT INTO public.games VALUES (104, 2014, 'Semi-Final', 1783, 1773, 7, 1);
INSERT INTO public.games VALUES (105, 2014, 'Quarter-Final', 1784, 1785, 1, 0);
INSERT INTO public.games VALUES (106, 2014, 'Quarter-Final', 1782, 1769, 1, 0);
INSERT INTO public.games VALUES (107, 2014, 'Quarter-Final', 1773, 1775, 2, 1);
INSERT INTO public.games VALUES (108, 2014, 'Quarter-Final', 1783, 1767, 1, 0);
INSERT INTO public.games VALUES (109, 2014, 'Eighth-Final', 1773, 1786, 2, 1);
INSERT INTO public.games VALUES (110, 2014, 'Eighth-Final', 1775, 1774, 2, 0);
INSERT INTO public.games VALUES (111, 2014, 'Eighth-Final', 1767, 1787, 2, 0);
INSERT INTO public.games VALUES (112, 2014, 'Eighth-Final', 1783, 1788, 2, 1);
INSERT INTO public.games VALUES (113, 2014, 'Eighth-Final', 1784, 1778, 2, 1);
INSERT INTO public.games VALUES (114, 2014, 'Eighth-Final', 1785, 1789, 2, 1);
INSERT INTO public.games VALUES (115, 2014, 'Eighth-Final', 1782, 1776, 1, 0);
INSERT INTO public.games VALUES (116, 2014, 'Eighth-Final', 1769, 1790, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (1767, 'France');
INSERT INTO public.teams VALUES (1768, 'Croatia');
INSERT INTO public.teams VALUES (1769, 'Belgium');
INSERT INTO public.teams VALUES (1770, 'England');
INSERT INTO public.teams VALUES (1771, 'Russia');
INSERT INTO public.teams VALUES (1772, 'Sweden');
INSERT INTO public.teams VALUES (1773, 'Brazil');
INSERT INTO public.teams VALUES (1774, 'Uruguay');
INSERT INTO public.teams VALUES (1775, 'Colombia');
INSERT INTO public.teams VALUES (1776, 'Switzerland');
INSERT INTO public.teams VALUES (1777, 'Japan');
INSERT INTO public.teams VALUES (1778, 'Mexico');
INSERT INTO public.teams VALUES (1779, 'Denmark');
INSERT INTO public.teams VALUES (1780, 'Spain');
INSERT INTO public.teams VALUES (1781, 'Portugal');
INSERT INTO public.teams VALUES (1782, 'Argentina');
INSERT INTO public.teams VALUES (1783, 'Germany');
INSERT INTO public.teams VALUES (1784, 'Netherlands');
INSERT INTO public.teams VALUES (1785, 'Costa Rica');
INSERT INTO public.teams VALUES (1786, 'Chile');
INSERT INTO public.teams VALUES (1787, 'Nigeria');
INSERT INTO public.teams VALUES (1788, 'Algeria');
INSERT INTO public.teams VALUES (1789, 'Greece');
INSERT INTO public.teams VALUES (1790, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 117, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 1799, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: teams_name_idx; Type: INDEX; Schema: public; Owner: freecodecamp
--

CREATE INDEX teams_name_idx ON public.teams USING btree (name);


--
-- Name: teams_name_idx1; Type: INDEX; Schema: public; Owner: freecodecamp
--

CREATE INDEX teams_name_idx1 ON public.teams USING btree (name);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

