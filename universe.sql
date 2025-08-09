--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
-- Name: astroids; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.astroids (
    astroids_id integer NOT NULL,
    name character varying(60) NOT NULL,
    part_of character varying(50)
);


ALTER TABLE public.astroids OWNER TO freecodecamp;

--
-- Name: astroids_astroid_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.astroids_astroid_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.astroids_astroid_id_seq OWNER TO freecodecamp;

--
-- Name: astroids_astroid_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.astroids_astroid_id_seq OWNED BY public.astroids.astroids_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(60) NOT NULL,
    description text,
    has_life boolean,
    is_sperical boolean,
    age_in_million_of_years integer,
    distance_from_earth integer,
    mass numeric
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(60) NOT NULL,
    description text,
    has_life boolean,
    is_sperical boolean,
    age_in_million_of_years integer,
    distance_from_earth integer,
    mass numeric,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(60) NOT NULL,
    description text,
    has_life boolean,
    is_sperical boolean,
    age_in_million_of_years integer,
    distance_from_earth integer,
    mass numeric,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(60) NOT NULL,
    description text,
    has_life boolean,
    is_sperical boolean,
    age_in_million_of_years integer,
    distance_from_earth integer,
    mass numeric,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: astroids astroids_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astroids ALTER COLUMN astroids_id SET DEFAULT nextval('public.astroids_astroid_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: astroids; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.astroids VALUES (4, 'flamingo', NULL);
INSERT INTO public.astroids VALUES (1, 'flower', 'stem');
INSERT INTO public.astroids VALUES (2, 'rose', 'flower');
INSERT INTO public.astroids VALUES (3, 'jasmine', 'plant');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'milkyway', 'it include solar system', true, true, 1000, 0, 1000);
INSERT INTO public.galaxy VALUES (2, 'Century', 'dont know it has solar system or not', false, false, 1001, 1000, 1001);
INSERT INTO public.galaxy VALUES (3, 'double century', 'dont know it has solar system or not', false, false, 1002, 1002, 1002);
INSERT INTO public.galaxy VALUES (4, 'Triple Century', 'dont know it has solar system or not', false, false, 1003, 1003, 1003);
INSERT INTO public.galaxy VALUES (5, 'Fifty', 'it include solar system', true, true, 1000, 0, 1000);
INSERT INTO public.galaxy VALUES (6, 'No Century', 'dont know it has solar system or not', false, false, 1001, 1000, 1001);
INSERT INTO public.galaxy VALUES (7, 'Fifth century', 'dont know it has solar system or not', false, false, 1002, 1002, 1002);
INSERT INTO public.galaxy VALUES (8, 'Fourth Century', 'dont know it has solar system or not', false, false, 1003, 1003, 1003);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'frog', 'not part of solar system', true, true, 100, 100, 100, 6);
INSERT INTO public.moon VALUES (2, 'camal', 'not part of solar system', false, true, 101, 101, 101, 5);
INSERT INTO public.moon VALUES (3, 'doll', 'not part of solar system', true, true, 1000, 1000, 1000, 4);
INSERT INTO public.moon VALUES (4, 'boll', 'not part of solar system', true, true, 100, 100, 100, 3);
INSERT INTO public.moon VALUES (5, 'ant', 'not part of solar system', false, true, 101, 101, 101, 2);
INSERT INTO public.moon VALUES (6, 'elephent', 'not part of solar system', true, true, 1000, 1000, 1000, 1);
INSERT INTO public.moon VALUES (7, 'man', 'not part of solar system', true, true, 100, 100, 100, 12);
INSERT INTO public.moon VALUES (8, 'lion', 'not part of solar system', false, true, 101, 101, 101, 11);
INSERT INTO public.moon VALUES (9, 'king', 'not part of solar system', true, true, 1000, 1000, 1000, 10);
INSERT INTO public.moon VALUES (10, 'jockey', 'not part of solar system', true, true, 100, 100, 100, 9);
INSERT INTO public.moon VALUES (11, 'ili', 'not part of solar system', false, true, 101, 101, 101, 8);
INSERT INTO public.moon VALUES (12, 'goat', 'not part of solar system', true, true, 1000, 1000, 1000, 7);
INSERT INTO public.moon VALUES (13, 'owul', 'not part of solar system', true, true, 100, 100, 100, 12);
INSERT INTO public.moon VALUES (14, 'manga', 'not part of solar system', false, true, 101, 101, 101, 11);
INSERT INTO public.moon VALUES (15, 'ninga', 'not part of solar system', true, true, 1000, 1000, 1000, 10);
INSERT INTO public.moon VALUES (16, 'nagin', 'not part of solar system', true, true, 100, 100, 100, 9);
INSERT INTO public.moon VALUES (17, 'nocknock', 'not part of solar system', false, true, 101, 101, 101, 8);
INSERT INTO public.moon VALUES (18, 'navilu', 'not part of solar system', true, true, 1000, 1000, 1000, 7);
INSERT INTO public.moon VALUES (19, 'raja', 'Queen of solar system', true, true, 100, 100, 100, 6);
INSERT INTO public.moon VALUES (20, 'qick', 'part of solar system', false, true, 101, 101, 101, 5);
INSERT INTO public.moon VALUES (21, 'parrot', 'part of solar system', true, true, 1000, 1000, 1000, 4);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'jupiter', 'Queen of solar system', true, true, 100, 100, 100, 3);
INSERT INTO public.planet VALUES (2, 'mars', 'part of solar system', false, true, 101, 101, 101, 2);
INSERT INTO public.planet VALUES (3, 'earth', 'living planet solar system', true, true, 1000, 1000, 1000, 1);
INSERT INTO public.planet VALUES (4, 'pluto', 'Queen of solar system', true, true, 100, 100, 100, 6);
INSERT INTO public.planet VALUES (5, 'neptune', 'part of solar system', false, true, 101, 101, 101, 5);
INSERT INTO public.planet VALUES (6, 'urenus', 'part of solar system', true, true, 1000, 1000, 1000, 4);
INSERT INTO public.planet VALUES (7, 'brum', 'not part of solar system', true, true, 100, 100, 100, 6);
INSERT INTO public.planet VALUES (8, 'crum', 'not part of solar system', false, true, 101, 101, 101, 5);
INSERT INTO public.planet VALUES (9, 'crim', 'not part of solar system', true, true, 1000, 1000, 1000, 4);
INSERT INTO public.planet VALUES (10, 'dog', 'not part of solar system', true, true, 100, 100, 100, 3);
INSERT INTO public.planet VALUES (11, 'cat', 'not part of solar system', false, true, 101, 101, 101, 2);
INSERT INTO public.planet VALUES (12, 'ban', 'not part of solar system', true, true, 1000, 1000, 1000, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'sun', 'king of solar system', true, true, 100, 100, 100, 1);
INSERT INTO public.star VALUES (2, 'tan', 'near to solar system', false, true, 101, 101, 101, 1);
INSERT INTO public.star VALUES (3, 'tun', 'away from solar system', true, true, 1000, 1000, 1000, 2);
INSERT INTO public.star VALUES (4, 'junjun', 'king of solar system', true, true, 100, 100, 100, 3);
INSERT INTO public.star VALUES (5, 'jun', 'near to solar system', false, true, 101, 101, 101, 3);
INSERT INTO public.star VALUES (6, 'jan', 'away from solar system', true, true, 1000, 1000, 1000, 2);
INSERT INTO public.star VALUES (7, 'April', 'king of solar system', true, true, 100, 100, 100, 6);
INSERT INTO public.star VALUES (8, 'feb', 'near to solar system', false, true, 101, 101, 101, 5);
INSERT INTO public.star VALUES (9, 'march', 'away from solar system', true, true, 1000, 1000, 1000, 4);


--
-- Name: astroids_astroid_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.astroids_astroid_id_seq', 4, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 8, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 9, true);


--
-- Name: astroids astroids_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astroids
    ADD CONSTRAINT astroids_pkey PRIMARY KEY (astroids_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_nme_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_nme_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: astroids unique_astroid_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astroids
    ADD CONSTRAINT unique_astroid_name UNIQUE (name);


--
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

