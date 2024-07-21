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
-- Name: dummy_table; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.dummy_table (
    dummy_table_id integer NOT NULL,
    name character varying(30) NOT NULL,
    dummy_col character varying(30)
);


ALTER TABLE public.dummy_table OWNER TO freecodecamp;

--
-- Name: dummy_table_dummy_table_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.dummy_table_dummy_table_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dummy_table_dummy_table_id_seq OWNER TO freecodecamp;

--
-- Name: dummy_table_dummy_table_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.dummy_table_dummy_table_id_seq OWNED BY public.dummy_table.dummy_table_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    age integer NOT NULL,
    galaxy_types character varying(30)
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
    distant_to_planet numeric(4,1),
    planet_id integer NOT NULL,
    has_water boolean
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
    description text,
    has_moon boolean,
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
    name character varying(30) NOT NULL,
    age integer NOT NULL,
    has_life boolean,
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
-- Name: dummy_table dummy_table_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dummy_table ALTER COLUMN dummy_table_id SET DEFAULT nextval('public.dummy_table_dummy_table_id_seq'::regclass);


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
-- Data for Name: dummy_table; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.dummy_table VALUES (1, 'unique-dummy-row-0', 'dummy-value-51');
INSERT INTO public.dummy_table VALUES (2, 'unique-dummy-row-1', 'dummy-value-33');
INSERT INTO public.dummy_table VALUES (3, 'unique-dummy-row-2', 'dummy-value-86');
INSERT INTO public.dummy_table VALUES (4, 'unique-dummy-row-3', 'dummy-value-76');
INSERT INTO public.dummy_table VALUES (5, 'unique-dummy-row-4', 'dummy-value-49');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'unique-galaxy-0', 'description-for-galaxy-0', 2, 'galaxy-type-1');
INSERT INTO public.galaxy VALUES (2, 'unique-galaxy-1', 'description-for-galaxy-1', 11, 'galaxy-type-0');
INSERT INTO public.galaxy VALUES (3, 'unique-galaxy-2', 'description-for-galaxy-2', 7, 'galaxy-type-1');
INSERT INTO public.galaxy VALUES (4, 'unique-galaxy-3', 'description-for-galaxy-3', 11, 'galaxy-type-1');
INSERT INTO public.galaxy VALUES (5, 'unique-galaxy-4', 'description-for-galaxy-4', 11, 'galaxy-type-1');
INSERT INTO public.galaxy VALUES (6, 'unique-galaxy-5', 'description-for-galaxy-5', 5, 'galaxy-type-3');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'unique-moon-0', 5.5, 12, true);
INSERT INTO public.moon VALUES (2, 'unique-moon-1', 4.5, 6, false);
INSERT INTO public.moon VALUES (3, 'unique-moon-2', 4.3, 6, true);
INSERT INTO public.moon VALUES (4, 'unique-moon-3', 5.8, 10, false);
INSERT INTO public.moon VALUES (5, 'unique-moon-4', 4.8, 11, false);
INSERT INTO public.moon VALUES (6, 'unique-moon-5', 7.9, 6, true);
INSERT INTO public.moon VALUES (7, 'unique-moon-6', 5.8, 11, true);
INSERT INTO public.moon VALUES (8, 'unique-moon-7', 2.2, 12, true);
INSERT INTO public.moon VALUES (9, 'unique-moon-8', 7.4, 10, true);
INSERT INTO public.moon VALUES (10, 'unique-moon-9', 3.3, 10, true);
INSERT INTO public.moon VALUES (11, 'unique-moon-10', 8.7, 11, true);
INSERT INTO public.moon VALUES (12, 'unique-moon-11', 8.9, 11, false);
INSERT INTO public.moon VALUES (13, 'unique-moon-12', 2.2, 6, true);
INSERT INTO public.moon VALUES (14, 'unique-moon-13', 3.7, 11, true);
INSERT INTO public.moon VALUES (15, 'unique-moon-14', 8.9, 6, false);
INSERT INTO public.moon VALUES (16, 'unique-moon-15', 3.8, 11, true);
INSERT INTO public.moon VALUES (17, 'unique-moon-16', 2.2, 11, true);
INSERT INTO public.moon VALUES (18, 'unique-moon-17', 7.8, 10, true);
INSERT INTO public.moon VALUES (19, 'unique-moon-18', 7.6, 7, false);
INSERT INTO public.moon VALUES (20, 'unique-moon-19', 3.8, 1, false);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'unique-planet-0', 'description-planet-0', true, 1);
INSERT INTO public.planet VALUES (2, 'unique-planet-1', 'description-planet-1', false, 5);
INSERT INTO public.planet VALUES (3, 'unique-planet-2', 'description-planet-2', false, 1);
INSERT INTO public.planet VALUES (4, 'unique-planet-3', 'description-planet-3', false, 5);
INSERT INTO public.planet VALUES (5, 'unique-planet-4', 'description-planet-4', false, 6);
INSERT INTO public.planet VALUES (6, 'unique-planet-5', 'description-planet-5', true, 2);
INSERT INTO public.planet VALUES (7, 'unique-planet-6', 'description-planet-6', true, 2);
INSERT INTO public.planet VALUES (8, 'unique-planet-7', 'description-planet-7', false, 5);
INSERT INTO public.planet VALUES (9, 'unique-planet-8', 'description-planet-8', false, 3);
INSERT INTO public.planet VALUES (10, 'unique-planet-9', 'description-planet-9', true, 1);
INSERT INTO public.planet VALUES (11, 'unique-planet-10', 'description-planet-10', true, 6);
INSERT INTO public.planet VALUES (12, 'unique-planet-11', 'description-planet-11', true, 5);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'unique-star-0', 3, false, 3);
INSERT INTO public.star VALUES (2, 'unique-star-1', 10, false, 4);
INSERT INTO public.star VALUES (3, 'unique-star-2', 9, false, 5);
INSERT INTO public.star VALUES (4, 'unique-star-3', 7, false, 2);
INSERT INTO public.star VALUES (5, 'unique-star-4', 6, false, 5);
INSERT INTO public.star VALUES (6, 'unique-star-5', 4, false, 4);


--
-- Name: dummy_table_dummy_table_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.dummy_table_dummy_table_id_seq', 5, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: dummy_table dummy_table_dummy_col_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dummy_table
    ADD CONSTRAINT dummy_table_dummy_col_key UNIQUE (dummy_col);


--
-- Name: dummy_table dummy_table_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dummy_table
    ADD CONSTRAINT dummy_table_name_key UNIQUE (name);


--
-- Name: dummy_table dummy_table_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dummy_table
    ADD CONSTRAINT dummy_table_pkey PRIMARY KEY (dummy_table_id);


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

