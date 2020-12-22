--
-- PostgreSQL database dump
--

-- Dumped from database version 12.4
-- Dumped by pg_dump version 12.4

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
-- Name: auth_group; Type: TABLE; Schema: public; Owner: franciscoferbrache
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO franciscoferbrache;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: franciscoferbrache
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO franciscoferbrache;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: franciscoferbrache
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: franciscoferbrache
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO franciscoferbrache;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: franciscoferbrache
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO franciscoferbrache;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: franciscoferbrache
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: franciscoferbrache
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO franciscoferbrache;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: franciscoferbrache
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO franciscoferbrache;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: franciscoferbrache
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: franciscoferbrache
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO franciscoferbrache;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: franciscoferbrache
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO franciscoferbrache;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: franciscoferbrache
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO franciscoferbrache;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: franciscoferbrache
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: franciscoferbrache
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO franciscoferbrache;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: franciscoferbrache
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: franciscoferbrache
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO franciscoferbrache;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: franciscoferbrache
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO franciscoferbrache;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: franciscoferbrache
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: franciscoferbrache
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO franciscoferbrache;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: franciscoferbrache
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO franciscoferbrache;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: franciscoferbrache
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: franciscoferbrache
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO franciscoferbrache;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: franciscoferbrache
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO franciscoferbrache;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: franciscoferbrache
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: franciscoferbrache
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO franciscoferbrache;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: franciscoferbrache
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO franciscoferbrache;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: franciscoferbrache
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: franciscoferbrache
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO franciscoferbrache;

--
-- Name: locations_and_fugitives_location; Type: TABLE; Schema: public; Owner: franciscoferbrache
--

CREATE TABLE public.locations_and_fugitives_location (
    id integer NOT NULL,
    name character varying(200) NOT NULL,
    address character varying(200) NOT NULL,
    phone character varying(200) NOT NULL,
    description text NOT NULL
);


ALTER TABLE public.locations_and_fugitives_location OWNER TO franciscoferbrache;

--
-- Name: locations_and_fugitives_location_id_seq; Type: SEQUENCE; Schema: public; Owner: franciscoferbrache
--

CREATE SEQUENCE public.locations_and_fugitives_location_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.locations_and_fugitives_location_id_seq OWNER TO franciscoferbrache;

--
-- Name: locations_and_fugitives_location_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: franciscoferbrache
--

ALTER SEQUENCE public.locations_and_fugitives_location_id_seq OWNED BY public.locations_and_fugitives_location.id;


--
-- Name: locations_location; Type: TABLE; Schema: public; Owner: franciscoferbrache
--

CREATE TABLE public.locations_location (
    id integer NOT NULL,
    location_name character varying(200) NOT NULL,
    address character varying(200) NOT NULL,
    phone character varying(200) NOT NULL,
    description text NOT NULL
);


ALTER TABLE public.locations_location OWNER TO franciscoferbrache;

--
-- Name: locations_location_id_seq; Type: SEQUENCE; Schema: public; Owner: franciscoferbrache
--

CREATE SEQUENCE public.locations_location_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.locations_location_id_seq OWNER TO franciscoferbrache;

--
-- Name: locations_location_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: franciscoferbrache
--

ALTER SEQUENCE public.locations_location_id_seq OWNED BY public.locations_location.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: franciscoferbrache
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: franciscoferbrache
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: franciscoferbrache
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: franciscoferbrache
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: franciscoferbrache
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: franciscoferbrache
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: franciscoferbrache
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: franciscoferbrache
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: franciscoferbrache
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: locations_and_fugitives_location id; Type: DEFAULT; Schema: public; Owner: franciscoferbrache
--

ALTER TABLE ONLY public.locations_and_fugitives_location ALTER COLUMN id SET DEFAULT nextval('public.locations_and_fugitives_location_id_seq'::regclass);


--
-- Name: locations_location id; Type: DEFAULT; Schema: public; Owner: franciscoferbrache
--

ALTER TABLE ONLY public.locations_location ALTER COLUMN id SET DEFAULT nextval('public.locations_location_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: franciscoferbrache
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: franciscoferbrache
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: franciscoferbrache
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add location	7	add_location
26	Can change location	7	change_location
27	Can delete location	7	delete_location
28	Can view location	7	view_location
29	Can add location	8	add_location
30	Can change location	8	change_location
31	Can delete location	8	delete_location
32	Can view location	8	view_location
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: franciscoferbrache
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: franciscoferbrache
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: franciscoferbrache
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: franciscoferbrache
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: franciscoferbrache
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	locations_and_fugitives	location
8	locations	location
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: franciscoferbrache
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2020-12-21 14:59:47.027873-05
2	auth	0001_initial	2020-12-21 14:59:47.059936-05
3	admin	0001_initial	2020-12-21 14:59:47.105186-05
4	admin	0002_logentry_remove_auto_add	2020-12-21 14:59:47.132535-05
5	admin	0003_logentry_add_action_flag_choices	2020-12-21 14:59:47.142435-05
6	contenttypes	0002_remove_content_type_name	2020-12-21 14:59:47.167314-05
7	auth	0002_alter_permission_name_max_length	2020-12-21 14:59:47.178635-05
8	auth	0003_alter_user_email_max_length	2020-12-21 14:59:47.1886-05
9	auth	0004_alter_user_username_opts	2020-12-21 14:59:47.198758-05
10	auth	0005_alter_user_last_login_null	2020-12-21 14:59:47.209553-05
11	auth	0006_require_contenttypes_0002	2020-12-21 14:59:47.211854-05
12	auth	0007_alter_validators_add_error_messages	2020-12-21 14:59:47.221256-05
13	auth	0008_alter_user_username_max_length	2020-12-21 14:59:47.23421-05
14	auth	0009_alter_user_last_name_max_length	2020-12-21 14:59:47.244919-05
15	auth	0010_alter_group_name_max_length	2020-12-21 14:59:47.256279-05
16	auth	0011_update_proxy_permissions	2020-12-21 14:59:47.264869-05
17	auth	0012_alter_user_first_name_max_length	2020-12-21 14:59:47.274424-05
18	locations_and_fugitives	0001_initial	2020-12-21 14:59:47.282667-05
19	sessions	0001_initial	2020-12-21 14:59:47.290002-05
20	locations	0001_initial	2020-12-21 18:37:11.511513-05
21	locations	0002_auto_20201222_0207	2020-12-21 21:07:12.966661-05
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: franciscoferbrache
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: locations_and_fugitives_location; Type: TABLE DATA; Schema: public; Owner: franciscoferbrache
--

COPY public.locations_and_fugitives_location (id, name, address, phone, description) FROM stdin;
2	Albuquerque	4200 Luecking Park Avenue NE Albuquerque, NM 87107	(505) 889-1300	Counties Covered: Bernalillo, Catron, Cibola (eastern half), Guadalupe, Quay, Sandoval (southern corner), Socorro, Torrence, and Valencia
3	Anchorage	101 East Sixth Avenue Anchorage, AK 99501	(907) 276-4441	Covers the entire state of Alaska
4	Atlanta	3000 Flowers Road S Atlanta, GA 30341	(770) 216-3000	Covers the entire state of Georgia
5	Baltimore	2600 Lord Baltimore Drive Baltimore, MD 21244	(410) 265-8080	Covers the entire states of Maryland and Delaware
6	Birmingham	1000 18th Street North Birmingham, AL 35203	(205) 326-6166	Covers the Northern District of Alabama
7	Boston	201 Maple Street Chelsea, MA 02150	(857) 386-2000	Covers the entire states of Maine, Massachusetts, New Hampshire, and Rhode Island
8	Buffalo	One FBI Plaza Buffalo, NY 14202	(716) 856-7800	Covers 17 counties in western New York
9	Charlotte	7915 Microsoft Way Charlotte, NC 28273	(704) 672-6100	Covers the entire state of North Carolina
1	Albany	200 McCarty Avenue Albany, NY12209	(518) 465-7551	Counties Covered: Albany, Fulton, Hamilton, Montgomery, Rensselaer, Saratoga, Schenectady, Schoharie, Warren, and Washington 
10	Chicago	2111 W. Roosevelt Road Chicago, IL 60608	(312) 421-6700	Covers 18 counties in northern Illinois extending from Interstate 80 north to the Wisconsin border, east to Indiana, and west to Iowa
11	Cincinnati	2012 Ronald Reagan Drive Cincinnati, OH 45236	(513) 421-4310	Covers 48 counties throughout central and southern Ohio
12	Cleveland	1501 Lakeside Avenue Cleveland, OH 44114	(216) 522-1400	Covers 40 counties in Ohio
13	Columbia	151 Westpark Boulevard Columbia, SC 29210	(803) 551-4200	Covers the entire state of South Carolina
14	Dallas	One Justice Way Dallas, TX 75220	(972) 559-5000	Covers 137 counties in North Texas and portions of East and West Texas
15	Denver	8000 East 36th Avenue Denver, CO 80238	(303) 629-7171	Covers the entire states of Colorado and Wyoming
16	Detroit	477 Michigan Ave., 26th Floor Detroit, MI 48226	(313) 965-2323	Covers the entire state of Michigan, including the Upper Peninsula
17	El Paso	660 South Mesa Hills Drive El Paso, TX 79912	(915) 832-5000	Covers 17 counties in western Texas
18	Honolulu	91-1300 Enterprise Street Kapolei, HI 96707	(808) 566-4300	Covers the state of Hawaii along with Guam and Saipan
19	Houston	1 Justice Park Drive Houston, TX 77292	(713) 693-5000	Covers 40 counties in southeastern Texas
20	Indianapolis	8825 Nelson B Klein Pkwy Indianapolis, IN 46250	(317) 595-4000	Covers the entire state of Indiana
21	Jackson	1220 Echelon Parkway Jackson, MS 39213	(601) 948-5000	Covers the entire state of Mississippi
22	Jacksonville	6061 Gate Parkway Jacksonville, FL 32256	(904) 248-7000	Covers 40 counties throughout northern Florida
23	Kansas City	1300 Summit Street Kansas City, MO 64105	(816) 512-8200	Covers the Western District of Missouri and the entire state of Kansas
24	Knoxville	1501 Dowell Springs Boulevard Knoxville, TN 37909	(865) 544-0751	Covers 41 counties in eastern Tennessee
25	Las Vegas	1787 West Lake Mead Boulevard Las Vegas, NV 89106-2135	(702) 385-1281	Covers the entire state of Nevada
26	Little Rock	24 Shackleford West Boulevard Little Rock, AR 72211	(501) 221-9100	Covers the entire state of Arkansas
27	Los Angeles	11000 Wilshire Boulevard Suite 1700 Los Angeles, CA 90024	(310) 477-6565	Covers the Central District of California
28	Louisville	12401 Sycamore Station Place Louisville, KY 40299	(502) 263-6000	Covers the entire state of Kentucky
29	Memphis	 225 North Humphreys Boulevard Suite 3000 Memphis, TN 38120	(901) 747-4300	Covers 54 counties in western Tennessee.
30	Miami	2030 SW 145th Avenue Miramar, FL 33027	(754) 703-2000	Covers nine counties in southern Florida and responsible for addressing extraterritorial violations of American citizens in Mexico, the Caribbean, and Central and South America
31	MIlwaukee	3600 S. Lake Drive St. Francis, WI 53235	(414) 276-4684	Covers the entire state of Wisconsin
32	Minneapolis	1501 Freeway Boulevard Brooklyn Center, MN 55430	(763) 569-8000	Covers the entire states of Minnesota, North Dakota, and South Dakota
33	Mobile	200 North Royal Street Mobile, AL 36602	(251) 438-3674	Covers the Middle Judicial District of Alabama and the Southern Judicial District of Alabama
34	New Haven	600 State Street New Haven, CT 06511	(203) 777-6311	Covers the entire state of Connecticut
35	New Orleans	2901 Leon C. Simon Boulevard New Orleans, LA 70126	(504) 816-3000	Covers the entire state of Louisiana
36	New York	26 Federal Plaza, 23rd Floor New York, NY 10278\n\n	(212) 384-1000	Covers the five boroughs of New York City, eight counties in New York state, and La Guardia Airport and John F. Kennedy International Airport
37	Newark	Claremont Tower 11 Centre Place Newark, NJ 07102	(973) 792-3000	Covers the state of New Jersey except for three counties covered by FBI Philadelphia (Camden, Gloucester, and Salem)
38	Norfolk	509 Resource Row Chesapeake, VA 23320	(757) 455-0100	Covers the southeastern part of Virginia, including the Southside, Peninsula, and the Virginia Eastern Shore
39	Oklahoma City	3301 West Memorial Road Oklahoma City, OK 73134	(405) 290-7770	Covers the entire state of Oklahoma
40	Omaha	4411 South 121st Court Omaha, NE 68137	(402) 493-8688	Covers the entire states of Nebraska and Iowa
41	Philadelphia	600 Arch Street, Philadelphia, PA 19106	(215) 418-4000	Covers eastern Pennsylvania and three counties in New Jersey
42	Phoenix	21711 N. 7th Street Phoenix, AZ 85024	(623) 466-1999	Covers the entire state of Arizona and Grand Canyon National Park
43	Pittsburgh	3311 East Carson Street Pittsburgh, PA 15203	(412) 432-4000	Covers 25 counties in western Pennsylvania as well as the entire state of West Virginia
44	Portland	9109 NE Cascades Parkway Portland, OR 97220	(503) 224-4181	Covers the entire state of Oregon
45	Richmond	1970 East Parham Road Richmond, VA 23228	(804) 261-1044	Covers most of the state of Virginia—82 counties and 24 independent cities—except Northern Virginia and the Eastern Shore
46	Sacramento	2001 Freedom Way Roseville, CA 95678	(916) 746-7000	Along with our main office in Roseville, we have eight satellite offices, known as resident agencies, in the area
47	Salt Lake City	5425 West Amelia Earhart Drive Salt Lake City, UT 84116	(801) 579-1400	Covers the entire states of Utah, Idaho, and Montana
48	San Antonio	5740 University Heights Blvd. San Antonio, TX 78249	(210) 225-6741	Counties covered: Atascosa, Bandera, Bexar, Comal, Frio, Gillespie, Gonzalez, Guadalupe, Karnes, Kendall, Kerr, Kimble, Mason, Medina, Real, Uvalde, and Wilson
49	San Diego	10385 Vista Sorrento Parkway San Diego, CA 92121	(858) 320-1800	Covers San Diego and Imperial Counties in southern California
50	San Francisco	450 Golden Gate Avenue, 13th Floor San Francisco, CA 94102	(415) 553-7400	Along with our main office in San Francisco, we have seven satellite offices in the area
51	San Juan	140 Carlos Chardon Avenue Hato Rey, PR 00918	(787) 987-6500	Covers Puerto Rico and the U.S. Virgin Islands
52	Seattle	1110 3rd Avenue Seattle, WA 98101	(206) 622-0460	Covers the entire state of Washington
53	Springfield	900 East Linton Avenue Springfield, IL 62703	(217) 522-9675	Covers central and southern Illinois
54	St Louis	2222 Market Street St. Louis, MO 63103	(314) 589-2500	Along with our main office in St. Louis, we have three satellite offices, known as resident agencies, in the area
55	Tampa	5525 West Gray Street Tampa, FL 33609	(813) 253-1000	Covers 18 counties in central and southwest Florida
56	Washington	601 4th Street NW Washington, DC 20535	(202) 278-2000	Covers the District of Columbia and several counties in Northern Virginia
\.


--
-- Data for Name: locations_location; Type: TABLE DATA; Schema: public; Owner: franciscoferbrache
--

COPY public.locations_location (id, location_name, address, phone, description) FROM stdin;
1	Albany	200 McCarty Avenue Albany, NY12209	(518) 465-7551	Counties Covered: Albany, Fulton, Hamilton, Montgomery, Rensselaer, Saratoga, Schenectady, Schoharie, Warren, and Washington 
2	Albuquerque	4200 Luecking Park Avenue NE Albuquerque, NM 87107	(505) 889-1300	Counties Covered: Bernalillo, Catron, Cibola (eastern half), Guadalupe, Quay, Sandoval (southern corner), Socorro, Torrence, and Valencia
3	Anchorage	101 East Sixth Avenue Anchorage, AK 99501	(907) 276-4441	Covers the entire state of Alaska
4	Atlanta	3000 Flowers Road S Atlanta, GA 30341	(770) 216-3000	Covers the entire state of Georgia
5	Baltimore	2600 Lord Baltimore Drive Baltimore, MD 21244	(410) 265-8080	Covers the entire states of Maryland and Delaware
6	Birmingham	1000 18th Street North Birmingham, AL 35203	(205) 326-6166	Covers the Northern District of Alabama
7	Boston	201 Maple Street Chelsea, MA 02150	(857) 386-2000	Covers the entire states of Maine, Massachusetts, New Hampshire, and Rhode Island
8	Buffalo	One FBI Plaza Buffalo, NY 14202	(716) 856-7800	Covers 17 counties in western New York
9	Charlotte	7915 Microsoft Way Charlotte, NC 28273	(704) 672-6100	Covers the entire state of North Carolina
10	Chicago	2111 W. Roosevelt Road Chicago, IL 60608	(312) 421-6700	Covers 18 counties in northern Illinois extending from Interstate 80 north to the Wisconsin border, east to Indiana, and west to Iowa
11	Cincinnati	2012 Ronald Reagan Drive Cincinnati, OH 45236	(513) 421-4310	Covers 48 counties throughout central and southern Ohio
12	Cleveland	1501 Lakeside Avenue Cleveland, OH 44114	(216) 522-1400	Covers 40 counties in Ohio
13	Columbia	151 Westpark Boulevard Columbia, SC 29210	(803) 551-4200	Covers the entire state of South Carolina
14	Dallas	One Justice Way Dallas, TX 75220	(972) 559-5000	Covers 137 counties in North Texas and portions of East and West Texas
15	Denver	8000 East 36th Avenue Denver, CO 80238	(303) 629-7171	Covers the entire states of Colorado and Wyoming
16	Detroit	477 Michigan Ave., 26th Floor Detroit, MI 48226	(313) 965-2323	Covers the entire state of Michigan, including the Upper Peninsula
17	El Paso	660 South Mesa Hills Drive El Paso, TX 79912	(915) 832-5000	Covers 17 counties in western Texas
18	Honolulu	91-1300 Enterprise Street Kapolei, HI 96707	(808) 566-4300	Covers the state of Hawaii along with Guam and Saipan
19	Houston	1 Justice Park Drive Houston, TX 77292	(713) 693-5000	Covers 40 counties in southeastern Texas
20	Indianapolis	8825 Nelson B Klein Pkwy Indianapolis, IN 46250	(317) 595-4000	Covers the entire state of Indiana
21	Jackson	1220 Echelon Parkway Jackson, MS 39213	(601) 948-5000	Covers the entire state of Mississippi
22	Jacksonville	6061 Gate Parkway Jacksonville, FL 32256	(904) 248-7000	Covers 40 counties throughout northern Florida
23	Kansas City	1300 Summit Street Kansas City, MO 64105	(816) 512-8200	Covers the Western District of Missouri and the entire state of Kansas
24	Knoxville	1501 Dowell Springs Boulevard Knoxville, TN 37909	(865) 544-0751	Covers 41 counties in eastern Tennessee
25	Las Vegas	1787 West Lake Mead Boulevard Las Vegas, NV 89106-2135	(702) 385-1281	Covers the entire state of Nevada
26	Little Rock	24 Shackleford West Boulevard Little Rock, AR 72211	(501) 221-9100	Covers the entire state of Arkansas
27	Los Angeles	11000 Wilshire Boulevard Suite 1700 Los Angeles, CA 90024	(310) 477-6565	Covers the Central District of California
28	Louisville	12401 Sycamore Station Place Louisville, KY 40299	(502) 263-6000	Covers the entire state of Kentucky
29	Memphis	 225 North Humphreys Boulevard Suite 3000 Memphis, TN 38120	(901) 747-4300	Covers 54 counties in western Tennessee.
30	Miami	2030 SW 145th Avenue Miramar, FL 33027	(754) 703-2000	Covers nine counties in southern Florida and responsible for addressing extraterritorial violations of American citizens in Mexico, the Caribbean, and Central and South America
31	MIlwaukee	3600 S. Lake Drive St. Francis, WI 53235	(414) 276-4684	Covers the entire state of Wisconsin
32	Minneapolis	1501 Freeway Boulevard Brooklyn Center, MN 55430	(763) 569-8000	Covers the entire states of Minnesota, North Dakota, and South Dakota
33	Mobile	200 North Royal Street Mobile, AL 36602	(251) 438-3674	Covers the Middle Judicial District of Alabama and the Southern Judicial District of Alabama
34	New Haven	600 State Street New Haven, CT 06511	(203) 777-6311	Covers the entire state of Connecticut
35	New Orleans	2901 Leon C. Simon Boulevard New Orleans, LA 70126	(504) 816-3000	Covers the entire state of Louisiana
36	New York	26 Federal Plaza, 23rd Floor New York, NY 10278\n\n	(212) 384-1000	Covers the five boroughs of New York City, eight counties in New York state, and La Guardia Airport and John F. Kennedy International Airport
37	Newark	Claremont Tower 11 Centre Place Newark, NJ 07102	(973) 792-3000	Covers the state of New Jersey except for three counties covered by FBI Philadelphia (Camden, Gloucester, and Salem)
38	Norfolk	509 Resource Row Chesapeake, VA 23320	(757) 455-0100	Covers the southeastern part of Virginia, including the Southside, Peninsula, and the Virginia Eastern Shore
39	Oklahoma City	3301 West Memorial Road Oklahoma City, OK 73134	(405) 290-7770	Covers the entire state of Oklahoma
40	Omaha	4411 South 121st Court Omaha, NE 68137	(402) 493-8688	Covers the entire states of Nebraska and Iowa
41	Philadelphia	600 Arch Street, Philadelphia, PA 19106	(215) 418-4000	Covers eastern Pennsylvania and three counties in New Jersey
42	Phoenix	21711 N. 7th Street Phoenix, AZ 85024	(623) 466-1999	Covers the entire state of Arizona and Grand Canyon National Park
43	Pittsburgh	3311 East Carson Street Pittsburgh, PA 15203	(412) 432-4000	Covers 25 counties in western Pennsylvania as well as the entire state of West Virginia
44	Portland	9109 NE Cascades Parkway Portland, OR 97220	(503) 224-4181	Covers the entire state of Oregon
45	Richmond	1970 East Parham Road Richmond, VA 23228	(804) 261-1044	Covers most of the state of Virginia—82 counties and 24 independent cities—except Northern Virginia and the Eastern Shore
46	Sacramento	2001 Freedom Way Roseville, CA 95678	(916) 746-7000	Along with our main office in Roseville, we have eight satellite offices, known as resident agencies, in the area
47	Salt Lake City	5425 West Amelia Earhart Drive Salt Lake City, UT 84116	(801) 579-1400	Covers the entire states of Utah, Idaho, and Montana
48	San Antonio	5740 University Heights Blvd. San Antonio, TX 78249	(210) 225-6741	Counties covered: Atascosa, Bandera, Bexar, Comal, Frio, Gillespie, Gonzalez, Guadalupe, Karnes, Kendall, Kerr, Kimble, Mason, Medina, Real, Uvalde, and Wilson
49	San Diego	10385 Vista Sorrento Parkway San Diego, CA 92121	(858) 320-1800	Covers San Diego and Imperial Counties in southern California
50	San Francisco	450 Golden Gate Avenue, 13th Floor San Francisco, CA 94102	(415) 553-7400	Along with our main office in San Francisco, we have seven satellite offices in the area
51	San Juan	140 Carlos Chardon Avenue Hato Rey, PR 00918	(787) 987-6500	Covers Puerto Rico and the U.S. Virgin Islands
52	Seattle	1110 3rd Avenue Seattle, WA 98101	(206) 622-0460	Covers the entire state of Washington
53	Springfield	900 East Linton Avenue Springfield, IL 62703	(217) 522-9675	Covers central and southern Illinois
54	St Louis	2222 Market Street St. Louis, MO 63103	(314) 589-2500	Along with our main office in St. Louis, we have three satellite offices, known as resident agencies, in the area
55	Tampa	5525 West Gray Street Tampa, FL 33609	(813) 253-1000	Covers 18 counties in central and southwest Florida
56	Washington	601 4th Street NW Washington, DC 20535	(202) 278-2000	Covers the District of Columbia and several counties in Northern Virginia
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: franciscoferbrache
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: franciscoferbrache
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: franciscoferbrache
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 32, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: franciscoferbrache
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: franciscoferbrache
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, false);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: franciscoferbrache
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: franciscoferbrache
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: franciscoferbrache
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 8, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: franciscoferbrache
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 21, true);


--
-- Name: locations_and_fugitives_location_id_seq; Type: SEQUENCE SET; Schema: public; Owner: franciscoferbrache
--

SELECT pg_catalog.setval('public.locations_and_fugitives_location_id_seq', 1, false);


--
-- Name: locations_location_id_seq; Type: SEQUENCE SET; Schema: public; Owner: franciscoferbrache
--

SELECT pg_catalog.setval('public.locations_location_id_seq', 1, false);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: franciscoferbrache
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: franciscoferbrache
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: franciscoferbrache
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: franciscoferbrache
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: franciscoferbrache
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: franciscoferbrache
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: franciscoferbrache
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: franciscoferbrache
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: franciscoferbrache
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: franciscoferbrache
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: franciscoferbrache
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: franciscoferbrache
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: franciscoferbrache
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: franciscoferbrache
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: franciscoferbrache
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: franciscoferbrache
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: franciscoferbrache
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: locations_and_fugitives_location locations_and_fugitives_location_pkey; Type: CONSTRAINT; Schema: public; Owner: franciscoferbrache
--

ALTER TABLE ONLY public.locations_and_fugitives_location
    ADD CONSTRAINT locations_and_fugitives_location_pkey PRIMARY KEY (id);


--
-- Name: locations_location locations_location_pkey; Type: CONSTRAINT; Schema: public; Owner: franciscoferbrache
--

ALTER TABLE ONLY public.locations_location
    ADD CONSTRAINT locations_location_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: franciscoferbrache
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: franciscoferbrache
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: franciscoferbrache
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: franciscoferbrache
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: franciscoferbrache
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: franciscoferbrache
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: franciscoferbrache
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: franciscoferbrache
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: franciscoferbrache
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: franciscoferbrache
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: franciscoferbrache
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: franciscoferbrache
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: franciscoferbrache
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: franciscoferbrache
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: franciscoferbrache
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: franciscoferbrache
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: franciscoferbrache
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: franciscoferbrache
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: franciscoferbrache
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: franciscoferbrache
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: franciscoferbrache
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: franciscoferbrache
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

