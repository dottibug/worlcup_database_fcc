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
    round character varying NOT NULL,
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
    name character varying NOT NULL
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

INSERT INTO public.games VALUES (225, 2018, 'Final', 197, 198, 4, 2);
INSERT INTO public.games VALUES (226, 2018, 'Third Place', 199, 200, 2, 0);
INSERT INTO public.games VALUES (227, 2018, 'Semi-Final', 198, 200, 2, 1);
INSERT INTO public.games VALUES (228, 2018, 'Semi-Final', 197, 199, 1, 0);
INSERT INTO public.games VALUES (229, 2018, 'Quarter-Final', 198, 206, 3, 2);
INSERT INTO public.games VALUES (230, 2018, 'Quarter-Final', 200, 208, 2, 0);
INSERT INTO public.games VALUES (231, 2018, 'Quarter-Final', 199, 210, 2, 1);
INSERT INTO public.games VALUES (232, 2018, 'Quarter-Final', 197, 212, 2, 0);
INSERT INTO public.games VALUES (233, 2018, 'Eighth-Final', 200, 214, 2, 1);
INSERT INTO public.games VALUES (234, 2018, 'Eighth-Final', 208, 216, 1, 0);
INSERT INTO public.games VALUES (235, 2018, 'Eighth-Final', 199, 218, 3, 2);
INSERT INTO public.games VALUES (236, 2018, 'Eighth-Final', 210, 220, 2, 0);
INSERT INTO public.games VALUES (237, 2018, 'Eighth-Final', 198, 222, 2, 1);
INSERT INTO public.games VALUES (238, 2018, 'Eighth-Final', 206, 224, 2, 1);
INSERT INTO public.games VALUES (239, 2018, 'Eighth-Final', 212, 226, 2, 1);
INSERT INTO public.games VALUES (240, 2018, 'Eighth-Final', 197, 228, 4, 3);
INSERT INTO public.games VALUES (241, 2014, 'Final', 229, 228, 1, 0);
INSERT INTO public.games VALUES (242, 2014, 'Third Place', 231, 210, 3, 0);
INSERT INTO public.games VALUES (243, 2014, 'Semi-Final', 228, 231, 1, 0);
INSERT INTO public.games VALUES (244, 2014, 'Semi-Final', 229, 210, 7, 1);
INSERT INTO public.games VALUES (245, 2014, 'Quarter-Final', 231, 238, 1, 0);
INSERT INTO public.games VALUES (246, 2014, 'Quarter-Final', 228, 199, 1, 0);
INSERT INTO public.games VALUES (247, 2014, 'Quarter-Final', 210, 214, 2, 1);
INSERT INTO public.games VALUES (248, 2014, 'Quarter-Final', 229, 197, 1, 0);
INSERT INTO public.games VALUES (249, 2014, 'Eighth-Final', 210, 246, 2, 1);
INSERT INTO public.games VALUES (250, 2014, 'Eighth-Final', 214, 212, 2, 0);
INSERT INTO public.games VALUES (251, 2014, 'Eighth-Final', 197, 250, 2, 0);
INSERT INTO public.games VALUES (252, 2014, 'Eighth-Final', 229, 252, 2, 1);
INSERT INTO public.games VALUES (253, 2014, 'Eighth-Final', 231, 220, 2, 1);
INSERT INTO public.games VALUES (254, 2014, 'Eighth-Final', 238, 256, 2, 1);
INSERT INTO public.games VALUES (255, 2014, 'Eighth-Final', 228, 216, 1, 0);
INSERT INTO public.games VALUES (256, 2014, 'Eighth-Final', 199, 260, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (197, 'France');
INSERT INTO public.teams VALUES (198, 'Croatia');
INSERT INTO public.teams VALUES (199, 'Belgium');
INSERT INTO public.teams VALUES (200, 'England');
INSERT INTO public.teams VALUES (206, 'Russia');
INSERT INTO public.teams VALUES (208, 'Sweden');
INSERT INTO public.teams VALUES (210, 'Brazil');
INSERT INTO public.teams VALUES (212, 'Uruguay');
INSERT INTO public.teams VALUES (214, 'Colombia');
INSERT INTO public.teams VALUES (216, 'Switzerland');
INSERT INTO public.teams VALUES (218, 'Japan');
INSERT INTO public.teams VALUES (220, 'Mexico');
INSERT INTO public.teams VALUES (222, 'Denmark');
INSERT INTO public.teams VALUES (224, 'Spain');
INSERT INTO public.teams VALUES (226, 'Portugal');
INSERT INTO public.teams VALUES (228, 'Argentina');
INSERT INTO public.teams VALUES (229, 'Germany');
INSERT INTO public.teams VALUES (231, 'Netherlands');
INSERT INTO public.teams VALUES (238, 'Costa Rica');
INSERT INTO public.teams VALUES (246, 'Chile');
INSERT INTO public.teams VALUES (250, 'Nigeria');
INSERT INTO public.teams VALUES (252, 'Algeria');
INSERT INTO public.teams VALUES (256, 'Greece');
INSERT INTO public.teams VALUES (260, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 256, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 260, true);


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

