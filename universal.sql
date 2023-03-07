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
-- Name: comet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.comet (
    comet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    has_life boolean,
    description text NOT NULL,
    comet_exists boolean,
    distance_from_earth numeric,
    height_of_comet integer,
    width_of_comet integer
);


ALTER TABLE public.comet OWNER TO freecodecamp;

--
-- Name: comet_comet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.comet_comet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comet_comet_id_seq OWNER TO freecodecamp;

--
-- Name: comet_comet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.comet_comet_id_seq OWNED BY public.comet.comet_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    has_life boolean,
    description text NOT NULL,
    galaxy_exists boolean,
    distance_from_earth numeric,
    age_in_millions_of_years integer,
    galaxy_dimention text
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
    name character varying(30) NOT NULL,
    has_life boolean,
    description text NOT NULL,
    moon_exists boolean,
    distance_from_earth numeric,
    height_of_moon integer,
    width_of_moon integer,
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
    name character varying(30) NOT NULL,
    has_life boolean,
    description text NOT NULL,
    planet_exists boolean,
    distance_from_earth numeric,
    height_of_planet integer,
    width_of_planet integer,
    star_id integer
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
    name character varying(30) NOT NULL,
    has_life boolean,
    description text NOT NULL,
    star_exists boolean,
    distance_from_earth numeric,
    height_of_star integer,
    width_of_star integer,
    galaxy_id integer
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
-- Name: comet comet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet ALTER COLUMN comet_id SET DEFAULT nextval('public.comet_comet_id_seq'::regclass);


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
-- Data for Name: comet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.comet VALUES (1, 'l', NULL, 'k', NULL, NULL, NULL, NULL);
INSERT INTO public.comet VALUES (2, 'j', NULL, 'i', NULL, NULL, NULL, NULL);
INSERT INTO public.comet VALUES (3, 'h', NULL, 'g', NULL, NULL, NULL, NULL);
INSERT INTO public.comet VALUES (4, 'f', NULL, 'e', NULL, NULL, NULL, NULL);
INSERT INTO public.comet VALUES (5, 'd', NULL, 'c', NULL, NULL, NULL, NULL);
INSERT INTO public.comet VALUES (6, 'b', NULL, 'a', NULL, NULL, NULL, NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'milky way', false, 'The irregular band of star', true, 56634, 123034, '34134');
INSERT INTO public.galaxy VALUES (2, 'chocolate way', true, 'Beyond stars', false, 634, 3034, '94134');
INSERT INTO public.galaxy VALUES (3, 'Andromeda', true, 'great spiral galaxy', true, 9634, 73034, '5134');
INSERT INTO public.galaxy VALUES (4, 'Cygnus A', true, 'most powerful cosmic source of radio waves', true, 8634, 23034, '75134');
INSERT INTO public.galaxy VALUES (7, 'Bolt', false, 'comic sans power', false, 6334, 2334, '341');
INSERT INTO public.galaxy VALUES (8, 'Bolt', false, 'comic sans power', false, 34, 2334, '341');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'x', NULL, 'w', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (2, 'v', NULL, 'u', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (3, 't', NULL, 's', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'r', NULL, 'q', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'p', NULL, 'o', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'n', NULL, 'm', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'd', NULL, 'c', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'a', NULL, 'b', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'e', NULL, 'f', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'g', NULL, 'h', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'i', NULL, 'j', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'k', NULL, 'l', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'l', NULL, 'k', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'j', NULL, 'i', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'h', NULL, 'g', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'f', NULL, 'e', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'd', NULL, 'c', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'b', NULL, 'a', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'ldfd', NULL, 'kvdf', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'jfdf', NULL, 'ifd', NULL, NULL, NULL, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'earth', NULL, 'it is a planet for humans', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (2, 'no idea', NULL, 'it is a planet for none', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (3, 'jupiter', NULL, 'it is a planet for aliens', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (4, 'mars', NULL, 'it is a planet for red aliens', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (5, 'saturn', NULL, 'it is a planet for red', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (6, 'neptune', NULL, 'it is a planet for dead', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (7, 'uranus', NULL, 'it is a planet for others', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (8, 'fat earth', NULL, 'it is a planet for healthy humans', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (9, 'slim earth', NULL, 'it is a planet for slim humans', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (10, 'jupiterrr', NULL, 'hahahaha', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (11, 'tarus', NULL, 'broke people', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (12, 'terrr', NULL, 'hafgfgha', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (13, 'taus', NULL, 'broke aliens', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (14, 'd', NULL, 'c', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (15, 'a', NULL, 'b', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (16, 'e', NULL, 'f', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (17, 'g', NULL, 'h', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (18, 'i', NULL, 'j', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (19, 'k', NULL, 'l', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (20, 'x', NULL, 'w', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (21, 'v', NULL, 'u', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (22, 't', NULL, 's', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (23, 'r', NULL, 'q', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (24, 'p', NULL, 'o', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (25, 'n', NULL, 'm', NULL, NULL, NULL, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'star1', NULL, 'xyz', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (2, 'star2', NULL, 'ffdz', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (3, 'star3', NULL, 'abc', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (4, 'star4', NULL, 'abcde', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (5, 'star5', NULL, 'ade', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (6, 'star6', NULL, 'ader', NULL, NULL, NULL, NULL, NULL);


--
-- Name: comet_comet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.comet_comet_id_seq', 6, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 8, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 25, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: comet comet_distance_from_earth_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_distance_from_earth_key UNIQUE (distance_from_earth);


--
-- Name: comet comet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_pkey PRIMARY KEY (comet_id);


--
-- Name: galaxy galaxy_distance_from_earth_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_distance_from_earth_key UNIQUE (distance_from_earth);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_distance_from_earth_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_distance_from_earth_key UNIQUE (distance_from_earth);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_distance_from_earth_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_distance_from_earth_key UNIQUE (distance_from_earth);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_distance_from_earth_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_distance_from_earth_key UNIQUE (distance_from_earth);


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

