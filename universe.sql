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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(60) NOT NULL,
    description text,
    has_life boolean,
    age_in_millions_of_years numeric(7,1),
    distance_from_earth_in_light_years integer
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
-- Name: galaxy_types; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy_types (
    galaxy_types_id integer NOT NULL,
    name character varying(20) NOT NULL,
    hubble_stage integer
);


ALTER TABLE public.galaxy_types OWNER TO freecodecamp;

--
-- Name: galaxy_types_galaxy_types_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_types_galaxy_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_types_galaxy_types_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_types_galaxy_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_types_galaxy_types_id_seq OWNED BY public.galaxy_types.galaxy_types_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(60) NOT NULL,
    planet_id integer,
    description text,
    has_life boolean,
    age_in_millions_of_years numeric(7,1)
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
    star_id integer,
    description text,
    has_life boolean,
    age_in_millions_of_years numeric(7,1),
    distance_from_earth_in_light_years integer
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
    galaxy_id integer,
    description text,
    has_life boolean,
    age_in_millions_of_years numeric(7,1),
    distance_from_earth_in_light_years integer
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
-- Name: galaxy_types galaxy_types_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types ALTER COLUMN galaxy_types_id SET DEFAULT nextval('public.galaxy_types_galaxy_types_id_seq'::regclass);


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
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Closest galaxy to Milky Way', false, 10000.0, 3);
INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Home galaxy of the Solar System', true, 12600.0, 0);
INSERT INTO public.galaxy VALUES (3, 'Large Magellanic Cloud', 'Satellite galaxy of the Milky Way', false, 13000.0, 158200);
INSERT INTO public.galaxy VALUES (4, 'Small Magellanic Cloud', 'Dwarf galaxy near Milky Way', false, 13000.0, 190000);
INSERT INTO public.galaxy VALUES (5, 'Triangulum Galaxy', 'Located in the triangulum constellation', false, NULL, 2730000);
INSERT INTO public.galaxy VALUES (6, 'Messier 81', 'Grand design sprial galaxy with massive black hole', false, NULL, 11700000);


--
-- Data for Name: galaxy_types; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy_types VALUES (1, 'cE', -6);
INSERT INTO public.galaxy_types VALUES (2, 'E', -5);
INSERT INTO public.galaxy_types VALUES (3, 'E+', -4);
INSERT INTO public.galaxy_types VALUES (4, 'S0-', -3);
INSERT INTO public.galaxy_types VALUES (7, 'S00', -2);
INSERT INTO public.galaxy_types VALUES (8, 'S0+', -1);
INSERT INTO public.galaxy_types VALUES (9, 'S0/a', 0);
INSERT INTO public.galaxy_types VALUES (10, 'Sa', 1);
INSERT INTO public.galaxy_types VALUES (11, 'Sab', 2);
INSERT INTO public.galaxy_types VALUES (12, 'Sb', 3);
INSERT INTO public.galaxy_types VALUES (13, 'Sbc', 4);
INSERT INTO public.galaxy_types VALUES (14, 'Sc', 5);
INSERT INTO public.galaxy_types VALUES (15, 'Scd', 6);
INSERT INTO public.galaxy_types VALUES (16, 'Sd', 7);
INSERT INTO public.galaxy_types VALUES (17, 'Sdm', 8);
INSERT INTO public.galaxy_types VALUES (18, 'Sm', 9);
INSERT INTO public.galaxy_types VALUES (19, 'Im', 10);
INSERT INTO public.galaxy_types VALUES (20, '', 11);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 2, 'Orbits around Earth', false, 4500.0);
INSERT INTO public.moon VALUES (2, 'Phobos', 3, 'Orbits around Mars', false, 200.0);
INSERT INTO public.moon VALUES (3, 'Deimos', 3, 'Orbits around Mars', false, NULL);
INSERT INTO public.moon VALUES (4, 'Metis', 5, 'Orbits around Jupiter', false, NULL);
INSERT INTO public.moon VALUES (5, 'Adrastra', 5, 'Orbits around Jupiter', false, NULL);
INSERT INTO public.moon VALUES (6, 'Amalthea', 5, 'Orbits around Jupiter', false, NULL);
INSERT INTO public.moon VALUES (7, 'Thebe', 5, 'Orbits around Jupiter', false, NULL);
INSERT INTO public.moon VALUES (8, 'Io', 5, 'Orbits around Jupiter', false, NULL);
INSERT INTO public.moon VALUES (9, 'Europa', 5, 'Orbits around Jupiter', false, NULL);
INSERT INTO public.moon VALUES (10, 'Ganymede', 5, 'Orbits around Jupiter', false, NULL);
INSERT INTO public.moon VALUES (11, 'Callisto', 5, 'Orbits around Jupiter', false, NULL);
INSERT INTO public.moon VALUES (12, 'Mimas', 6, 'Orbits around Saturn', false, NULL);
INSERT INTO public.moon VALUES (13, 'Enceladus', 6, 'Orbits around Saturn', false, NULL);
INSERT INTO public.moon VALUES (14, 'Tethys', 6, 'Orbits around Saturn', false, NULL);
INSERT INTO public.moon VALUES (15, 'Dione', 6, 'Orbits around Saturn', false, NULL);
INSERT INTO public.moon VALUES (16, 'Rhea', 6, 'Orbits around Saturn', false, NULL);
INSERT INTO public.moon VALUES (17, 'Titan', 6, 'Orbits around Saturn', false, NULL);
INSERT INTO public.moon VALUES (18, 'Iapetus', 6, 'Orbits around Saturn', false, NULL);
INSERT INTO public.moon VALUES (19, 'Cordelia', 7, 'Orbits around Uranus', false, NULL);
INSERT INTO public.moon VALUES (20, 'Naiad', 8, 'Orbits around Neptune', false, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 1, 'Nearest planet to the Sun', false, 4500.0, NULL);
INSERT INTO public.planet VALUES (2, 'Earth', 1, 'Home planet', true, 4500.0, NULL);
INSERT INTO public.planet VALUES (3, 'Mars', 1, 'Fourth closest planet to the Sun', false, 4500.0, NULL);
INSERT INTO public.planet VALUES (4, 'Venus', 1, 'Second closest planet to the Sun', false, 4500.0, NULL);
INSERT INTO public.planet VALUES (5, 'Jupiter', 1, 'Fifth closest planet to the Sun', false, 4500.0, NULL);
INSERT INTO public.planet VALUES (6, 'Saturn', 1, 'Sixth closest planet to the Sun', false, 4500.0, NULL);
INSERT INTO public.planet VALUES (7, 'Uranus', 1, 'Seventh closest planet to the Sun', false, 4500.0, NULL);
INSERT INTO public.planet VALUES (8, 'Neptune', 1, 'Eighth closest planet to the Sun', false, 4500.0, NULL);
INSERT INTO public.planet VALUES (9, 'Pluto', 1, 'Dwarf planet in Solar System', false, 4500.0, NULL);
INSERT INTO public.planet VALUES (10, 'Ceres', 1, 'Dwarf planet in Solar System', false, 4500.0, NULL);
INSERT INTO public.planet VALUES (11, 'Sedna', 1, 'Dwarf planet in outermost reaches of  Solar System', false, 4500.0, NULL);
INSERT INTO public.planet VALUES (12, 'Orcus', 1, 'Dwarf planet in Solar System', false, 4500.0, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, 'Star at center of Solar System', true, 4600.0, 1);
INSERT INTO public.star VALUES (2, 'Antares', 1, 'Brightest star in the Scorpius constellation', false, 15.0, 550);
INSERT INTO public.star VALUES (3, 'Betelgeuse', 1, 'Red supergiant in Orion constellation', false, 8.5, 650);
INSERT INTO public.star VALUES (4, 'KW Sagittarii', 1, 'Red supergiant in Sagittarius constellation', false, NULL, 6200);
INSERT INTO public.star VALUES (5, 'VY Canis Majoris', 1, 'Red supergiant in Canis Major constellation', false, 8.2, 4900);
INSERT INTO public.star VALUES (6, 'UY Scuti', 1, 'One of largest known stars by radius', false, NULL, 9500);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: galaxy_types_galaxy_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_types_galaxy_types_id_seq', 20, true);


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
-- Name: galaxy_types galaxy_types_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT galaxy_types_name_key UNIQUE (name);


--
-- Name: galaxy_types galaxy_types_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT galaxy_types_pkey PRIMARY KEY (galaxy_types_id);


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

