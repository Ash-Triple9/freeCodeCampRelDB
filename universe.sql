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
-- Name: black_hole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.black_hole (
    black_hole_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age numeric(10,2) NOT NULL,
    size_in_solar_radius integer,
    weight_in_solar_mass integer,
    type character varying(30),
    description text,
    galaxy_orbits_them boolean
);


ALTER TABLE public.black_hole OWNER TO freecodecamp;

--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.black_hole_black_hole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.black_hole_black_hole_id_seq OWNER TO freecodecamp;

--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.black_hole_black_hole_id_seq OWNED BY public.black_hole.black_hole_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age numeric(10,2) NOT NULL,
    size_in_light_years integer,
    weight_in_solar_mass integer,
    description text,
    shape character varying(30),
    has_habitable_planets boolean
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
    age numeric(10,2) NOT NULL,
    description text,
    shape character varying(30),
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
    age numeric(10,2) NOT NULL,
    size_in_solar_radius integer,
    weight_in_solar_mass integer,
    type character varying(30),
    is_habitable boolean,
    star_id integer,
    description text
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
    age numeric(10,2) NOT NULL,
    size_in_solar_radius integer,
    weight_in_solar_mass integer,
    type character varying(30),
    description text,
    shape character varying(30),
    is_stable boolean,
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
-- Name: black_hole black_hole_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole ALTER COLUMN black_hole_id SET DEFAULT nextval('public.black_hole_black_hole_id_seq'::regclass);


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
-- Data for Name: black_hole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.black_hole VALUES (1, 'Sagittarius A*', 13.50, 12000000, 4300000, 'Supermassive', 'Central black hole of the Milky Way.', true);
INSERT INTO public.black_hole VALUES (2, 'M87*', 13.20, 19000000, 2000000000, 'Supermassive', 'Imaged black hole at the center of Messier 87.', true);
INSERT INTO public.black_hole VALUES (3, 'Andromeda Core BH', 10.00, 3000000, 100000000, 'Supermassive', 'Likely central supermassive black hole in the Andromeda galaxy.', true);
INSERT INTO public.black_hole VALUES (4, 'Stellar Remnant X1', 0.05, 20, 12, 'Stellar-Mass', 'Hypothetical stellar-mass black hole formed from a recent core-collapse event.', false);
INSERT INTO public.black_hole VALUES (5, 'Whirlpool Core BH', 8.10, 2500000, 160000000, 'Supermassive', 'Central black hole associated with the Whirlpool galaxy nucleus.', true);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 13.60, 105700, 1500000000, 'Barred spiral galaxy that contains the Solar System and billions of stars.', 'Barred Spiral', true);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 10.10, 220000, 1230000000, 'Nearest large spiral galaxy to the Milky Way and on a collision course with it.', 'Spiral', true);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 12.00, 60000, 500000000, 'Smaller spiral galaxy in the Local Group known for active star formation.', 'Spiral', true);
INSERT INTO public.galaxy VALUES (4, 'Whirlpool', 8.20, 76000, 1600000000, 'Grand-design interacting spiral galaxy with pronounced spiral arms.', 'Spiral', false);
INSERT INTO public.galaxy VALUES (5, 'Large Magellanic Cloud', 13.00, 14000, 100000000, 'Satellite galaxy of the Milky Way with rich nebulae and young stars.', 'Irregular', false);
INSERT INTO public.galaxy VALUES (6, 'Messier 87', 13.20, 132000, 2000000000, 'Massive elliptical galaxy in Virgo cluster that hosts a supermassive black hole.', 'Elliptical', false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 4.50, 'Natural satellite of Earth that stabilizes axial tilt and drives tides.', 'Spherical', 3);
INSERT INTO public.moon VALUES (2, 'Phobos', 4.30, 'Larger and innermost moon of Mars with a decaying orbit.', 'Irregular', 4);
INSERT INTO public.moon VALUES (3, 'Deimos', 4.30, 'Smaller outer moon of Mars with a smoother surface than Phobos.', 'Irregular', 4);
INSERT INTO public.moon VALUES (4, 'Io', 4.50, 'Volcanically active moon of Jupiter shaped by tidal heating.', 'Spherical', 5);
INSERT INTO public.moon VALUES (5, 'Europa', 4.50, 'Icy moon of Jupiter with a subsurface ocean and astrobiology potential.', 'Spherical', 5);
INSERT INTO public.moon VALUES (6, 'Ganymede', 4.50, 'Largest moon in the Solar System with its own magnetic field.', 'Spherical', 5);
INSERT INTO public.moon VALUES (7, 'Callisto', 4.50, 'Heavily cratered outer Galilean moon of Jupiter.', 'Spherical', 5);
INSERT INTO public.moon VALUES (8, 'Titan', 4.50, 'Largest moon of Saturn with dense nitrogen atmosphere and methane lakes.', 'Spherical', 6);
INSERT INTO public.moon VALUES (9, 'Enceladus', 4.50, 'Small icy moon of Saturn known for water-rich cryovolcanic plumes.', 'Spherical', 6);
INSERT INTO public.moon VALUES (10, 'Mimas', 4.50, 'Small Saturnian moon with a large impact crater giving it a distinctive appearance.', 'Spherical', 6);
INSERT INTO public.moon VALUES (11, 'Tethys', 4.50, 'Mid-sized icy moon of Saturn with extensive fracture systems.', 'Spherical', 6);
INSERT INTO public.moon VALUES (12, 'Dione', 4.50, 'Saturnian moon with bright ice cliffs and an ancient cratered terrain.', 'Spherical', 6);
INSERT INTO public.moon VALUES (13, 'Rhea', 4.50, 'Second-largest moon of Saturn composed mostly of water ice.', 'Spherical', 6);
INSERT INTO public.moon VALUES (14, 'Iapetus', 4.50, 'Two-toned Saturnian moon with a prominent equatorial ridge.', 'Spherical', 6);
INSERT INTO public.moon VALUES (15, 'Miranda', 4.50, 'Innermost major moon of Uranus with extreme cliffs and mixed terrain.', 'Irregular Spherical', 7);
INSERT INTO public.moon VALUES (16, 'Ariel', 4.50, 'Bright moon of Uranus showing signs of resurfacing and tectonic activity.', 'Spherical', 7);
INSERT INTO public.moon VALUES (17, 'Umbriel', 4.50, 'Dark, heavily cratered moon of Uranus with ancient surface features.', 'Spherical', 7);
INSERT INTO public.moon VALUES (18, 'Titania', 4.50, 'Largest moon of Uranus with long fault valleys and impact basins.', 'Spherical', 7);
INSERT INTO public.moon VALUES (19, 'Oberon', 4.50, 'Outer major moon of Uranus with a heavily cratered icy crust.', 'Spherical', 7);
INSERT INTO public.moon VALUES (20, 'Triton', 4.50, 'Largest moon of Neptune with retrograde orbit and active nitrogen geysers.', 'Spherical', 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 4.50, 0, 0, 'Terrestrial', false, 1, 'Small rocky world with extreme temperature variation and no substantial atmosphere.');
INSERT INTO public.planet VALUES (2, 'Venus', 4.50, 0, 0, 'Terrestrial', false, 1, 'Rocky planet with a dense carbon dioxide atmosphere and runaway greenhouse effect.');
INSERT INTO public.planet VALUES (3, 'Earth', 4.54, 0, 0, 'Terrestrial', true, 1, 'Habitable planet with liquid water oceans, plate tectonics, and a protective magnetic field.');
INSERT INTO public.planet VALUES (4, 'Mars', 4.60, 0, 0, 'Terrestrial', false, 1, 'Cold desert world with polar caps and evidence of ancient flowing water.');
INSERT INTO public.planet VALUES (5, 'Jupiter', 4.50, 0, 0, 'Gas Giant', false, 1, 'Largest planet in the Solar System with intense storms and many moons.');
INSERT INTO public.planet VALUES (6, 'Saturn', 4.50, 0, 0, 'Gas Giant', false, 1, 'Gas giant recognized for its bright ring system and diverse satellite family.');
INSERT INTO public.planet VALUES (7, 'Uranus', 4.50, 0, 0, 'Ice Giant', false, 1, 'Ice giant with an extreme axial tilt and a faint ring system.');
INSERT INTO public.planet VALUES (8, 'Neptune', 4.50, 0, 0, 'Ice Giant', false, 1, 'Distant ice giant with strong winds and a dynamic atmosphere.');
INSERT INTO public.planet VALUES (9, 'Proxima b', 4.80, 0, 0, 'Rocky Exoplanet', false, 2, 'Temperate-zone exoplanet candidate with uncertain surface conditions.');
INSERT INTO public.planet VALUES (10, 'Sirius A-I', 0.20, 0, 0, 'Hot Super-Earth', false, 3, 'Hypothetical close-in rocky exoplanet around Sirius A with high surface temperature.');
INSERT INTO public.planet VALUES (11, 'TRI-Ocean-4', 1.00, 0, 0, 'Ocean World', true, 6, 'Water-rich exoplanet candidate with possible deep global oceans.');
INSERT INTO public.planet VALUES (12, 'Kepler-452b Analog', 6.00, 0, 0, 'Super-Earth', true, 5, 'Potentially habitable super-Earth analog in a longer-period orbit.');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 4.60, 1, 1, 'G-Type Main-Sequence', 'The host star of Earth and center of the Solar System.', 'Spherical', true, 1);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 4.85, 0, 0, 'Red Dwarf', 'Nearest known star to the Sun and host of at least one rocky exoplanet.', 'Spherical', true, 1);
INSERT INTO public.star VALUES (3, 'Sirius A', 0.24, 2, 2, 'A-Type Main-Sequence', 'Bright nearby star in a binary system with Sirius B.', 'Spherical', true, 1);
INSERT INTO public.star VALUES (4, 'Betelgeuse', 8.60, 764, 16, 'Red Supergiant', 'Evolved massive star expected to end its life as a supernova.', 'Slightly Irregular', false, 1);
INSERT INTO public.star VALUES (5, 'M31-V1', 0.01, 40, 5, 'Cepheid Variable', 'Classic variable star in Andromeda used for distance calibration.', 'Spherical', false, 2);
INSERT INTO public.star VALUES (6, 'TRI-Blue-1', 1.20, 3, 12, 'Blue Giant', 'Hot luminous giant star observed in the Triangulum galaxy.', 'Spherical', true, 3);


--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.black_hole_black_hole_id_seq', 5, true);


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
-- Name: black_hole black_hole_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_description_key UNIQUE (description);


--
-- Name: black_hole black_hole_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_pkey PRIMARY KEY (black_hole_id);


--
-- Name: galaxy galaxy_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_description_key UNIQUE (description);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_description_key UNIQUE (description);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_description_key UNIQUE (description);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_description_key UNIQUE (description);


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


