--
-- PostgreSQL database dump
--

-- Dumped from database version 11.4
-- Dumped by pg_dump version 11.4

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

SET default_with_oids = false;

--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: taebum
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO taebum;

--
-- Name: parks; Type: TABLE; Schema: public; Owner: taebum
--

CREATE TABLE public.parks (
    id bigint NOT NULL,
    parks_name character varying,
    state_id integer
);


ALTER TABLE public.parks OWNER TO taebum;

--
-- Name: parks_id_seq; Type: SEQUENCE; Schema: public; Owner: taebum
--

CREATE SEQUENCE public.parks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.parks_id_seq OWNER TO taebum;

--
-- Name: parks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: taebum
--

ALTER SEQUENCE public.parks_id_seq OWNED BY public.parks.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: taebum
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO taebum;

--
-- Name: states; Type: TABLE; Schema: public; Owner: taebum
--

CREATE TABLE public.states (
    id bigint NOT NULL,
    state_name character varying
);


ALTER TABLE public.states OWNER TO taebum;

--
-- Name: states_id_seq; Type: SEQUENCE; Schema: public; Owner: taebum
--

CREATE SEQUENCE public.states_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.states_id_seq OWNER TO taebum;

--
-- Name: states_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: taebum
--

ALTER SEQUENCE public.states_id_seq OWNED BY public.states.id;


--
-- Name: parks id; Type: DEFAULT; Schema: public; Owner: taebum
--

ALTER TABLE ONLY public.parks ALTER COLUMN id SET DEFAULT nextval('public.parks_id_seq'::regclass);


--
-- Name: states id; Type: DEFAULT; Schema: public; Owner: taebum
--

ALTER TABLE ONLY public.states ALTER COLUMN id SET DEFAULT nextval('public.states_id_seq'::regclass);


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: taebum
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2019-08-23 19:49:49.849057	2019-08-23 19:49:49.849057
\.


--
-- Data for Name: parks; Type: TABLE DATA; Schema: public; Owner: taebum
--

COPY public.parks (id, parks_name, state_id) FROM stdin;
1	Denali National Park	2
2	Gates of the Arctic National Park	2
3	Glacier Bay National Park	2
4	Katmai National Park	2
5	Kenai Fjords National Park	2
6	Kobuk Valley National Park	2
7	Lake Clark National Park	2
8	Wrangell-St. Elias National Park	2
9	Grand Canyon National Park	3
10	Petrified Forest National Park	3
11	Saguaro National Park	3
12	Hot Springs National Park	4
13	Channel Islands National Park	5
14	Death Valley National Park	5
15	Joshua Tree National Park	5
16	Kings Canyon National Park	5
17	Lassen Volcanic National Park	5
18	Pinnacles National Park	5
19	Redwood National Park	5
20	Sequoia National Park	5
21	Yosemite National Park	5
22	Black Canyon of the Gunnison National Park	6
23	Great Sand Dunes National Park	6
24	Mesa Verde National Park	6
25	Rocky Mountain National Park	6
26	Biscayne National Park	9
27	Dry Tortugas National Park	9
28	Everglades National Park	9
29	Haleakalā National Park	11
30	Hawai'i Volcanoes National Park	11
31	Yellowstone National Park	12
32	Gateway Arch National Park	13
33	Indiana Dunes National Park	14
34	Mammoth Cave National Park	17
35	Acadia National Park	19
36	Isle Royale National Park	22
37	Voyageurs National Park	23
38	Gateway Arch National Park	25
39	Glacier National Park	26
40	Yellowstone National Park	26
41	Death Valley National Park	28
42	Great Basin National Park	28
43	Carlsbad Caverns National Park	31
44	Great Smoky Mountains National Park	33
45	Theodore Roosevelt National Park	34
46	Cuyahoga Valley National Park	35
47	Crater Lake National Park	37
48	Congaree National Park	40
49	Wind Cave National Park	41
50	Great Smoky Mountains National Park	42
51	Big Bend National Park	43
52	Guadalupe Mountains National Park	43
53	Zion National Park	44
54	Arches National Park	44
55	Bryce Canyon National Park	44
56	Canyonlands National Park	44
57	Capitol Reef National Park	44
58	Shenandoah National Park	46
59	Mount Rainier National Park	47
60	North Cascades National Park	47
61	Olympic National Park	47
62	Grand Teton National Park	50
63	Yellowstone National Park	50
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: taebum
--

COPY public.schema_migrations (version) FROM stdin;
20190823182646
20190823182758
20190823183059
\.


--
-- Data for Name: states; Type: TABLE DATA; Schema: public; Owner: taebum
--

COPY public.states (id, state_name) FROM stdin;
1	Alabama
2	Alaska
3	Arizona
4	Arkansas
5	California
6	Colorado
7	Connecticut
8	Delaware
9	Florida
10	Georgia
11	Hawaii
12	Idaho
13	Illinois
14	Indiana
15	Iowa
16	Kansas
17	Kentucky
18	Louisiana
19	Maine
20	Maryland
21	Massachusetts
22	Michigan
23	Minnesota
24	Mississippi
25	Missouri
26	Montana
27	Nebraska
28	Nevada
29	New Hampshire
30	New Jersey
31	New Mexico
32	New York
33	North Carolina
34	North Dakota
35	Ohio
36	Oklahoma
37	Oregon
38	Pennsylvania
39	Rhode Island
40	South Carolina
41	South Dakota
42	Tennessee
43	Texas
44	Utah
45	Vermont
46	Virginia
47	Washington
48	West Virginia
49	Wisconsin
50	Wyoming
\.


--
-- Name: parks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: taebum
--

SELECT pg_catalog.setval('public.parks_id_seq', 63, true);


--
-- Name: states_id_seq; Type: SEQUENCE SET; Schema: public; Owner: taebum
--

SELECT pg_catalog.setval('public.states_id_seq', 50, true);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: taebum
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: parks parks_pkey; Type: CONSTRAINT; Schema: public; Owner: taebum
--

ALTER TABLE ONLY public.parks
    ADD CONSTRAINT parks_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: taebum
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: states states_pkey; Type: CONSTRAINT; Schema: public; Owner: taebum
--

ALTER TABLE ONLY public.states
    ADD CONSTRAINT states_pkey PRIMARY KEY (id);


--
-- Name: parks fk_rails_29e4e81212; Type: FK CONSTRAINT; Schema: public; Owner: taebum
--

ALTER TABLE ONLY public.parks
    ADD CONSTRAINT fk_rails_29e4e81212 FOREIGN KEY (state_id) REFERENCES public.states(id);


--
-- PostgreSQL database dump complete
--

