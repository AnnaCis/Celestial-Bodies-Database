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
    name character varying(30),
    despcription text,
    diameter integer NOT NULL,
    galaxy_types_id integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_types; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy_types (
    galaxy_types_id integer NOT NULL,
    name character varying(30) NOT NULL,
    notes character varying(100)
);


ALTER TABLE public.galaxy_types OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30),
    planet_id integer NOT NULL,
    kratery boolean,
    srednica_w_km integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30),
    liczba_ksiezycow integer,
    star_id integer NOT NULL,
    weight numeric(6,2),
    pierscienie_planetarne boolean
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30),
    galaxy_id integer NOT NULL,
    temperature_in_k integer,
    radius integer,
    distance integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Droga Mleczna', NULL, 120, 1);
INSERT INTO public.galaxy VALUES (2, 'Galaktyka Andromedy', NULL, 220, 1);
INSERT INTO public.galaxy VALUES (3, 'Wielki Obłok Magellana', NULL, 14, 4);
INSERT INTO public.galaxy VALUES (4, 'NGC 5866', NULL, 60, 2);
INSERT INTO public.galaxy VALUES (5, 'Messier 60', NULL, 120, 3);
INSERT INTO public.galaxy VALUES (6, 'NGC 1427A', NULL, 20, 4);


--
-- Data for Name: galaxy_types; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy_types VALUES (1, 'spiralna', NULL);
INSERT INTO public.galaxy_types VALUES (2, 'soczewkowata', NULL);
INSERT INTO public.galaxy_types VALUES (3, 'eliptyczna', NULL);
INSERT INTO public.galaxy_types VALUES (4, 'nieregularna', NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Ksiezyc', 1, true, NULL);
INSERT INTO public.moon VALUES (2, 'Kordelia', 3, false, NULL);
INSERT INTO public.moon VALUES (3, 'Puk', 3, true, NULL);
INSERT INTO public.moon VALUES (4, 'Io', 2, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'Europa', 2, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'Ganimedes', 2, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'Kallisto', 2, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'Amaltea', 2, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'Himalia', 2, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'Elara', 2, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'Pazyfae', 2, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'Sinope', 2, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'Lizytea', 2, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'Karme', 2, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'Ananke', 2, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'Leda', 2, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'Tebe', 2, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'Adrastea', 2, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'Metis', 2, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'Callirrhoe', 2, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Ziemia', 1, 1, 1.00, false);
INSERT INTO public.planet VALUES (2, 'Jowisz', 79, 1, 317.80, true);
INSERT INTO public.planet VALUES (3, 'Uran', 27, 1, 14.60, true);
INSERT INTO public.planet VALUES (4, 'Merkury', 0, 1, 0.06, false);
INSERT INTO public.planet VALUES (5, 'Wenus', 0, 1, 0.82, false);
INSERT INTO public.planet VALUES (6, 'Mars', 2, 1, 0.11, false);
INSERT INTO public.planet VALUES (7, 'Saturn', 62, 1, 95.20, true);
INSERT INTO public.planet VALUES (8, 'Neptun', 14, 1, 17.20, true);
INSERT INTO public.planet VALUES (9, 'Planet I - Rainbow World', 0, 2, NULL, NULL);
INSERT INTO public.planet VALUES (10, 'Planet II - Gas Giant', 1, 2, NULL, NULL);
INSERT INTO public.planet VALUES (11, 'Planet III - Treasure World', 0, 2, NULL, NULL);
INSERT INTO public.planet VALUES (12, 'Planet V - Gas Giant', 2, 2, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Slonce', 1, 5778, NULL, NULL);
INSERT INTO public.star VALUES (2, 'Alfa Andromedae', 2, 13000, NULL, NULL);
INSERT INTO public.star VALUES (3, 'R71', 3, 12600, NULL, NULL);
INSERT INTO public.star VALUES (4, 'Vindemiatrix', 5, 5044, NULL, NULL);
INSERT INTO public.star VALUES (5, 'LGGS J003910.56+402545.6', 2, NULL, NULL, NULL);
INSERT INTO public.star VALUES (6, 'WOH G64', 3, 3200, NULL, NULL);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy_types galaxy_types_galaxy_types_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT galaxy_types_galaxy_types_id_key UNIQUE (galaxy_types_id);


--
-- Name: galaxy_types galaxy_types_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT galaxy_types_pkey PRIMARY KEY (galaxy_types_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: galaxy galaxy_galaxy_types_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_types_id_fkey FOREIGN KEY (galaxy_types_id) REFERENCES public.galaxy_types(galaxy_types_id);


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

