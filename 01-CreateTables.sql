--
-- PostgreSQL database dump
--

\restrict ctd8QtcYJwnMCfVjebztPEycoyfEhd7cvXcfc72LKlowXr1ieQ5nW9jDyyW2ko5

-- Dumped from database version 17.11
-- Dumped by pg_dump version 18.4

-- Started on 2026-09-02 08:26:20

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- TOC entry 218 (class 1259 OID 16423)
-- Name: drivers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.drivers (
    driverid character(3) NOT NULL,
    drivername character varying(50) NOT NULL,
    drivernum integer NOT NULL,
    driverhc character varying(20),
    teamid character varying(15) NOT NULL
);


ALTER TABLE public.drivers OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 16418)
-- Name: teams; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.teams (
    teamid character varying(15) NOT NULL,
    teamname character varying(50) NOT NULL,
    teamprincipal character varying(25)
);


ALTER TABLE public.teams OWNER TO postgres;

--
-- TOC entry 4896 (class 0 OID 16423)
-- Dependencies: 218
-- Data for Name: drivers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.drivers (driverid, drivername, drivernum, driverhc, teamid) FROM stdin;
\.


--
-- TOC entry 4895 (class 0 OID 16418)
-- Dependencies: 217
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.teams (teamid, teamname, teamprincipal) FROM stdin;
\.


--
-- TOC entry 4748 (class 2606 OID 16427)
-- Name: drivers drivers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.drivers
    ADD CONSTRAINT drivers_pkey PRIMARY KEY (driverid);


--
-- TOC entry 4746 (class 2606 OID 16422)
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (teamid);


--
-- TOC entry 4749 (class 2606 OID 16428)
-- Name: drivers drivers_teamid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.drivers
    ADD CONSTRAINT drivers_teamid_fkey FOREIGN KEY (teamid) REFERENCES public.teams(teamid);


-- Completed on 2026-09-02 08:26:21

--
-- PostgreSQL database dump complete
--

\unrestrict ctd8QtcYJwnMCfVjebztPEycoyfEhd7cvXcfc72LKlowXr1ieQ5nW9jDyyW2ko5

