--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying NOT NULL,
    description text,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years numeric,
    planet_types integer,
    galaxy_types integer,
    distance_from_earth numeric
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
    name character varying NOT NULL,
    description text,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years numeric,
    planet_types integer,
    galaxy_types integer,
    distance_from_earth numeric,
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
    name character varying NOT NULL,
    description text,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years numeric,
    planet_types integer,
    galaxy_types integer,
    distance_from_earth numeric,
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
-- Name: rndm; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.rndm (
    rndm_id integer NOT NULL,
    name character varying NOT NULL,
    description text
);


ALTER TABLE public.rndm OWNER TO freecodecamp;

--
-- Name: rndm_rndm_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.rndm_rndm_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.rndm_rndm_id_seq OWNER TO freecodecamp;

--
-- Name: rndm_rndm_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.rndm_rndm_id_seq OWNED BY public.rndm.rndm_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying NOT NULL,
    description text,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years numeric,
    planet_types integer,
    galaxy_types integer,
    distance_from_earth numeric,
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
-- Name: rndm rndm_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.rndm ALTER COLUMN rndm_id SET DEFAULT nextval('public.rndm_rndm_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Our home galaxy', true, true, 13000, 5, 3, 0);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Another large spiral galaxy', false, true, 10000, 4, 2, 2500000);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'A small galaxy', true, false, 5000, 3, 1, 2800000);
INSERT INTO public.galaxy VALUES (4, 'Sombrero', 'A distant galaxy', false, true, 12000, 4, 2, 28000000);
INSERT INTO public.galaxy VALUES (5, 'Whirlpool', 'Famous spiral galaxy', true, true, 15000, 6, 3, 22000000);
INSERT INTO public.galaxy VALUES (6, 'Messier 87', 'A giant elliptical galaxy', false, true, 12000, 3, 1, 53000000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 'Earths moon', true, true, 4500, 1, 1, 0, 1);
INSERT INTO public.moon VALUES (2, 'Phobos', 'A moon of Mars', false, true, 4600, 2, 1, 100, 2);
INSERT INTO public.moon VALUES (3, 'Deimos', 'A small moon of Mars', false, true, 4600, 2, 1, 200, 2);
INSERT INTO public.moon VALUES (4, 'Europa', 'A moon of Jupiter', false, true, 4600, 4, 3, 300, 3);
INSERT INTO public.moon VALUES (5, 'Io', 'A volcanic moon of Jupiter', false, true, 4600, 3, 2, 400, 4);
INSERT INTO public.moon VALUES (6, 'Ganymede', 'The largest moon of Jupiter', false, true, 4600, 4, 3, 500, 4);
INSERT INTO public.moon VALUES (7, 'Titan', 'A moon of Saturn', false, true, 4600, 5, 3, 600, 5);
INSERT INTO public.moon VALUES (8, 'Rhea', 'A moon of Saturn', false, true, 4600, 3, 2, 700, 5);
INSERT INTO public.moon VALUES (9, 'Enceladus', 'A moon of Saturn', false, true, 4600, 2, 1, 800, 5);
INSERT INTO public.moon VALUES (10, 'Mimas', 'A moon of Saturn', false, true, 4600, 3, 2, 900, 5);
INSERT INTO public.moon VALUES (11, 'Triton', 'A moon of Neptune', false, true, 4600, 4, 2, 1000, 6);
INSERT INTO public.moon VALUES (12, 'Nereid', 'A moon of Neptune', false, true, 4600, 2, 1, 1100, 6);
INSERT INTO public.moon VALUES (13, 'Charon', 'A moon of Pluto', false, true, 4600, 1, 1, 1200, 7);
INSERT INTO public.moon VALUES (14, 'Miranda', 'A moon of Uranus', false, true, 4600, 3, 2, 1300, 8);
INSERT INTO public.moon VALUES (15, 'Ariel', 'A moon of Uranus', false, true, 4600, 2, 1, 1400, 8);
INSERT INTO public.moon VALUES (16, 'Umbriel', 'A moon of Uranus', false, true, 4600, 3, 2, 1500, 8);
INSERT INTO public.moon VALUES (17, 'Titania', 'A moon of Uranus', false, true, 4600, 4, 3, 1600, 8);
INSERT INTO public.moon VALUES (18, 'Oberon', 'A moon of Uranus', false, true, 4600, 4, 3, 1700, 8);
INSERT INTO public.moon VALUES (19, 'Hyperion', 'A moon of Saturn', false, true, 4600, 2, 1, 1800, 5);
INSERT INTO public.moon VALUES (21, 'Titan2', 'A moon of Saturn with a thick atmosphere', false, true, 4600, 5, 3, 1600, 5);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 'Our home planet', true, true, 4500, 3, 2, 0, 1);
INSERT INTO public.planet VALUES (2, 'Mars', 'A red planet', false, true, 4600, 2, 1, 225, 1);
INSERT INTO public.planet VALUES (3, 'Venus', 'The hottest planet', false, true, 4600, 3, 2, 40, 2);
INSERT INTO public.planet VALUES (4, 'Jupiter', 'The gas giant', false, true, 4600, 5, 3, 600, 2);
INSERT INTO public.planet VALUES (5, 'Saturn', 'The ringed planet', false, true, 4600, 5, 3, 1200, 2);
INSERT INTO public.planet VALUES (6, 'Uranus', 'An ice giant', false, true, 4600, 4, 2, 2500, 3);
INSERT INTO public.planet VALUES (7, 'Neptune', 'The farthest ice giant', false, true, 4600, 4, 2, 4000, 3);
INSERT INTO public.planet VALUES (8, 'Mercury', 'The smallest planet', false, true, 4600, 1, 1, 0, 4);
INSERT INTO public.planet VALUES (9, 'Pluto', 'The dwarf planet', false, true, 4600, 1, 1, 4000, 5);
INSERT INTO public.planet VALUES (10, 'Titan', 'A moon with an atmosphere', false, true, 4600, 5, 3, 1000, 5);
INSERT INTO public.planet VALUES (11, 'Europa', 'A moon of Jupiter', false, true, 4600, 3, 2, 400, 6);
INSERT INTO public.planet VALUES (12, 'Io', 'A volcanic moon of Jupiter', false, true, 4600, 3, 2, 500, 6);


--
-- Data for Name: rndm; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.rndm VALUES (1, 'a', NULL);
INSERT INTO public.rndm VALUES (2, 'b', NULL);
INSERT INTO public.rndm VALUES (3, 'c', NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'The star at the center of the solar system', true, true, 4600, 3, 2, 0, 1);
INSERT INTO public.star VALUES (2, 'Sirius', 'The brightest star in the night sky', false, true, 200, 2, 1, 8.6, 1);
INSERT INTO public.star VALUES (3, 'Alpha Centauri', 'The closest star system to the Earth', false, true, 5000, 4, 2, 4.37, 2);
INSERT INTO public.star VALUES (4, 'Betelgeuse', 'A red supergiant star', false, false, 800, 2, 1, 640, 3);
INSERT INTO public.star VALUES (5, 'Vega', 'A bright star in the Lyra constellation', false, true, 450, 5, 3, 25, 4);
INSERT INTO public.star VALUES (6, 'Rigel', 'A blue supergiant star', false, true, 800, 4, 2, 860, 5);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: rndm_rndm_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.rndm_rndm_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


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
-- Name: galaxy name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT name_unique UNIQUE (name);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: rndm rndm_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.rndm
    ADD CONSTRAINT rndm_name_key UNIQUE (name);


--
-- Name: rndm rndm_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.rndm
    ADD CONSTRAINT rndm_pkey PRIMARY KEY (rndm_id);


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

