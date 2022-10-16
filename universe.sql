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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: five_table; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.five_table (
    galaxy_id integer,
    star_id integer,
    planet_id integer,
    moon_id integer,
    name character varying(60) NOT NULL,
    five_table_id integer NOT NULL
);


ALTER TABLE public.five_table OWNER TO freecodecamp;

--
-- Name: five_table_id_five_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.five_table_id_five_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.five_table_id_five_seq OWNER TO freecodecamp;

--
-- Name: five_table_id_five_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.five_table_id_five_seq OWNED BY public.five_table.five_table_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40) NOT NULL,
    alias text,
    long numeric,
    an_integer integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_galaxy_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_galaxy_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_galaxy_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_galaxy_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_galaxy_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(40) NOT NULL,
    planet_id integer,
    four_col integer,
    five_col integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_moon_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_moon_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_moon_seq OWNER TO freecodecamp;

--
-- Name: moon_id_moon_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_moon_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(40) NOT NULL,
    is_in_milk boolean,
    it_has_moon boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_planet_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_planet_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_planet_seq OWNER TO freecodecamp;

--
-- Name: planet_id_planet_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_planet_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(40) NOT NULL,
    galaxy_id integer,
    four_c integer,
    five_c integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_star_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_star_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_star_seq OWNER TO freecodecamp;

--
-- Name: star_id_star_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_star_seq OWNED BY public.star.star_id;


--
-- Name: five_table five_table_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.five_table ALTER COLUMN five_table_id SET DEFAULT nextval('public.five_table_id_five_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_galaxy_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_moon_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_planet_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_star_seq'::regclass);


--
-- Data for Name: five_table; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.five_table VALUES (1, 2, 1, 4, 'xd', 1);
INSERT INTO public.five_table VALUES (1, 2, 1, 4, 'xd2', 2);
INSERT INTO public.five_table VALUES (1, 2, 1, 4, 'xd3', 3);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'uno', 'one', 1, 1);
INSERT INTO public.galaxy VALUES (2, 'dos', 'two', 1, 1);
INSERT INTO public.galaxy VALUES (3, 'tres', 'three', 1, 1);
INSERT INTO public.galaxy VALUES (4, 'cuatro', 'four', 4, 4);
INSERT INTO public.galaxy VALUES (5, 'cinco', 'five', 5, 5);
INSERT INTO public.galaxy VALUES (6, 'seis', 'six', 6, 6);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'algo_here', 1, 1, 1);
INSERT INTO public.moon VALUES (2, 'algo_here', 1, 1, 2);
INSERT INTO public.moon VALUES (3, 'algo_here', 1, 2, 2);
INSERT INTO public.moon VALUES (4, 'algo_here', 3, 2, 2);
INSERT INTO public.moon VALUES (5, 'algo_here', 3, 2, 2);
INSERT INTO public.moon VALUES (6, 'algo_here', 3, 2, 2);
INSERT INTO public.moon VALUES (7, 'algo_here', 3, 2, 2);
INSERT INTO public.moon VALUES (8, 'algo_here', 3, 2, 2);
INSERT INTO public.moon VALUES (9, 'algo_here', 3, 2, 2);
INSERT INTO public.moon VALUES (10, 'algo_here', 3, 2, 2);
INSERT INTO public.moon VALUES (11, 'algo_here', 3, 2, 2);
INSERT INTO public.moon VALUES (12, 'algo_here', 3, 2, 2);
INSERT INTO public.moon VALUES (13, 'algo_here', 3, 2, 2);
INSERT INTO public.moon VALUES (14, 'algo_here', 3, 2, 2);
INSERT INTO public.moon VALUES (16, 'algo_here', 1, 1, 1);
INSERT INTO public.moon VALUES (17, 'algo_here', 1, 1, 1);
INSERT INTO public.moon VALUES (18, 'algo_here', 1, 1, 1);
INSERT INTO public.moon VALUES (19, 'algo_here', 1, 1, 1);
INSERT INTO public.moon VALUES (20, 'algo_here', 1, 1, 1);
INSERT INTO public.moon VALUES (21, 'algo_here', 1, 1, 1);
INSERT INTO public.moon VALUES (22, 'algo_here', 1, 1, 1);
INSERT INTO public.moon VALUES (23, 'algo_here', 1, 1, 1);
INSERT INTO public.moon VALUES (24, 'algo_here', 1, 2, 1);
INSERT INTO public.moon VALUES (25, 'algo_here', 1, 2, 5);
INSERT INTO public.moon VALUES (26, 'algo_here', 1, 2, 1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'luna_uno', true, false, 1);
INSERT INTO public.planet VALUES (2, 'luna_dos', true, false, 1);
INSERT INTO public.planet VALUES (3, 'luna_tres', true, false, 1);
INSERT INTO public.planet VALUES (4, 'luna_tres', true, false, 1);
INSERT INTO public.planet VALUES (5, 'luna_tres', true, false, 1);
INSERT INTO public.planet VALUES (6, 'luna_tres', true, false, 1);
INSERT INTO public.planet VALUES (7, 'luna_tres', true, false, 1);
INSERT INTO public.planet VALUES (8, 'luna_tres', true, false, 1);
INSERT INTO public.planet VALUES (9, 'luna_tres', true, false, 1);
INSERT INTO public.planet VALUES (10, 'luna_tres', true, false, 1);
INSERT INTO public.planet VALUES (11, 'luna_tres', true, false, 1);
INSERT INTO public.planet VALUES (12, 'luna_tres', true, false, 1);
INSERT INTO public.planet VALUES (13, 'luna_tres', true, false, 1);
INSERT INTO public.planet VALUES (14, 'luna_ultimas', true, false, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'star_uno', 1, 1, 1);
INSERT INTO public.star VALUES (2, 'star_dos', 2, 2, 2);
INSERT INTO public.star VALUES (3, 'star_tres', 3, 3, 3);
INSERT INTO public.star VALUES (4, 'star_cuatro', 3, 3, 3);
INSERT INTO public.star VALUES (5, 'star_cinco', 3, 3, 3);
INSERT INTO public.star VALUES (6, 'star_seis', 6, 6, 6);


--
-- Name: five_table_id_five_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.five_table_id_five_seq', 3, true);


--
-- Name: galaxy_id_galaxy_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_galaxy_seq', 6, true);


--
-- Name: moon_id_moon_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_moon_seq', 26, true);


--
-- Name: planet_id_planet_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_planet_seq', 14, true);


--
-- Name: star_id_star_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_star_seq', 6, true);


--
-- Name: five_table five_table_id_five_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.five_table
    ADD CONSTRAINT five_table_id_five_key UNIQUE (five_table_id);


--
-- Name: five_table five_table_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.five_table
    ADD CONSTRAINT five_table_pkey PRIMARY KEY (five_table_id);


--
-- Name: galaxy galaxy_id_galaxy_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_id_galaxy_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_id_moon_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_id_moon_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_id_planet_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_id_planet_key UNIQUE (planet_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_id_star_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_id_star_key UNIQUE (star_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

