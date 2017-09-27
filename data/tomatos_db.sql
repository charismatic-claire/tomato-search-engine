--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.4
-- Dumped by pg_dump version 9.6.4

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE auth_group OWNER TO django;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_group_id_seq OWNER TO django;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE auth_group_permissions OWNER TO django;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_group_permissions_id_seq OWNER TO django;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE auth_permission OWNER TO django;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_permission_id_seq OWNER TO django;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE auth_user OWNER TO django;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE auth_user_groups OWNER TO django;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_groups_id_seq OWNER TO django;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE auth_user_groups_id_seq OWNED BY auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_id_seq OWNER TO django;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE auth_user_id_seq OWNED BY auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE auth_user_user_permissions OWNER TO django;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_user_permissions_id_seq OWNER TO django;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE auth_user_user_permissions_id_seq OWNED BY auth_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE django_admin_log (
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


ALTER TABLE django_admin_log OWNER TO django;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_admin_log_id_seq OWNER TO django;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE django_admin_log_id_seq OWNED BY django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE django_content_type OWNER TO django;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_content_type_id_seq OWNER TO django;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE django_migrations OWNER TO django;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_migrations_id_seq OWNER TO django;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE django_migrations_id_seq OWNED BY django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE django_session OWNER TO django;

--
-- Name: tomatos_tomato; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE tomatos_tomato (
    id integer NOT NULL,
    name character varying,
    description character varying,
    image character varying
);


ALTER TABLE tomatos_tomato OWNER TO django;

--
-- Name: tomatos_tomato_colors; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE tomatos_tomato_colors (
    id integer NOT NULL,
    tomato_id integer,
    tomatocolor_id integer
);


ALTER TABLE tomatos_tomato_colors OWNER TO django;

--
-- Name: tomatos_tomato_colors_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE tomatos_tomato_colors_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE tomatos_tomato_colors_id_seq OWNER TO django;

--
-- Name: tomatos_tomato_colors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE tomatos_tomato_colors_id_seq OWNED BY tomatos_tomato_colors.id;


--
-- Name: tomatos_tomato_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE tomatos_tomato_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE tomatos_tomato_id_seq OWNER TO django;

--
-- Name: tomatos_tomato_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE tomatos_tomato_id_seq OWNED BY tomatos_tomato.id;


--
-- Name: tomatos_tomato_types; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE tomatos_tomato_types (
    id integer NOT NULL,
    tomato_id integer,
    tomatotype_id integer
);


ALTER TABLE tomatos_tomato_types OWNER TO django;

--
-- Name: tomatos_tomato_types_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE tomatos_tomato_types_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE tomatos_tomato_types_id_seq OWNER TO django;

--
-- Name: tomatos_tomato_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE tomatos_tomato_types_id_seq OWNED BY tomatos_tomato_types.id;


--
-- Name: tomatos_tomatocolor; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE tomatos_tomatocolor (
    id integer NOT NULL,
    name character varying
);


ALTER TABLE tomatos_tomatocolor OWNER TO django;

--
-- Name: tomatos_tomatocolor_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE tomatos_tomatocolor_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE tomatos_tomatocolor_id_seq OWNER TO django;

--
-- Name: tomatos_tomatocolor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE tomatos_tomatocolor_id_seq OWNED BY tomatos_tomatocolor.id;


--
-- Name: tomatos_tomatotype; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE tomatos_tomatotype (
    id integer NOT NULL,
    name character varying
);


ALTER TABLE tomatos_tomatotype OWNER TO django;

--
-- Name: tomatos_tomatotype_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE tomatos_tomatotype_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE tomatos_tomatotype_id_seq OWNER TO django;

--
-- Name: tomatos_tomatotype_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE tomatos_tomatotype_id_seq OWNED BY tomatos_tomatotype.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY auth_user ALTER COLUMN id SET DEFAULT nextval('auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY auth_user_groups ALTER COLUMN id SET DEFAULT nextval('auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY django_admin_log ALTER COLUMN id SET DEFAULT nextval('django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY django_migrations ALTER COLUMN id SET DEFAULT nextval('django_migrations_id_seq'::regclass);


--
-- Name: tomatos_tomato id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY tomatos_tomato ALTER COLUMN id SET DEFAULT nextval('tomatos_tomato_id_seq'::regclass);


--
-- Name: tomatos_tomato_colors id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY tomatos_tomato_colors ALTER COLUMN id SET DEFAULT nextval('tomatos_tomato_colors_id_seq'::regclass);


--
-- Name: tomatos_tomato_types id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY tomatos_tomato_types ALTER COLUMN id SET DEFAULT nextval('tomatos_tomato_types_id_seq'::regclass);


--
-- Name: tomatos_tomatocolor id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY tomatos_tomatocolor ALTER COLUMN id SET DEFAULT nextval('tomatos_tomatocolor_id_seq'::regclass);


--
-- Name: tomatos_tomatotype id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY tomatos_tomatotype ALTER COLUMN id SET DEFAULT nextval('tomatos_tomatotype_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: django
--

COPY auth_group (id, name) FROM stdin;
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('auth_group_id_seq', 1, false);


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: django
--

COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('auth_group_permissions_id_seq', 1, false);


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: django
--

COPY auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can add permission	2	add_permission
5	Can change permission	2	change_permission
6	Can delete permission	2	delete_permission
7	Can add user	3	add_user
8	Can change user	3	change_user
9	Can delete user	3	delete_user
10	Can add group	4	add_group
11	Can change group	4	change_group
12	Can delete group	4	delete_group
13	Can add content type	5	add_contenttype
14	Can change content type	5	change_contenttype
15	Can delete content type	5	delete_contenttype
16	Can add session	6	add_session
17	Can change session	6	change_session
18	Can delete session	6	delete_session
19	Can add tomato	7	add_tomato
20	Can change tomato	7	change_tomato
21	Can delete tomato	7	delete_tomato
22	Can add tomato color	8	add_tomatocolor
23	Can change tomato color	8	change_tomatocolor
24	Can delete tomato color	8	delete_tomatocolor
25	Can add tomato type	9	add_tomatotype
26	Can change tomato type	9	change_tomatotype
27	Can delete tomato type	9	delete_tomatotype
\.


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('auth_permission_id_seq', 27, true);


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: django
--

COPY auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$36000$QKU7ySha2Zkm$6pEVMrtPZnDH2nuxnS/zCPi0fuvZsZhumkSi+ss5ZVE=	2017-09-11 22:58:48.705774+00	t	admin			admin@cumbubble.org	t	t	2017-09-11 13:30:52.143662+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: django
--

COPY auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('auth_user_id_seq', 1, true);


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: django
--

COPY auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 1, false);


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: django
--

COPY django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2017-09-11 13:37:36.56966+00	1	TomatoType object	1	[{"added": {}}]	9	1
2	2017-09-11 13:37:55.920094+00	1	TomatoColor object	1	[{"added": {}}]	8	1
3	2017-09-11 13:41:59.539963+00	1	Albertovske Gelb	1	[{"added": {}}]	7	1
4	2017-09-11 13:50:33.795209+00	2	rot	1	[{"added": {}}]	8	1
5	2017-09-11 13:50:39.3041+00	3	weiß	1	[{"added": {}}]	8	1
6	2017-09-11 13:53:57.325251+00	2	Alberta Girl	1	[{"added": {}}]	7	1
7	2017-09-11 13:56:26.186896+00	2	Alberta Girl	3		7	1
8	2017-09-11 13:57:37.080884+00	3	Alberta Girl	1	[{"added": {}}]	7	1
9	2017-09-11 14:38:02.207639+00	1	Albertovske Gelb	3		7	1
10	2017-09-11 14:50:11.362197+00	4	Albertovske Gelb	1	[{"added": {}}]	7	1
11	2017-09-11 14:52:15.450727+00	4	Albertovske Gelb	2	[{"changed": {"fields": ["image"]}}]	7	1
12	2017-09-11 15:00:58.773927+00	4	Albertovske Gelb	2	[]	7	1
13	2017-09-11 23:00:16.259974+00	10	Ananas Noire	2	[{"changed": {"fields": ["image"]}}]	7	1
14	2017-09-11 23:00:41.695993+00	142	Tschio Tschio San	2	[{"changed": {"fields": ["image"]}}]	7	1
\.


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('django_admin_log_id_seq', 14, true);


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: django
--

COPY django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	user
4	auth	group
5	contenttypes	contenttype
6	sessions	session
7	tomatos	tomato
8	tomatos	tomatocolor
9	tomatos	tomatotype
\.


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('django_content_type_id_seq', 9, true);


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: django
--

COPY django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2017-09-11 13:09:11.367665+00
2	auth	0001_initial	2017-09-11 13:09:12.414687+00
3	admin	0001_initial	2017-09-11 13:09:12.646206+00
4	admin	0002_logentry_remove_auto_add	2017-09-11 13:09:12.703954+00
5	contenttypes	0002_remove_content_type_name	2017-09-11 13:09:12.745061+00
6	auth	0002_alter_permission_name_max_length	2017-09-11 13:09:12.806629+00
7	auth	0003_alter_user_email_max_length	2017-09-11 13:09:12.844127+00
8	auth	0004_alter_user_username_opts	2017-09-11 13:09:12.862657+00
9	auth	0005_alter_user_last_login_null	2017-09-11 13:09:12.885636+00
10	auth	0006_require_contenttypes_0002	2017-09-11 13:09:12.89449+00
11	auth	0007_alter_validators_add_error_messages	2017-09-11 13:09:12.915098+00
12	auth	0008_alter_user_username_max_length	2017-09-11 13:09:13.002474+00
13	sessions	0001_initial	2017-09-11 13:09:13.176125+00
14	tomatos	0001_initial	2017-09-11 13:12:09.2208+00
15	tomatos	0002_auto_20170911_1521	2017-09-11 13:23:26.402718+00
16	tomatos	0003_auto_20170911_1548	2017-09-11 13:48:30.843736+00
17	tomatos	0004_auto_20170911_1553	2017-09-11 13:53:47.46874+00
\.


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('django_migrations_id_seq', 17, true);


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: django
--

COPY django_session (session_key, session_data, expire_date) FROM stdin;
lum3ax0r29evmcl8h1h3yxztauy10y7p	ZThmZmVhMTgyYTEwMzk1ZTc0OTQ5N2JiNjVlODMyZDYxNjUzNmYxYjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9oYXNoIjoiMTE2OTg2ZTgzNDM1ZjlkM2NlZTZjOWM1ODEyOTAwNjZhNjBiZTM5ZCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2017-09-25 13:32:02.706868+00
h8pdks3vd09dvc8c96z3iafem9ly3qyt	ZThmZmVhMTgyYTEwMzk1ZTc0OTQ5N2JiNjVlODMyZDYxNjUzNmYxYjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9oYXNoIjoiMTE2OTg2ZTgzNDM1ZjlkM2NlZTZjOWM1ODEyOTAwNjZhNjBiZTM5ZCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2017-09-25 22:58:48.714318+00
\.


--
-- Data for Name: tomatos_tomato; Type: TABLE DATA; Schema: public; Owner: django
--

COPY tomatos_tomato (id, name, description, image) FROM stdin;
1507	Albertovske Gelb	Stabtomate - Eine schöne, rein gelbe Stabtomate von gesundem Wuchs. Etwas fleischig, mild im Geschmack. Aus Tschechien.	images/Albertovske_gelb.jpg
1508	Alyi Mustang	Flaschenförmige, sehr schmal, eiförmige, paprikaförmige, lachsrosa bis rot gefärbte Tomate. Herkunft: Russland.	images/Alij_Mustang.jpg
1509	Amana Orange	Stabtomate - Große, gelborange Fleischtomate von ca. 10 cm Durchmesser. Saftig und aromatisch. 	images/Amana_Orange.jpg
1510	Amerikanische, Wildtomate	Stabtomate - Kleinfruchtige Wildtomate mit kugelrunden, roten Früchten von gerade mal 6 Gramm. Sehr Einheitlich in Form und Farbe, nahezu alle Früchte um 16 mm im Durchmesser. Etwa 8 Früchte sitzen eng an eng in kleinen und dichten Trauben. Spalieranbau sinnvoll.	images/Amerikanische_Wildtomate.jpg
1511	Amish Gold	Stabtomate - Ovalfruchtige, hoch wachsende Stabtomate mit orange-farbenen, pflaumenförmigen Früchten. Geschmack: Die Frucht schmeckt sehr gut.	images/Amish_Gold.jpg
1512	Amish Salad	Stabtomate - Große, ovale Stab-Obsttomate mit pinkfarbenen Früchten. Gut für Salate geeignet.	images/Amish_Salad.jpg
1513	Ananas	Stabtomate - Hohe Wärmeansprüche, für Hauswand, Tomatenkasten und Gewächshaus! Rote bis orangefarbene, geflammte, oft sehr schwere, kartoffelblättrige Stab-Fleischtomate. Sehr alte Sorte und extrem fleischig. Nur für   und warme Lagen oder unter Glas. Vielkammerig. Das Fruchtfleisch ist gelb-orange marmoriert und enthält wenig Samen. Sie wird hauptsächlich in  verwendet.	images/Ananas.jpg
1514	Andenhorn	Stabtomate - Kuriose Stabtomate mit roten spitz-paprikaförmigen Früchten, die eine lange ausgezogene Spitze haben. Bis 14 cm lang und 4 bis 5 cm Durchmesser. Sehr interessante Fruchtform. Mittelrot. Hoher aber später Ertrag bei Wärme. Im Freiland kein guter Ertrag.	images/Andenhoernchen.jpg
1515	Anna German	Stabtomate - (Anna Hermann) Nach polnischer Sängerin benannte osteuropäische Sorte. Wunderschöne, zitronenförmige und zitronengelbe Frucht. Größere Früchte sind eher Herzförmig (mit Spitze). Durchmesser ca.6 cm, 2- bis 3- kammerig, platzfest, oft hohl, spät reifend. Geschmack: milder Geschmack.\r\n \r\n Ertrag: Sehr guter Ertrag an warmen vollsonnigen Standort. Auch für die Kultur im Gewächshaus geeignet.	images/Anna_German.jpg
1516	Antho Weiss	Stabtomate - Eine Stabtomate mit weißcreme bis cremegelbe mit brauner Schipperung am Fruchtansatz kleinen etwa 2 bis 2,5cm großen Früchten. Sie sind rund bis leicht abgeflacht. Anbau: Spalieranbau sinnvoll.	images/Antho_Weiss.jpg
1517	Aranica Zloty Ozarowski	Stabtomate - Eine normal große Sorte, bei deren Anblick einem die Sonne im Herzen aufgeht. Fast runde leuchtend orange Früchte, welche mittelfrüh und reich tragen. Das Aroma ist sehr intensiv.	images/Arancia_Zlaty.jpg
1518	Aucuba	Stabtomate - Orangegelbe Fleischtomate aus Italien, mittelgroß, ertragreich, aromatisch. Platte Früchte, verschieden in der Größe, doch alle sehr schön gefärbt. Mehr oder weniger stark gerippt. Innen toll orange gefärbt mit sternförmig angeordneten Fruchtkammern. Äußerst dicke Fruchtwand. Meist um 100 g, doch auch schwerere Früchte kommen vor. Mild-süß im Geschmack, wenig Säure. Für Magenempfindliche Leute geeignet. Wirkt toll in Salaten mit gelben und roten Sorten.	images/Aucuba.jpg
1519	Aunt Ruby´s German Green	Stabtomate - Wüchsige, grüngelbe, etwa 2 m hohe, kartoffelblättrige Stab-Fleischtomate mit etwas platten und leicht gerippten, mittelgroßen, z. T. auch riesigen Früchten, deren Größe zwischen 5 und 15 cm schwankt. Das Gewicht liegt in der Regel zwischen 200 g und 300 g. Fruchtfleisch innen manchmal mit rosa Streifen durchzogen. Reif ist die Frucht eher orangegrün und an den Rippen oft dunkelorange gestreift. Alte wohlschmeckende Gartensorte für 	images/Aunt_Ruby_German_Green.jpg
1520	Aunt Ruby´s German Yellow	Stabtomate - Wüchsige, gelbe, etwa 2 m hohe, kartoffelblättrige Stab-Fleischtomate mit etwas platten und leicht gerippten, mittelgroßen, z. T. auch riesigen Früchten, deren Größe zwischen 5 und 15 cm schwankt. Das Gewicht liegt in der Regel zwischen 200 g und 300 g. Fruchtfleisch innen manchmal mit rosa Streifen durchzogen. Reif ist die Frucht eher gelborange und an den Rippen oft gelborange gestreift. Alte wohlschmeckende Gartensorte für warme Standorte.	images/Aunt_Rubys_German_Yellow.jpg
1521	Azoychka Orange	Stabtomate - Sehr hoch wachsende (2,5 - 2,7 m), gelborange Fleischtomate.  Unregelmäßig geformte, platte Früchte mit vielen Fruchtkammern 2 - 3 Früchte je Wickel. Kartoffelblättrig. Süß und wohlschmeckend. Alte russische Sorte, die aber oft erst ab 80 cm Höhe Früchte ansetzt.	images/Azoychka_Orange.jpg
1522	Azoychka Red	Stabtomate - Sehr hoch wachsende (2,5 - 2,7 m), rote Fleischtomate. Unregelmäßig geformte, platte Früchte mit vielen Fruchtkammern 2-3 Früchte je Wickel. Kartoffelblättrig. Alte russische Sorte, die aber oft erst ab 80 cm Höhe Früchte ansetzt. Süß und wohlschmeckend.	images/Azoychka.jpg
1523	Babuschka	Stabtomate - Große, dunkelrosa Fleischtomate. Voll durchfärbt und gut tragend. Gutes Säure-Zucker-Verhältnis. Dickfleischige, samenreiche Früchte. Mehrkammerig. Sehr aromatisch. Gewicht zwischen 250 und 400 Gramm.	images/Babuschka.jpg
1524	Bahia	Stabtomate - Mittelhohe Stabtomate mit plattrunder, weinroter Frucht, oft mit dunkler Kappe und einigen Rippen. Gesunde Pflanze, die fleißig trägt. Mehrere Fruchtkammern. Sehr guter mild-süßer Geschmack. Trägt ab Mitte August. Von Agroceres, Brasilien.	images/Bahia.jpg
1525	Banan	Stabtomate - Sehr frühreif mit schönen, länglichen, roten Früchten bis 70 Gramm. Eher walzenförmig, meist mit stumpfer Spitze. Ketschup-Typ.	images/Banan.jpg
1526	Banana Legs	Stabtomate - (Banana Legs Large Yellow) Längliche, gelbe Früchte mit 2 bis 3cm Durchmesser. Jede Frucht wiegt etwa 30 bis 60 Gramm, selten mehr.  ! Früchte ähneln Mini-Bananen, sind aber nicht gebogen. Ertragreich in warmer Lage, sonst nur mäßige Ernte, doch äußerst dekorativ. Mittelhohe Pflanze. Platzfest. 2 Fruchtkammern. Festfleischig. 5 bis 6 Früchte je Traube. Erntebeginn: August. Herkunft: Australien	images/Banana_Legs.jpg
1527	Bawole Serce	Stabtomate - Polnische Sorte. Eine mittelhohe bis hohe Stabtomate mit rosarot bis pinkfarbenen Fleischtomate. Die Früchte sind dicklich oval, leichte Rippung am Fruchtansatz, neigen zu Grünkragen, platzen leicht aber vernarben sehr gut.	images/Bawole_Serce.jpg
1528	Behaarte Brandywine	, Ampeltomate - Mittelfrühe Buschtomate mit intensiv orange Früchten. Möglichst Überdacht hinhängen, wegen Braunfäule. Niedrige, buschige Pflanze mit Massen ca.4cm großen, behaarten Früchte und behaarten Blättern. Kaum Platzer. Erste Früchte gegen Mitte August. Die Pflanzen breiten sich mit fast wagerechten Trieben am Boden aus, daher mindestens 50 bis 60 cm Abstand halten. Wuchshöhe dagegen nur ca. 25 cm. Für eine Ampel genügt eine Pflanze. Recht robust im Wuchs.	images/Behaarte_Brandywine.jpg
1529	Benissoinante	Stabtomate -   mit strahlend gelben, runden, süßlich schmeckenden, milden Früchten. 2 Fruchtkammern. Die etwa 40 Gramm schweren Früchte sind nicht immer von gleicher Sortierung doch relativ fest und dickwandig. Guter und sicherer Ertrag.	images/Benissinante.jpg
1530	Bertas Gefleckte	Stabtomate - Mittelgroße rotgelb unregelmäßig gefleckte Stabtomate. Recht hoher Wuchs. Ertragsbeginn etwa Anfang August. Leicht und ohne jegliche Verletzung der Frucht zu ernten.	images/Bertas_Gefleckte.jpg
1531	Beuteltomate aus El Salvador	Stabtomate - Gelbe, bei Vollreife gelborange Stabtomate. Die Mittelfrühe Frucht gleicht einem zugeschnürten Tabakbeutel. Die Frucht ist sehr fest und platzt nicht. Sie kann vor Braunfäulebeginn abgenommen und eingelagert werden. Auf dem Lager wochenlang haltbar. Reichtragende, Hochwachsende Pflanzen, die nur geringe Pflege brauchen.	images/Beuteltomate.jpg
1532	Bianca Cherry	Spaliertomate - Seltene, cremeweiß-gelbe, runde Obsttomate, eine Wildform mit hohem Zuckergehalt. Lange widerstandsfähig gegen Braunfäule, obwohl angrenzende Sorten z. T. total abstarben. Keine einzige Frucht wurde krank. Völlig platzfest. Die Frucht hat nur 1,8 cm im Durchmesser. Wuchshöhe etwa 2,4m. Meist 7 bis 8 Früchte pro Wickel. Diese Sorte sollte mehrtriebig am Spalier erziehen. Nicht ausgeizen.	images/Bianca_Cherry.jpg
1533	Big Rainbow	Stabtomate - Gelborange Tomate mit gutem Geschmack. Eine der wohlschmeckendsten Fleischtomaten mit eher süßem als saurem Geschmack. Die Frucht kann sehr groß (500g) werden und ist platt sowie vielfach leicht gerippt. Nur 2 Früchte je Traube belassen, damit sie sich gut ausformen und groß werden kann. Eine leichte Flammung kommt bei reifen Früchten zum Vorschein, oft sind die Früchte aber gelb mit einer Rötung am Blütenpol. Vielkammerig.	images/Big_Rainbow.jpg
1534	Big Sungold Orange	Stabtomate - Nur murmelgroße Früchte in üppigen Fruchtständen. Ist gut widerstandsfähig gegen Braunfäule. Schöne, orangefarbene Früchte. Sehr hohes und robustes Wachstum. Höhe ohne weiteres 2,8 bis 3,5m. Diese Sorte sollte am Spalier gezogen werden.	images/Big_Sungold_orange.jpg
1535	Big White Pink Stripeds	Stabtomate - Weißgelbe Stabtomate, die etwas gestreift ist. Plattrund und etwas gerippt. Hoher Ertrag, süß und saftig. Geschützte Lage von Vorteil.	images/Big_White_Pink_Stripes.jpg
1536	Big Yellow Pink Stripeds	Stabtomate - Bis 400 Gramm schwere, runde, abgeflachte, gelb-orange Früchte mit rotem Zentrum. Sehr aromatisch. Eine der besten zweifarbigen Sorten. Am deutlichsten wird die Zweifarbigkeit bei aufgeschnittenen Früchten. Sehr viele Fruchtkammern. Höchst dekorative und ungewöhnliche Sorte.	images/Big_Yellow_Pink_Stripes.jpg
1537	Big Zebra	 Stabtomate - Rot-grün gestreifte Fleischtomate. Innen grün mit rosa Mitte. Hoch wachsend, mild-süß im Geschmack. Kuriose und seltene Tomatensorte. 	images/Big_Zebra.jpg
1538	Black from Tula	Stabtomate - Dunkle Stab-Fleischtomate, die in heißen Sommern fast Schwarz werden. Sonst eher tief weinrot und am Stielansatz olivfarben. Früh, aromatisch-süß und robust. Erste Ernte schon ende Juli. 150 bis 200 g schwere Früchte oft mit Nabel, kaum Gerippt. Nur mit Stiel (Schere) zu ernten. Mittlerer Ertrag. Gesunder und kräftiger Wuchs an etwa 2m hohen Pflanzen.	images/Black_from_Thula.jpg
1539	Black Marr	Stabtomate - Eine Pflaumenförmige, schwarze Sorte. Die olivbraun-grün gescheckten Früchte färben sich bei Vollreife braunrot mit dunkler, olivgrüner Kappe. Sehr reich tragend. Fruchtgröße etwa 5x3,5 cm. Leicht zu ernten. Dicht besetzte Wickel mit 7 bis 9 Früchten. Gute Gartensorte für trockene Plätze. Mittelfrühe Reife.	images/Black_Marr.jpg
1540	Black Pear	Stabtomate - Tomate von ungewöhnlich braun-schwarzer Farbe und ungewöhnlicher, glockiger Birnform. Schwere, feste Frucht. Kräftig wachsende Stabtomate von über 2 m Höhe. Rarität für warme Standorte.	images/Black_Pear.jpg
1541	Black Plum	Stabtomate - Sie hat keine schwarzen, sondern dunkle, braunrot-olivfarbene Früchte, die sich bei Hitze stärker und dunkler färben. Die mittelgroße Frucht ist länglich ( tonnenförmig ), zwei- bis dreikammrig und süß. Sehr feste Fruchthaut, lange lagerbar. Etwa 35 – 50 Gramm schwer. Innen smaragd- bis braunolivgrün, immer mit dunkler Kappe. Diese Sorte ist relativ widerstandsfähig gegen Braunfäule.	images/Black_Plum.jpg
1542	Black Zebra	Stabtomate - Die aromatischen und saftigen Früchte sind rund sowie schwarz-grün gestreift. Fruchtgewicht von 75 bis 150 Gramm. Geschmacklich hervorragend. Eine delikate Rarität von ungewöhnlicher Optik – extrem dunkel. Ideale Kultur an warmer Hauswand.	images/Black_Zebra.jpg
1543	Blonde Sarah	Stabtomate - Exzellente alte deutsche Sorte aus der Region Freiburg. Süßsaftige, bis 300 Gramm schwere, gelbe, fleischige Früchte. Am Stielansatz oft braun gesprenkelt. Mittelfrüh.	images/Blonde_Sarah.jpg
1544	Blondköpfchen	Stabtomate - Mittelfrühe Stabtomate mit runden, hellgelben Früchten aus Debrecen, Ungarn. Eine der schönsten gelben Sorten. Sehr einheitliche Sortierung, reich tragend. Fruchtgewicht etwa 30 Gramm. Durchmesser der leicht platten, meist aber kugelrunden Frucht etwa 40 mm. Unreif von oben her geflammt. Ideale Gartensorte für volle Sonne.	images/Blondkoepfchen.jpg
1545	Blue Berry	Stabtomate - Exotisch! Blau-lila-auberginenfarbig bei Vollreife ins blaurot umfärbende, Die runde Tomate wird ca. 4 bis 6 cm groß. Von außen perfektes Farbspiel. Innen normal hellrot. Sehr hoher und kräftiger Wuchs. Kann mehrtriebig gezogen werden. Guter Geschmack.	images/Blue_Berry.jpg
1546	Blue Fruit	Buschtomate, Ampeltomate - Frühe Buschtomate mit intensiv roten Früchten. Niedrige, buschige Pflanze mit Massen kleiner roter Früchte. Kaum Platzer. Sehr früh. Erste Früchte gegen Mitte Juli. Die Pflanzen breiten sich mit fast wagerechten Trieben am Boden aus, daher mindestens 50 bis 60 cm Abstand halten. Wuchshöhe dagegen nur ca. 25 cm. Für eine Ampel genügt eine Pflanze. Recht robust und gesund im Wuchs. Möglichst Überdacht hinhängen, wegen Braunfäule	images/Blue_Fruit.jpg
1547	Boettner Italien	Stabtomate - Kuriose Stabtomate mit roten, kantig spitz-paprikaförmigen Früchten, die eine lange ausgezogene Spitze haben. Sie werden bis 14cm lang und erreichen 4 bis 5 cm Durchmesser.  Mittelrote Färbung mit einer sehr interessanten seltenen Fruchtform. Hoher, aber später Ertrag. Die Pflanze benötigt viel bei Wärme. Ideal für Tomatenkästen. Im Freiland kein guter Ertrag.	images/Boettner_Italien.jpg
1548	Brasilianisches Ei	Stabtomate - Ketschuptomate mit gesundem, hohem Wuchs und langer Ertragsdauer. Ertragreich Geschmacklich nicht überragend. Feste, mittelgroße und länglichovale Früchte. Blätter relativ stabil gegenüber der Braunfäule - z. T. werden eher die Früchte befallen.	images/Brasilianisches_Ei.jpg
1549	Braune Pflaume	Stabtomate - Eine Pflaumenförmige, schwarze Sorte. Die olivbraun-grün gescheckten Früchte färben sich bei Vollreife braunrot mit dunkler, olivgrüner Kappe. Sehr reichtragend. Fruchtgröße etwa 5x3,5 cm. Leicht zu ernten. Dicht besetzte Wickel mit 7 bis 9 Früchten. Gute Gartensorte für trockene Plätze. Mittelfrühe Reife.	images/Braune_Pflaume.jpg
1550	Brauner Bär	Stabtomate - Eine der ungewöhnlichsten braunen Stabtomaten. Beim durchschneiden der festen etwa 100 Gramm schweren Früchte zeigen sich die Samen in oliv-braunem Samenmantel. Die Fruchtform variiert. Bei mir eher einheitlich hochrund und kantig-gerippt von rot-olivbrauner Farbe. Wuchshöhe etwa 1.8 Meter.	images/Brauner_Baer.jpg
1551	Brauner Batzen	Stabtomate - Hochwachsende Stabtomate mit wohlschmeckenden, braunen Früchten, die besonders an den unteren beiden Fruchtständen eine stark uneinheitliche Form aufweisen. Nach oben hin werden die Früchte einheitlicher und eiförmig. Sorte für Hausgarten zum unmittelbaren Verbrauch ab Stock. Sonniger Standort, wenig Wasser und geringe Düngergaben fördern den bereits genetisch bedingten guten Geschmack.	images/Brauner_Batzen.jpg
1552	Braunes Birnchen	Stabtomate - Kleine, eiförmige, sehr dunkle, braunrote bis braune Obsttomate. Eine der wenigen dunklen, kleinfrüchtigen Sorten. Die 2 cm großen Früchte hängen in einfachen Trauben zu 6 bis 8 Stück. Saftig und würzig im Geschmack. Mittelhoher Wuchs. Liebhabersorte. Sehr platzfest.	images/Braune_Birne.jpg
1553	Brown Berry	Stabtomate - Kleine, runde, sehr dunkle, braunrote bis braune Obsttomate. Eine der wenigen dunklen, kleinfrüchtigen Sorten. Die 2 cm großen Früchte hängen in einfachen Trauben zu 8 bis 10 Stück. Saftig und würzig im Geschmack. Mittelhoher Wuchs. Liebhabersorte. Sehr platzfest.	images/Brown_Berry.jpg
1554	Brown Derby Mix	Stabtomate - Fülltomate, Paprikatomate. Eine hohle Füll- oder Paprikatomate mit großen, breitkantigen, paprikaähnlichen Früchten. Späte Reife im Freiland, doch sehr dekorative Früchte. Die Frucht ist breiter als bei anderen Paprikatomaten. Kuriose Rarität für Sammler. Braucht einen vollsonnigen, warmen Platz an einer Hauswand oder Kultur im Gewächshaus. Platzfest. 4 bis 6 Früchte je Wickel. Etwa 1,9 m hoch wachsend.	images/Brown_Derby_Mix.jpg
1555	Brown Egg Cherry	Stabtomate - Kantig-oval, schwarzrot-olivgrüne Früchte von etwa 30 bis 40 Gramm. Früchte bis 55 mm lang und 40 mm im Durchmesser. Fest, platzfest, würzig, sehr reich tragend. Oben mit olivfarbener Kappe. Hohe, kräftige Pflanzen von gesundem Wuchs. Sehr leicht zu pflücken. Nicht zu früh ernten. Empfehlenswerte Gartensorte. 	images/Brown_Egg_Cherry.jpg
1556	Caro Rich	Stabtomate - Große orange, geflammte Fleischtomate mit mildem, sehr angenehmen Geschmack. Die Pflanze benötigt viel Sonne und sollte unbedingt an warmer Stelle ausgepflanzt werden. Es ist eine typische Liebhabersorte. Früchte: flachrund bis angedeutet herzförmige Früchte, die oben gerippt  sind. 2 bis 3 gigantische Früchte wachsen je Traube. Bis500 Gramm  schwere Früchte sind keine Seltenheit. Wuchshöhe: 190cm  Spätreifend Pflege: regelmäßig gießen, da die Früchte sonst oben einreißen.	images/Caro_Rich.jpg
1557	Carobetta	Stabtomate - Mittelhohe, relativ frühe Stabtomate mit tief orangeroten, eher plattrunden, etwas säuerlichen Früchten, welche am Blütenpol eine plumpe Spitze aufweisen. Leichte Rippung. Früchte: Durchmesser 5 bis 6 cm, Gewicht etwa 80 bis 100 Gramm. 4 bis 5 Früchte je Traube. Stabile und platzfeste Frucht. Frühe, oft sehr vielkammerige Fleischtomate mit vielen Fruchtkammern. Innen ist die Frucht herrlich orangegelb. \r\n \r\n Herkunft: stammt aus Russland.	images/Carobetta.jpg
1558	Carotina	Stabtomate - Orangefarbene, mittelspäte Stabtomate. Saftreich und mild im Geschmack. Sehr schöne Farbe. Früchte: Zum Teil große Früchte, auch innen herrlich orangerot durchfärbt. Etwas mehr als mittelgroße, mehrkammerige, mild-süße Früchte. 4 – 6 Früchte je Traube. Flachrund und leicht gerippt. Gut für warme Lagen geeignet. In heißen Sommern früher reif. \r\n \r\n Sehr beliebte Sorte mit mittlerem Ertrag.	images/Carotina.jpg
1559	Cerise Gelb	Stabtomate - Eine gelbe Sorte mit etwas größeren Obsttomaten. Knackig und süß mit wenig Säure. Schönes Gelb, rund bis etwas ovalrund, etwa 11 bis 19 g schwer. Trauben mit 8 bis 12 Früchten. Sehr guter Behang. Recht frühe Reife – beginnend in der 2. Julihälfte.\r\n \r\n Kräftiger, sehr gesunder Wuchs. Platzfest – nur überreife Früchte reißen längsseits auf. Ist im Freiland sehr gesund und auch gut widerstandsfähig gegenüber Braunfäule.	images/Cerise_Gelb.jpg
1560	Cerise Rot	Stabtomate - Eine rote Sorte mit etwas größeren Obsttomaten. Knackig und süß mit wenig Säure. Schönes Gelb, rund bis etwas ovalrund, etwa 11 bis 19 g schwer. Trauben mit 8 bis 12 Früchten. Sehr guter Behang. Recht frühe Reife – beginnend in der 2. Julihälfte. Kräftiger, sehr gesunder Wuchs. Platzfest – nur überreife Früchte reißen längsseits auf. \r\n \r\n Ist im Freiland sehr gesund und auch gut widerstandsfähig gegenüber Braunfäule.	images/Cerise_rot_Cocktail.jpg
1561	Champagne Cherry	Spaliertomate - Seltene, cremeweiß-gelbe, runde Obsttomate, eine Wildform mit hohem Zuckergehalt. Die Frucht hat nur 1,8 cm im Durchmesser. Wuchshöhe etwa 2,4m. Meist 7 bis 8 Früchte pro Wickel. Diese Sorte sollte mehrtriebig am Spalier erziehen. Nicht ausgeizen.\r\n \r\n Lange widerstandsfähig gegen Braunfäule. Völlig platzfest.	images/Champagne_Cherry.jpg
1562	Cheroquee Chocolate	Stabtomate - Dunkle, bräunlich-rote Stabtomate mit mittelgroßen, zumeist platten Früchten 200 – 300 g, meist aber kleiner. Oben mit olivfarbener Kappe. Historische, süß schmeckende Sorte.	images/Cheroquee_Chocolate.jpg
1563	Chocolate	Stabtomate - Rotbraune große Früchte, süßaromatisch. Die Früchte können pfundschwer werden, sie sind dunkel weinrot bis braun und haben oben eine dunkle, olivgrüne Kappe. Eine durchschnittliche Frucht hat 9 bis 10 cm Durchmesser und wiegt rund 270 g. Viele, aber nicht zu tiefe Rippen und extrem fleischig. \r\n \r\n Die platten Früchte sind nur mit der Schere zu ernten.	images/Chocolate.jpg
1564	Cocoba	Stabtomate - Paprikaförmige, braunrote teils hohle Früchte. Mittelspät, doch lang und reich tragend.  Leider teils auch unförmige Früchte. Wahrscheinlich noch nicht stabil.	images/Cocoba.jpg
1565	Coer de Pigeon - „Traubenherz“	Stabtomate - „Traubenherz“  Eine Stabtomate, ertragreiche Wildtomate mit nicht ganz kirschgroßen, roten Früchten, die in Trauben mit teils mehr als 80 Früchten reifen. Die herzförmigen Früchte sind knackig und saftig. Sie wiegen etwa 5 bis 7 g und können sehr lange hängen bleiben ohne zu faulen und ohne zu schrumpeln.  Gut widerstandsfähig gegen Braunfäule.	images/Coeur_de_Pigeon.jpg
1566	Columbianum Wildtomate	Stabtomate - Eine überaus Reichtragende, recht robuste, gesund wachsende Wildform mit büscheligen Fruchtständen, welche jeweils bis zu 90 Früchte von etwa 25 bis 28 mm Durchmesser tragen. Fruchtgewicht 9 bis 14 g. Rot, am Blütenpol mit kleiner, aber scharfer Spitze. Äußerst reichtragend, gut platzfest und erfrischend saftig. Süßlich-würziger Geschmack.	images/Columbianum_Wildtomate.jpg
1567	Cox Orange	Stabtomate - Füll- oder Paprikatomate, Paprikaförmige, hell- bis mittelrote Früchte mit gelben Streifen. Mittelgroß, meist hohl und mit dicker Fruchtwand. Gerippt. Rarität, da mehrere seltene Eigenschaften zusammenkommen. Mittelspät, doch lang und reich tragend. Unter Glas sehr hoher Ertrag mit teils riesigen Früchten. Dekorative Sorte, zum Füllen wie Paprika oder für Salate.	images/Cox_Orange.jpg
1568	Cozzano 1	Stabtomate - Italienische rote Stabtomate mit platten, festen, saftigen, geschmackvollen Früchten. Kräftiger gesunder Wuchs. Hochwachsend ca. 1,8 m und ca.8 cm große Früchte.	images/Cozzano_1.jpg
1569	Cozzano 2	Stabtomate - Italienische gelbe Stabtomate mit platten, festen, saftigen, geschmackvollen Früchten. Kräftiger gesunder Wuchs. Hochwachsend ca. 1,8m und ca.8cm große Früchte.	images/Cozzano_2.jpg
1570	Cozzano 3	Dies ist eine lang gestreckt ovale bis etwa birnenförmige Tomate. Sehr leicht ohne Stiel zu ernten. Massenträger mit Fächerförmigen Trauben. Bis 50 Früchte je Wickel. Fruchtgewicht 50x30 mm. Gewicht etwa 25 Gramm.	images/Cozzano_3.jpg
1571	Cream Sausage	Stabtomate - Eine Sorte mit länglich, eiförmigen, cremefarbenen Früchten. Leider schwachwachsende Pflanze mit einer Höhe von etwa 1,6 m. Tomaten ca. 7 cm lang und 3 cm im Durchmesser. Geschmacklich gut. Liebhaberpflanze.	images/Cream_Sausage.jpg
1572	Cuban Pink	Stabtomate - Pinkrosa, lachsfarbene, größere Kirsch-Stabtomate mit nicht zu kleinen, ovalen Früchten. Ungewöhnlich in der Farbe. Auffallend schöne Früchte, die beachtlich gesund wachsen. 15 bis 30 Früchte je Wickel. Wuchshöhe bis 2,5m. Guter und sicherer Ertrag an mild-süßen, gut platzfesten Früchten. Auch mehrtriebiger Spalieranbau möglich. Robust, auch gegen Braunfäule.	images/Cuban_Pink.jpg
1573	Cuor di bue	Stabtomate - Ochsenherz, oder „ Coeur de Boeuf “ Große Fleischtomate. Drahtige, hochwachsende Sorte mit roten bis rötlich-lila Früchten und langen hängenden Blättern. Schöne, herzförmige Kochtomate. Dünnhäutig, mittelspät und nur bei Wärme sehr ertragreich. Früchte: Leicht gerippte Schultern. Sehr fleischig und fest mit wenig Samen. nsonsten wenige, doch relativ große bis sehr große Früchte. Für den geschützten Freilandanbau, Glashaus, Folienkasten. \r\n \r\n Herkunft: Italien.	images/Cuor_di_bue_Ochsenherz.jpg
1574	Cuostraleé	Stabtomate - Bis zu 1kg schwere, leicht gerippte, rote, wohlschmeckende Fleischtomate aus Frankreich. Riesenfrüchte wohlgeformt und total rot durchgefärbt. Durchmesser 8 bis 15 cm. Eine Spitzensorte unter den Riesentomaten. Sehr hoher wuchs (1,8 bis 2,2 m). \r\n \r\n Stabile Pfähle erforderlich oder gut hochbinden.	images/Cuostralee.jpg
1575	Dar Zavdzhiya	Stabtomate - Glänzend rote Stabtomate mit runden, leicht abgeflachten, kaum gerippten Früchten. Saftig, aromatischer Geschmack. Erste Ernte ab Anfang August. Größe: Durchmesser: ca.7cm, unter Glas auch größer  Gewicht: ca.100g Besonderheiten: Hoher kräftiger Wuchs.	images/Dar_Zavdzhiya.jpg
1576	Dattelkirschtomate	Stabtomate - Klein fruchtige Sorte mit pflaumenförmigen etwas kantigen, dickwandigen, knackigen Früchten von glänzend, roter Farbe. Größe: Sehr hochwachsend etwa 2 bis 2,5m. Besonderheiten: Die Pflanze kann auch mehrtriebig, bzw. am Spalier gezogen werden.	images/Dattel_Kirschtomate.jpg
1577	Datteltomate	Stabtomate - Klein fruchtige Sorte mit pflaumenförmigen, dickwandigen, knackigen Früchten von glänzend, roter Farbe. Besonderheiten: Die Pflanze kann auch mehrtriebig, bzw. am Spalier gezogen werden..	images/Datteltomate.jpg
1578	De Berao Braun	Stabtomate - Eine braune bis tief oliv-braune, samtig-matt schimmernde schöne russische Sorte. Sie ist oval-eiförmig. Allgemein sehr gesunder und oft auch hoher Wuchs etwa 2,5 bis 3,2m. \r\n \r\n Besonderheiten: Saftiger, süßer und geschmacklich wesentlich besser als „De Berao Rot“. .	images/De_Berao_Braun.jpg
1579	De Berao Gelb	Stabtomate - Gelbe, lang gestreckt eiförmige Sorte. Allgemein sehr gesunder und oft auch hoher Wuchs etwa 2,5 m bis 3,2 m.  Besonderheiten: Saftiger, süßer und geschmacklich viel besser als „De Berao Rot“. Russische Sorte.	images/De_Berao_Gelb.jpg
1580	De Berao Rosa	Stabtomate - Sehr große Stabtomate, äußerst robuste Sorte.Diese gesund wachsende Pflanzen mit gutem und sicherem Ertrag stammt aus Irkutsk und trägt aromatische rosa-pinkfarbene Früchte. Sie eignet sich sehr gut für Freilandanbau. Der Boden muss kräftig gemulcht werden, damit es keine Platzer gibt. Besonderheiten: Der intensive Geschmack ist der Beste von allen „De Berao“ Sorten.	images/De_Berao_Rosa.jpg
1581	De Berao Rot	Stabtomate - Ketschuptomate mit gesundem, hohem Wuchs und langer Ertragsdauer. Feste, mittelgroße und länglichovale Früchte. Ertragreich. Blätter relativ stabil gegenüber der Braunfäule - z. T. werden eher die Früchte befallen. Besonderheiten: Herkunft: Lettland und Russland.	images/De_Berao_Rot.jpg
1582	Delikatess Gelb	Stabtomate - Eine der schönsten glatten Fleischtomaten. Sehr überzeugend in Fruchtform und Farbe. Plattrunde, minimal gerippte (glatte), sehr große Frucht (200-300 g und oft viel mehr). Sechs und mehr sternförmige Fruchtkammern. Sehr robust und gut pilzstabil. Meist hochwachsend, kräftig-gesunde Pflanzen. Wohlschmeckend, fest und auch saftig. hervorragend für warme Standorte, Hauswand. Verträgt auch windige Standorte. Besonderheiten: Verträgt auch Hitze.	images/Delikatess_Gelb.jpg
1583	Deweese Streaked	Stabtomate - Große, gelb-orange panaschierte Stab-Fleischtomate. Fruchtgewicht zumeist über 200g. Besonderheiten: Die Frucht ist platt und nur mäßig gerippt.	images/Deweese_Streaked.jpg
1584	Die kleinen Mohren	Stabtomate - Längliche, vierkantige, ovale Frucht. Braunrot. Mild im Geschmack. Oft 6 cm lang und 4 cm im Durchmesser. Hoch wachsend bis ca. 2,5 m. Besonderheiten: Reich tragend und robust gegen die Braunfäule.	images/Die_kleinen_Mohren.jpg
1585	Diklu Roza - ( Dikaja Rosa ) „Wilde Rose“	Stabtomate - Sehr große, rosarote, platte, gerippte Fleischtomate. Viele Fruchtkammern. Besonderheiten: Wahrscheinlich russische Sorte.	images/Diklu_Roza.jpg
1586	Dina	Stabtomate - mit herrlich klar orangen Früchten, die in der Form eher rund, manchmal auch kantig sind. Angedeutete Rippen. Saftig, geschmacklich süß. : Kann schwer werden.	images/Dina.jpg
1587	Dixi Golden Giant	Stabtomate - Hellgelb bis orange, sehr groß, süßfruchtig, teilweise rötlich. Eine Faszinierende leckere Fleischtomate. Fruchtgewicht ca. 400 g und mehr. \r\n \r\n : Warmer geschützter Standort nötig.	images/Dixi_Golden_Giant.jpg
1588	Donnerkeil	Stabtomate - Landsorte mit dünnen, langen, kleinen, roten Früchte. Sehr pflegeleichte Sorte, die vielfach gelobt wird. Mittelhoher, doch zeitiger und beachtlicher lang andauernder Ertrag.  : Etwas lockerer wuchs, der vermutlich etwas vor Braunfäule schützt.	images/Donnerkeil.jpg
1589	Douce de Picardie	“Blanche Douce de Picardie”, “Süße aus der Picardie“ Stabtomate - Weiße bis cremegelbe Stabtomate mit platten, unregelmäßig, meist nicht stark gerippten, süßen Früchten.  : Mittelgroße, ertragreiche Fleischtomate mit meist über 100g Gewicht.	images/Douce_de_Picardie.jpg
1590	Doucing With Smurfs	Stabtomate - Exotisch! Blau-lila-auberginenfarbig bei vollreife ins blaurot umfärbende ca. 3 bis 4 cm große, runde Tomate. Von außen perfektes Farbspiel. Innen normal hellrot. Sehr hoher und kräftiger Wuchs. Guter Geschmack. : Kann mehrtriebig gezogen werden.	images/Doucing_With_Smurfs.jpg
1591	Dr. Carolyn - Stabtomate	Stabtomate - Weiß bis hellgelb, aromatisch, ertragreich, nach Carolyn Male, aus “ Galinas “. : Die Früchte dieser Sorte sind sehr dickwandig, blassgelb, rund-oval, 3 cm groß und haben 2 Fruchtkammern.	images/Dr_Carolyn.jpg
1592	Durban I  (Südafrika)	Stabtomate - Eiförmige (8 cm lange), orangerote, glänzende, Stabtomate.\r\n \r\n : halbhohe und saftige Stabtomate.	images/Durban_I_aus_Suedafrika.jpg
1593	Earl of Edgecombe Orange	Stabtomate - Eine der schönsten Fleischtomaten. Relativ, drahtig wachsende Pflanze. Blätter relativ klein. Frucht reif bernstein-orangegelb, gerippt, mittelgroß bis groß, sehr fleischig, viele Fruchtkammern. Unreife Früchte von hellgelber Farbe. Ganz ungewöhnlich in der Farbe. Wunderschön.  Mittlerer Ertrag an etwa 140 g bis 180 g schweren Früchten. Soll aus Neuseeland stammen.	images/Earl_of_Edgecombe.jpg
1594	Earl of Edgecombe Red	Stabtomate - Eine der schönsten Fleischtomaten. Relativ, drahtig wachsende Pflanze. Blätter relativ klein. Frucht reif rot, gerippt, mittelgroß bis groß, sehr fleischig, viele Fruchtkammern. Unreife Früchte von hellgelber Farbe. Ganz ungewöhnlich in der Farbe. Wunderschön. Mittlerer Ertrag an etwa 140 bis 180g schweren Früchten. Soll aus Neuseeland stammen.	images/Earl_of_Edgecombe.jpg
1595	Ei von Phuket	Stabtomate - (Pink Plum) Eine der ungewöhnlichsten Stabtomaten überhaupt. Die zunächst wässern-gelblichen, länglich-eiförmigen Früchte wandeln ihre Früchte wandeln ihre Farbe von Hellrosa in Pink. Diese Sorte fällt im Garten zwischen anderen Tomaten aufgrund der Fruchtfarbe sofort auf. Es entwickeln sich Trauben von 8 bis 14 Früchte zu je 25g. Kräftiger, gesunder Wuchs. Von der Insel Phuket im Andamanischen Meer. Trotz der tropischen  Herkunft sicher und gut in unserem Klima wachsend. Reife ab Ende Juli.  Guter Ertrag. Stabile und platzfeste Frucht.	images/Ei_von_Phuket.jpg
1596	El Salvador 1 u. 5	flaschenförmige Auslese Stabtomate - Langgestreckte, etwa 7 cm lange, flaschenförmige Früchte von roter bis scharlachroter Farbe. Unten mit stumpfer Spitze. Sehr leicht zu prüfen. Kuriose Sorte. Gewicht etwa 30-35 g. Wuchshöhe etwa 1,80 m.	images/El_Salvador.jpg
1597	Elbe Braun	Stabtomate - Alte deutsche kartoffelblättrige Stab-Fleischtomate mit flachrunden, mittelgroßen, dunkelroten bis braunen Früchten.  Wuchshöhe: Höhe etwa 1,80 m bis 2,20 m	images/Elbe.jpg
1598	Elberta Girl	Stabtomate - Exotische Stabtomate, die vollkommen mit einem haarigen Pelz übersät ist- und zwar sowohl die Früchte als auch Blätter und Stängel! Zusätzlich sind die Früchte gelb-rot gestreift. Die Pflanzen sind mittelhoch und locker im Wuchs. Die fleischigen, oft 100 g schweren Früchte sind länglich bis herzförmig und haben meist 3 Fruchtkammern. Eine echte Rarität für den erfahrenen Tomatenfan. Braunfäuleanfällig durch die Behaarung.	images/Elberta_Girl.jpg
1599	Elfenbein Ei	Stabtomate - Amerikanische Sorte mit eiförmigen, elfenbeinfarbenen Früchten. Gesund im Wuchs. Sehr guter Ertrag. Hoch wachsend bis etwa 2,20 m. Früchte ca. 6 cm bis 7cm hoch und 3 cm bis 4 cm im Durchmesser.	images/Elfenbein_Ei.jpg
1600	Emeraude	Stabtomate - Groß fruchtige, grüngelbe Stab-Fleischtomate aus Frankreich mit vielen Fruchtkammern. Mittelhoher Ertrag. Sehr süß wie sehr aromatisch schmeckend. Starker Wuchs von etwa 1,70 m bis 2,00 m.	images/Emeraude.jpg
1601	Extra Erly	Stabtomate - Obsttomate von mittlerer Höhe (etwa 1,80 m ). Rote Frucht von ovaler Form, etwa 32 mm hoch und 28 mm breit. Gewicht etwa 15 g. Eine Sorte von besonders früher Reife ab Mitte Juli und mit zarter Schale. Trauben von bis zu 22 Früchten. Platzfest, ohne Stiel zu ernten. Feste, haltbare Frucht. Gute Sorte für einen Frühertrag.	images/Extra_Early.jpg
1603	Fablonelystnyj	Stabtomate - Eine Miniatur-Fleischtomate, die nur 18-20 g wiegt. Die Frucht hat meist 3 Rippen, 3 bis 4 Fruchtkammern und ist plattrund. Durchmesser 3 bis 4 cm. Höhe der Frucht etwa 25 mm. Meist einfache, teils aber auch 1x gegabelte Fruchtstände 6 bis 10 Früchte je Wickel. Eine Sorte mit sehr kräftigem, stabilem Wuchs (oft über 2,50 m) und  Kräftigem Haupttrieb. Dennoch lockerer Wuchs. Gesund und  widerstandsfähig gegen Krankheiten. Höherer Ertrag bei mehrtriebiger  Erziehung am Spalier oder an 2 bis 3 Stäben. Kuriose, robuste Sorte mit schönen, leuchtenden Früchten.	images/Fablonelystnyj.jpg
1604	Figaro	Stabtomate - Bis 400 g schwere, runde, abgeflachte, gelb-orange Früchte mit rotem Zentrum. Sehr aromatisch. Eine der besten zweifarbigen Sorten. Am deutlichsten wird die Zweifarbigkeit bei aufgeschnittenen Früchten. Sehr viele Fruchtkammern. Höchst dekorative und ungewöhnliche Sorte.	images/Figaro.jpg
1605	Fonarik	Stabtomate - Gelborange, lang gestreckt, eiförmig mit Spitze. Die Fruchtform ist eckig-oval, zum Blütenpol hin etwas verjüngt, dann folgt ein Nippel einer Brustwarze gleich, der an der Basis manchmal etwas eingesunken ist. Bei vollreife geht die gelbe Farbe in ein herrliches Orange über. Die Frucht hat einen Durchmesser von 4 - 4,5 cm und ist zwischen 5 und 7  cm lang, 2 Fruchtkammern, eine dicke Mittelachse und eine dicke  Fruchtwand. Eine begehrte und schöne Stabtomate.	images/Fonarik.jpg
1606	Frisco Fog	Stabtomate - Roter Massenträger mit etwa 6,5 cm großen Früchten. Wird etwa 1.80 m hoch. Auch für Lagen mit kühler Witterung.	images/Frisco_Fog.jpg
1607	Frühzauber	Stabtomate - Frühe und Reichtragende rote Stabtomate mit runden bis leicht plattrunden Früchten. Am Stielansatz leicht kantig. Mittelgroß, etwa 45 bis 60 g, schön durchfärbt, mild und saftig. Kräftiger Wuchs von etwa 2,10 m. Gute Gartensorte mit Trauben von 6 bis 8 Früchten. Lange Vegetationsdauer bis zum Frost, trotz der frühen Reife.	images/Fruehzauber.jpg
1608	Fucco d´ Oro Cream	Stabtomate - (Feuergold) Glasiggelbe, sehr Reichtragende Stabtomate aus der Toskana mit extremen platten Früchten und von mittelhohem bis hohem Wuchs. Ist eine Sorte für Sammler kurioser Tomaten. Sehr selten kommen so platte Früchte bei gelben Sorten vor. Auch das glasige, durchschimmernde Gelb ist sehr selten. Kleinere Fleischtomate von etwa 60-80 g. Sehr guter Wuchs. : Früchte nicht zu spät ernten, sie werden sonst matschig. Ernte Beginn ab Ende Juli. Früchte mit Stiel abschneiden.	images/Fucco_dOro_Feuergold.jpg
1609	Gaio de Melon	Stabtomate - Eine Kirschtomate mit zweifarbigem Fleisch. Sie ist gelbrot geflammt, ca.2 cm im Durchmesser. Sehr stark und hoch wachsende Pflanze. Ist für ein Spalier sehr geeignet. Kleine kurze Trauben. Liebhaberpflanze.	images/Gaio_de_Melon.jpg
1610	Gelbe Galapagos - Wildtomate	Stabtomate - Kleine, ovale, meist birnenförmige Wildtomate mit Spitze. Etwa 4 Gramm. Gigantische büschelförmige Wickel. Massenträger, hat ca. 100 bis 150 Tomaten je Wickel. Soll von den Galapagos-Inseln stammen und salzverträglich sein.	images/Galapagos_Wildtomate.jpg
1602	Evergreen	Stabtomate - Gerippte gelbgrüne Fleischtomate mit grün schimmerndem, smaragdgrünem Fruchtfleisch. Aromatisch und süß schmeckend. Die Früchte wiegen oft über 200 g, sind platt und nicht übermäßig gerippt. Bei Reife oben vom Stielansatz her immer noch grün, vom Blütenpol her gelborange. Die Fruchtstände sind oft sehr üppig, fächerförmig verzweigt und sollten  etwas ausgedünnt werden (kleine und unförmige Früchte wegschneiden). Eine kuriose Stabtomate, die mittelfrüh reift, hoch und oft überaus  stark wächst. Herkunft: USA.	images/Evergreen.jpg
1611	Galina	Stabtomate - (Galinas´ Sibirian Cherry) Rarität. Eine der Widerstandsfähigen, gelben Stabtomaten mit kartoffelblättrigem Laub. Sehr schmaler, aufrechter wuchs. Wird bis 2,70 m hoch. Saftig, reich- und lang tragend. 8 bis 13 Früchte je Traube. Die runden Früchte sind glänzend mittelgelb, sehr fest und wiegen etwa 11 bis 15 g. Durchmesser etwa 28 mm. Erste Ernte ab Mitte Juli.	images/Galinas_Sibirian_Cherry.jpg
1612	Geflammte Paprikaförmige	Stabtomate - Füll- oder Paprikatomate, paprikaförmige, hell- bis mittelrote Früchte mit gelben Streifen. Mittelgroß, meist hohl und mit dicker Fruchtwand. Gerippt. Mittelspät, doch lang und reich tragend. Unter Glas sehr hoher Ertrag mit teils riesigen Früchten. Rarität, da mehrere seltene Eigenschaften zusammenkommen. Zum Füllen wie Paprika oder Salate. Dekorative Sorte.	images/Geflammte_Paprikafoermige.jpg
1613	Gelbes Birnchen	Stabtomate - Yellow Pershaped Stabtomate mit gelben, oval-birnenförmigen Früchten von etwa 8 g. Früchte hängen in Trauben von bis zu 12 Früchten.\r\n \r\n Alte deutsche Obsttomate. Süßer und aromatischer Geschmack.	images/Gelbe_Birne.jpg
1614	Gelbe Dattelweintomate	Stabtomate - Stabtomate mit gelben, oval-birnenförmigen Früchten von etwa 5 g. Früchte hängen in Trauben von bis zu 80 Früchten. Alte deutsche Obsttomate.  Süßer und aromatischer Geschmack.	images/Gelbe_Dattelweintomate.jpg
1615	Gelbe, Langtraubige Johannisbeertomate	Spaliertomate, Wildtomate  Klein fruchtige Stabtomate mit runden, ovalen und teils auch länglichen, etwa 3 bis 4 g schweren Früchten in ungewöhnlich langen, oft weit über 30 cm, ungefächerte Trauben zu je 22 bis 30 Früchten. Die Hochwachsenden 2,5 m und mehr, locker aufgebauten Pflanzen bringen  bei Spaliererziehung einen hohen Ertrag und reduziert das Höhenwachstum.	images/Gelbe_langtraubige_Johannisbeertomate.jpg
1616	Gelbe Perle	Stabtomate - Kleine, runde, sehr grell, leuchtende gelbe Obsttomate. Eine kleinfruchtige Sorte. Die 2 bis 3 cm großen Früchte hängen in einfachen Trauben zu 8 bis 10 Stück. Saftig und würzig im Geschmack. Mittelhoher Wuchs. Liebhabersorte. Sehr platzfest.	images/Gelbe_Perle.jpg
1617	Gelbes Herz	Stabtomate - Gelbe Riesenfleischtomate. Mittelhoher Wuchs. Bis 500 Gramm schwer. Große, glatte, meist nicht gerippte Frucht. Aus Russland. Pro Wickel nur 2 bis 3 Früchte belassen.	images/Gelbes_Herz.jpg
1618	Geogien 2	Stabtomate - Sorte von einem Berghof in Georgien. Eine flachrunde rosarote bis rote Stabtomate. Sie ist flachrund, schwach gerippt am Ansatz, mittelfrüh reifend und etwa 100 g schwer.	images/Gerorgien_2.jpg
1619	Georgia  Streak	Stabtomate - Goldgelb, pink gefleckt, süßfruchtig köstlich, groß, reich tragend, früh. Eine der kuriosesten und schönsten Fleischtomaten überhaupt. Die plump herzförmige Frucht hat eine goldorange Grundfarbe und eine orangerote Flammung. Gewicht etwa 80. Sehr glatte Haut, schnittfeste Frucht. Nur mit Stiel zu Ernten. Rarität.	images/Georgia_Streak.jpg
1620	Gezahnte Stabtomate  -  (Zahnrad)	Tief gefurchte, rote Stabtomate. Sehr selten. Ovale tonnen-förmige Frucht, z. T. mit Hohlräumen und wenig Samen. Milder Geschmack. Guter Ertrag bei warmem Standort. Diese Sorte ist derart stark gerippt, dass die in Scheiben geschnittene Frucht sternförmig aussieht. Begehrte Rarität.	images/Gezahnte.jpg
1621	Giant White Beefsteak	Stabtomate - Eine Fleisch-Stabtomate mit cremefarbenen, großen, flachrunden Früchten von bestem, süßsäuerlichem Geschmack.	images/Giant_White_Beefsteak.jpg
1622	Gloria	Stabtomate - Eine der schönsten Fleischtomaten. Relativ, drahtig wachsende Pflanze. Blätter relativ klein. Frucht reif bernstein-orangegelb, gerippt, mittelgroß bis groß, sehr fleischig, viele Fruchtkammern. Unreife Früchte von hellgelber Farbe. Ganz ungewöhnlich in der Farbe. Wunderschön. Mittlerer Ertrag an etwa 140 bis 180 g schweren Früchten. Herkunft: Soll aus Neuseeland stammen.	images/Gloria.jpg
1623	Glücklicher Mond	Stabtomate - (Mondbegeisterung) Gelbe Riesenfleischtomate. Mittelhoher Wuchs. Bis 500 Gramm schwer. Große, glatte, meist nicht gerippte Frucht. Pro Wickel nur 2 bis 3 Früchte belassen. Herkunft: Aus Russland.	images/Gluecklicher_Mond.jpg
1624	Golden Currant	Stabtomate, Spaliertomate - Kleine, gelbe Johannisbeertomate mit runden Früchten von etwa 1,5 cm Durchmesser. 2 Fruchtkammern. Würziger bis säuerlicher Geschmack. Reife ab Mitte Juli. 12 bis 20 Früchte je Traube. Etwa 8 g je Frucht. Dieser Typ ist im Gegensatz zu manch anderen Johannisbeertomaten kurz- und rundlaubig und nicht anfällig für Blattkrankheiten.	images/Golden_Currant.jpg
1625	Golden Grape	Stabtomate - Ertragreiche, goldgelbe Stab-Obsttomate mit zahlreichen saftigen, süßen Früchten.	images/Golden_Grape.jpg
1626	Golden Love	Stabtomate - Kleinfruchtige Sorte mit pflaumenförmigen, dickwandigen, knackigen Früchten von glänzend, orange Farbe. Sehr hoch wachsend etwa 2 bis 2,5m. Die Pflanze kann auch mehrtriebig, bzw. am Spalier gezogen werden.	images/Golden_Love.jpg
1627	Goldene Königin	Stabtomate - Reichtragende und oft großfruchtige 120 bis 150g goldgelbe Stabtomate. In warmen Jahren Massenträger. Historische deutsche Sorte, die immer noch auf dem Markt ist.	
1628	Goldene Kuppel	Stabtomate - Gelbe Riesenfleischtomate. Mittelhoher Wuchs. Bis 500 Gramm schwer. Große, glatte, meist nicht gerippte Frucht. Herkunft: Aus Russland. Pro Wickel nur 2 bis 3 Früchte belassen.	images/Goldene_Kuppel.jpg
1629	Goose Creek	Stabtomate - Sie ist eine Normalblättrige, mittelhohe Stabtomate. Die Früchte sind leuchtend rosarot, fleischig, rund bis leicht kantig und mild saftig im Geschmack. Mäßig bis guter Ertrag.  Herkunft: Wahrscheinlich aus den USA.	images/Goose_Greek.jpg
1630	Granny Smith Lagertomate	Stabtomate, Lagertomate - Eine hoch interessante Lagertomate. Die mittelgroße, fleischige Frucht bleibt extrem lange grün und kann bis weit in den Januar gelagert werden. Über den Winter färben sich die Früchte dann gelborange. Saamen keimen dann schon in den Früchten.	images/Granny_Smith.jpg
1631	Grandma Olivers Green	Stabtomate - Grüne Stab-Fleischtomate, die bei Vollreife einen gelb-ockerfarbenen Anflug bekommt. Sehr fleischige, platte, mittelgroße bis große Frucht mit großer Plazenta und mit mehreren Fruchtkammern. Mild-süß. Kräftige Pflanze, die aber warm und trocken stehen sollte.	images/Grandma_Olivers_Green.jpg
1632	Green Bell Pepper	Stabtomate - Unterschiedlich große Früchte. Ockerfarben mit grünen Streifen bzw. Flammung. Plattrunde Fleischtomate. Meist 60- 70g, teils 90g schwer. Durchmesser bis 65 mm, Höhe etwa 45 mm. Innen herrlich smaragdgrün. Manchmal mit Hohlraum. Oft 3 bis 5 Fruchtkammern. Herkunft: Australien.	images/Green_Bell_Pepper.jpg
1633	Green Giant	Stabtomate - Normal- und kartoffelblättrige, riesengroße bis 2 kg, gelbgrüne, sehr saftige, würzige Früchte. Ein Phänomen!	images/Green_Giant.jpg
1634	Green Grape	Buschtomate - “ Green en Grappes”  Diese höhere Buschtomate bringt kleine Trauben mit 7 bis 10 Früchten hervor. Seltene, wohlschmeckende, niedrige Sorte mit eiförmigen, etwa 20 Gramm schweren, grün bleibenden Früchten. Eine historische Sorte, die zur Ausprägung des vollsüßen Geschmacks einen vollsonnigen und nicht zu nassen Standort benötigt.  Die Pflanzen werden 2- bis 4- triebig gezogen etwa 70 bis 80cm und eintriebig gezogen bis ca. 1,4m hoch.	images/Green_Grape.jpg
1635	Green Pear	Stabtomate - Die grüngelben Cocktailtomaten sind äußerst schmackhaft. Kleine grüne Birnchen. Die Pflanzen sind Durchschnittlich gut im Ertrag.  In jedem Fall eine Sorte die man lieben und schätzen lernt.	images/Green_Pear.jpg
1636	Green Sausage	Buschtomate, Ampeltomate - Alte, buschig wachsende Sorte mit länglichen, grün-ocker gestreiften Früchten, die gestauchten Mini-Bananen gleichen. Höchst ungewöhnlich und absolut kurios, dekorativ. Früchte länglich bis bananenförmig gebogen.  Trotz der geringen Pflanzengröße guter Ertrag.	images/Green_Sausage.jpg
1637	Green Velvet	Stabtomate - Eine gelbgrüne Fleischtomate mit saftigen Früchten und etwa 200 bis 250 Gramm Gewicht.	images/Green_Velvet.jpg
1638	Greenwich	Stabtomate - Kleine, bis mittelgroße, grünockergelbe Fleischtomate. Glatt bis leicht gerippt, plattrund. Innen smaragdgrün. Weniger saftig als fleischig. Mehrere Fruchtkammern. Seltenheit. Herkunft:	images/Greenwich.jpg
1639	Green Pineapple	Stabtomate - Mittelhohe Stabtomate von gelbgrüner Farbe. Die Frucht ist platt und etwa zu 20% von oben her grün geflammt. Unten mehr bronzegelb. Spät reifend und etwa 150 bis 200 Gramm schwer. Herkunft: soll aus Springfield, Ohio stammen	images/Green_Pineapple.jpg
1640	Grapefruit	Stabtomate - „ Grejpfrutt“ Gelblichrote Sorte, die innen rot gefärbt ist. Kurios. Große, feste, runde und leckere Früchte. Kräftig wachsende Stabtomate. Höhe etwa 1,80 m.	images/Grapefruit.jpg
1641	Große Blanche	Stabtomate - Cremeweiße, etwas wächsern-gelbliche,  sehr große Fleischtomate (400-800 g) mit süßem Geschmack. Ertragreich und hoch wachsende Sorte.	images/Grosse_Blanche.jpg
1642	Grüne Rispentomate	Stabtomate - Stabtomate mit vielen taubeneigroßen und traubenförmigen Früchten von gelbgrüner Farbe. Mittelfrühe Reife.	images/Gruene_Rispentomate.jpg
1643	Grünes Zebra	Stabtomate - Fleischtomate, gelb-grün gestreift, weich, platzfest und nie mehlig. Im Geschmack sehr süß, würzig-aromatisch. Die Pflanze ist hoch wachsend, stark belaubt mit Früchten von 250g. Mittelfrüh bis spät. Herkunft: Aus Kalifornien.	images/Gruenes_Zebra.jpg
1644	Gruscha Tschernaja	Stabtomate - (Schwarze Birne) Eine Stabtomate mit mittelgroßen, manchmal auch großen, dunklen pink-braunroten Früchten. Oberseite, am Stielansatz eine olivfarbene Kappe. Sehr saftig, mildwürzig-süß schmeckend. Geringe bis mittlere Rissbildung am Stielansatz bei unregelmäßiger Bewässerung.	images/Gruscha_Tschernaja.jpg
1645	Guernsey Island	Stabtomate - (Schwarze Birne) Eine Stabtomate mit mittelgroßen, manchmal auch großen, dunklen pink-braunroten Früchten. Oberseite, am Stielansatz eine olivfarbene Kappe. Sehr saftig, mildwürzig-süß schmeckend. Geringe bis mittlere Rissbildung am Stielansatz bei unregelmäßiger Bewässerung.	images/Guernsey_Island.jpg
1646	Hartsack Orange	Stabtomate - Tolle Färbung. Die Frucht ist von tief goldgelber bis orange Farbe. Wunderschön. Wenn man die Frucht aufschneidet, zeigt sich eine rotorange Plazenta mit außen orangen Fruchtwänden. Insofern eine Rarität. Toll auch im Ertrag und in der Fruchtgröße. Rundlich bis prall plattrund. Am Stielansatz manchmal ein wenig grün geflammt.	images/Hartsack_Orange.jpg
1647	Hartsack Yellow	Stabtomate - Tolle Färbung. Die Frucht ist von tief goldgelber bis gelber Farbe. Wunderschön. Wenn man die Frucht aufschneidet, zeigt sich eine rotorange Plazenta mit außen gelben Fruchtwänden. Insofern eine Rarität. Toll auch im Ertrag und in der Fruchtgröße. Rundlich bis prall plattrund. Am Stielansatz manchmal ein wenig grün geflammt.	images/Hartsack_Yellow.jpg
1648	Hawaiianische Cherry	Stabtomate - Orangefarbene Kirschtomate von etwa 2 cm Durchmesser. Ideal für mehrtriebige Erziehung, Spalier. Süße Früchte. Ertragreich	images/Hawaiian_Cherry.jpg
1649	Hellfrucht	Stabtomate - Reichtragende und gängige, runde, mittelrote Stabtomate. Sehr frühe, ertragreiche und sehr platzfeste Sorte. Widerstandsfähiger Massenträger. Ideal zum Abendbrot.	images/Hellfrucht.jpg
1650	Hillbilly	Stabtomate - Leicht gerippte, gelborange-rotgelb gefleckte Fleischtomate ohne Rippen. Mittelstark wachsend. Variable, meist hochrunde bis manchmal flache, recht große Frucht, die durchschnittlich 150 g wiegt, aber auch schwerer bis 400 g werden kann. Mildsüßer Geschmack. Im Freiland ab Anfang August reifend. Bei geschütztem Anbau sehr hoher Ertrag. Besticht vor allem durch die faszinierende farbliche Zeichnung der Frucht.	images/Hillbilly.jpg
1651	Himmelsstürmer	Stabtomate - Schmale, doch dickwandige Frucht, wie ein lang gezogener Roma-Typ, meist langer Hals und unten bauchig. Rote mit kurzer, stumpfer Spitze. 2 Fruchtkammern. Trägt gut und wird weit mehr als 3 Meter hoch. Dünn-drahtiger Wuchs. Sehr lange Internodien. Bleibt auch lange gesund. Die Pflanzen lassen sich auch mehrtriebig ziehen, was die immense Wuchshöhe erträglich macht.	images/Himmelsstuermer.jpg
1652	Holländische Pflaume	Stabtomate - Kuriose Stabtomate mit tropfenherzförmigen, roten Früchten. Teils breitbauchig, doch immer mit ausgezogener Spitze. Schlank und drahtig wachsend. Große, fächerförmige, büschelförmige Wickel mit meist 10 bis 25 Früchten von 30 bis 60 Gramm. Eine der lustigsten Sorten.	images/Hollaendische_Pflaume.jpg
1653	Hopkins Yellow	Stabtomate - Leicht gerippte, gelborange-rotgelb gefleckte Fleischtomate ohne Rippen. Mittelstark wachsend. Variable, meist hochrunde bis manchmal flache, recht große Frucht, die durchschnittlich 150 g wiegt, aber auch schwerer bis 400 g werden kann. Mildsüßer Geschmack. Im Freiland ab Anfang August reifend. Bei geschütztem Anbau sehr hoher Ertrag. Besticht vor allem durch die faszinierende farbliche Zeichnung der Frucht.	images/Hopkins_Yellow.jpg
1654	Ildi	Stabtomate - Cocktailtomate mit ovalen, gelben Früchten. Fächerförmige Fruchtstände, die wegen der langen Lagerfähigkeit der Früchte jeweils komplett abgeschnitten werden können. Ausgezeichneter, süß-aromatischer Geschmack. Massenträger, etwa 40 bis100 Früchte je Wickel.	images/Ildi.jpg
1655	Indian Moon	Buschtomate - Kleinfruchtige, leuchtend tiefgoldgelb bis orange Buschtomate von früher Reife ab Anfang Juli. Die Früchte sind rund. Normalblättrige, niedrige, relativ kleine Pflanze. Bei Überreife werden die Früchte rotfleckig.	images/Indian_Moon.jpg
1656	Isis Candy	Stabtomate - Kirschstabtomate 1,8 bis 2,0 m und höher mit sternförmig rotgelb gefleckten, kleinen Früchten. Runde, bis etwa platte Frucht im Durchmesser 2,5 bis 3 cm und 25 bis 30 g Gewicht. Dabei robust, süß und saftig. Das kräftige Laub steht relativ waagerecht. Sehr seltene Fruchtfarbe.	images/Isis_Candy.jpg
1657	Italienische Spaliertomate mit Spitze	Stabtomate, Spaliertomate - Die Pflanzen tragen am besten, wenn man sie am Spalier zieht. Sie können dann 2 m hoch werden. Viele kleine, breit tropfenförmige Tomatchen mit Spitze. Wachsen am besten an warmen und vor Regen geschützten Plätzen.	images/Italienische_Spaliertomate.jpg
1658	Jana Gelb	Stabtomate - Eiförmige, gelbe Früchte, 30 bis 50 g schwer. Höhe der Frucht etwa 50 bis 60 mm, Durchmesser etwa 40 mm. Leicht zu ernten. Eine platzfeste und einheitlich geformte, sehr empfehlenswerte Gartensorte.	images/Jana.jpg
1659	Japanisches Ei	Stabtomate - Eiförmige, gelbe Früchte, 30 bis 50 g schwer. Höhe der Frucht etwa 50 bis 60 mm, Durchmesser etwa 40 mm. Leicht zu ernten. Gut druck- und schnittfest. Wenig Kerne. 2 Fruchtkammern. Die Frucht ist oben schmaler und wird nach unten hin breiter. Schöne, Starkwachsende, dickwandige und Reichtragende Stabtomate. Eine platzfeste und einheitlich geformte, sehr empfehlenswerte Gartensorte.	images/Japanisches_Ei.jpg
1660	Japonskij Trüffel orange	Stabtomate - Eine japanische Sorte mit orange, großen Früchten in der Form eines Tabakbeutels. Kurios in der Form und in der Farbe. Wüchsige Sorte.	images/Japonskij_Trueffel_orange.jpg
1661	Japonskij Trüffel schwarz	Stabtomate - Eine japanische Sorte mit dunkelbraunen, großen Früchten in der Form eines Tabakbeutels. Kurios in der Form und in der Farbe. Wüchsige Sorte.	images/Japonskij_Trueffel_schwarz.jpg
1662	Jasnaja	Stabtomate - oval mit Spitze, fest, hoher und lang anhaltender Ertrag. Für diese russische Sorte kann man sich nur begeistern. Makellos in Farbe und Form, völlig problemlos und schnell ohne Siel zu ernten, große, zum Teil gegabelte, lange Fruchttrauben mit 8 bis 11 Früchten. Sehr einheitlich in der Sortierung. Guter Ertrag. Mittelfrüh. Gesunde, mannshohe, im Herbst äußerst kälteverträgliche Pflanzen.	images/Jasnaja.jpg
1663	Jaune des Andes	Stabtomate (Poivron Jaune) Orangerote bis goldfarbene, große Früchte etwa 80 g, bis 8 cm lang und 5 cm breit von spitzovaler „Andenhorn- Form“, wie Spitzpaprika (oben gleich klobiger, also eher keilförmig). Buschiger Typ mit jeweils 3 bis 5 Früchten je Traube. Am Blütenpol mit ausgezogener Spitze.	images/Jaune_des_Andes.jpg
1664	Jericas Gelbe	Stabtomate - Robuste Stabtomate. Große, gelbe Frucht gleich klobiger Paprikas. Viele Fruchtkammern. Stark gerippt. Guter Geschmack, teils hohle Früchte.	images/Jericas_Gelbe.jpg
1665	Johannisbeertomate (rote)	Stabtomate, Spaliertomate - Mehrtriebig zu ziehende Sorte, die selbst dann noch über 2m hoch wird. Früchte etwa 13 bis 15mm groß, glänzend rot! Früchte in oft einfachen, teils aber auch 1 bis 2x gegabelten Trauben von 20 bis 30cm lang. Süß-würzige, knackige Frucht. Platzfest. Wüchsig, gesund, früh und lang tragend. Ideale, recht robuste Naschsorte für Kinder und zur Dekoration.	images/Rote_Johannisbeertomate_2.jpg
1666	Junifreunde	- Ein Massenträger mit Früchten von rotbrauner Farbe. 30 bis 40g schwer, bis 45mm im Durchmesser. Feste Schale, relativ kleine, meist runde Früchte. Lang tragend trotz der frühen Reife. Erste Ernte ab Mitte Juli. Mittelhoher Wuchs. Süßlicher, schmelzender Geschmack.	images/Junifreude.jpg
1667	Kaki Coing	- Paprikatomate. Große, paprikaförmige, festfleischige, orangefarbene, mildaromatische, hohle Früchte.	images/Kaki_Coing.jpg
1668	Karaganda	Stabtomate - Diese Fleischtomate hat große orangerote bis rote Früchte. Sie ist fleischig und Kernarm.	images/Karaganda.jpg
1669	Kazhak Schalavije	Stabtomate - Diese alte Sorte stammt aus Kasachstan. Die goldenen Früchte haben rote Schultern. Darauf bezieht sich die Bezeichnung „Schalavije“, denn russische Frauen tragen im Winter gern einen roten Schal. Oft über 500g schwere geflammte Fleischtomate.	images/Kazhak_Schalowije.jpg
1670	Kelloggs West Virginia	Stabtomate - Eine überaus Reichtragende Stabtomate. Normalblättrig. Die Früchte sind rot, meist rund, aber auch zum Teil abgeflacht oder leicht gerippt.	images/Kelloggs_West_Virginia.jpg
1671	Kiev	- Würzige rote Sorte. Widerstandsfähig. Für den Anbau im Freiland und auch im Gewächshaus.	images/Kiev.jpg
1672	Kirschgroße Gelbe Traube	Stabtomate - Ein Massenträger mit gigantischen Klumpentrauben von teils mehr als 100 Früchten. Nahezu kirschgroß, gelb, leicht oval und gut platzfest. Saftig, würzig und süß schmeckend. Vermutlich eine verbesserte  . Meist über 2,00 m hoch wachsend. Relativ früh reifend.	images/Kirschgrosse_Gelbe.jpg
1673	Kleine schwarze Fleischtomate	Stabtomate - Stark gerippte, sehr platte Frucht von tiefrot-brauner Farbe. Viele Fruchtkammern. Stabtomate von mittelhohem Wuchs. Eine der dunkelsten Sorten.	images/Kleine_Schwarze_Fleischtomate.jpg
1674	Kuba	Stabtomate - Rot, birnenförmige, fest, reich tragend, geeignet für Pasta. Die hellroten, meist über 6cm langen und 4 cm starken Früchte sind eher pflaumen- als birnenförmig, am Blütenpol mit stumpfer Spitze. um 50 g, teilweise auch schwer. Sehr leicht ohne Stiel zu ernten. In der Regel keine Platzer und auch keine Risse. Eher Ketschup- und Salat-Tomate.	images/Kuba.jpg
1675	Lange dünne Bauerntomate aus Honduras	Stabtomate - Beachtliche mittelamerikanische Landsorte mit dünnen, langen, kleineren, roten Früchten. Sehr pflegeleichte Gartensorte, die vielfach gelobt wird. Etwas lockerer Wuchs, der vermutlich etwas vor Braunfäule schützt. Mittelhoher, doch zeitiger und beachtlich lang andauernder Ertrag. Gut platzfest.	images/Lange_duenne_Bauerntomate.jpg
1676	Liana Orange	Stabtomate - (Liana Orangewaja) Dünn keilförmig bis eher länglich-flaschenförmige Tomate von nicht sehr hohem Wuchs. Herrlich orange Farbe! Ideal zum Verkauf der schönen Früchte.	images/Liana_Orange.jpg
1677	Libanesische Bergtomate	Stabtomate - Kräftige Stabtomate mit bis zu 500g schweren, roten Früchten. Gutes Aroma. Wenig krankheitsanfällig. Mittelspäte Ernte ab etwa Mitte August aber dafür sehr lecker und guter Ertrag.	images/Libanesische_Bergtomate.jpg
1678	Lila Sari	Stabtomate - Wohlschmeckende bräunlich-tiefrote Stab-Fleischtomate. Die Fruchtfarbe ist eher olivgrün mit braunroten anteilen. Saftig, platt und sehr dunkel. Große, süß schmeckende Frucht von 150 bis 300 g. Für geschützte Standorte mit viel Sonne anbauen.	images/Lila_Sari.jpg
1679	Lillians Yellow Heirloom	Stabtomate - Hellgelbe, teilweise pinkt marmorierte, bis 500g schwere Fleischtomate aus Tennessee, außergewöhnlich reichhaltige, süße, zitrusartige Aromas, kartoffelblättrig. Eine Delikatesstomate, die nur wenig Samen enthält und deshalb kaum angeboten wird. Absolute Rarität.	images/Lillians_Yellow_Heirloom.jpg
1680	Lida Ukrainian	Stabtomate - Niedrige, rote Sorte. Wird im Freiland etwa 1,00 m hoch. Sehr ertragreiche Traube an Traube. Sehr wohlschmeckende, ukrainische Stabtomate. Frucht etwa 80 g bis 250 g meist kantig, platzfest.	images/Linda_Ukraina.jpg
1681	Livingstons Favourite	Stabtomate - Eine pinkfarbene, plattrunde Fleischtomate, die kaum gerippt ist. Früchte wiegen zwischen 150 g und 200 g. Die Frucht ist rot- pinkfarben. Geringe Rissneigung und keine Platzer. Auffällig wegen der Farbe. Guter Ertrag und mittlerer Reifebeginn.	images/Livingstons_Favorite.jpg
1682	Livingstons Magnum	Stabtomate - Rotpink, mittelgroß, wohlschmeckend, kartoffelblättrig, alte Sorte. Die scharlachrote, mittelgroße Fleischtomate ist saftig und hat etwa 6 Fruchtkammern mit vielen Samen gut platzfest, wenig gerippt, etwas plattrund. Gewicht: Meist über 100 g schwer. Größe: Durchmesser meist über 6 cm. Sehr schön gefärbt. Stämmig und mittelgroß wachsend.	images/Livingstons_Magnum.jpg
1683	Lutescent	- Eine sehr langsam reifende (es dauert mehrere Wochen) Stabtomate, von gelblich-cremefarben nach rot gefärbte, mittel hohe, kräftige Stabtomate. Flachrunde bis platte, leicht gerippte Früchte, gelbgrünes Laub und weißgelbe Blüten. Größe etwa 6 cm bis 7 cm im Durchmesser, 70 g bis 100 g schwer. Kurios, doch etwas spät. Die Früchte reifen ab Mitte August, die meisten aber erst im September und Oktober. Nur Anbau unter Glas sinnvoll.	images/Lutescent.jpg
1684	Plum Lemon	Kuriose, mittelhohe Stabtomate. Zitronengelbe und Zitronenförmige Früchte mit Spitze, die in üppigen, breiten Trauben hängen. Meist zwei Fruchtkammern. Innen hohl, dicke Fruchtwand. Absolut platzfest und gut lagerbar. Zwischen 50 und 80 g schwer, durchschnittlich 55 g. Mittlerer Ertrag. Reife ab Mitte August. Gut zum Füllen geeignet.	images/Plum_Lemon.jpg
1685	Polnischer Riese	- Eine große, vielkammerige, dunkel lilarot- himberfarbige Stabtomate aus Polen mit runden, nicht gerippten Früchten. Sehr kräftige und wüchsige, kartoffelblättrige Pflanzen. Durchschnittliches Fruchtgewicht etwa 300 g. Durchmesser etwa 11 cm. Sehr guter, süß-saftiger Geschmack. Kleine Fruchtkammern, wenige Samen.	images/Polnischer_Riese.jpg
1686	Pomodore di Cantenna	- Platte Fleischtomate. Eine mittelgroße bis große rot- bordeaux farbene Fleischtomate mit platten, gerippten Früchten und mit extrem wulstig-großem Nabel am Blütenpol. Ungewöhnliche Fruchtform. Sehr schöne Form und Farbe. Hohe Pflanze von rund 2,5 m. Frucht wird bis 9 cm im Durchmesser, dabei 5  bis 6 cm hoch. Gewicht in etwa 200 g. Wenig Platzer und Risse.	images/Pomodore_di_Cantenna.jpg
1687	Pomodoro	Platte Fleischtomate. Eine mittelgroße bis große rot- bordeaux farbene Fleischtomate mit platten Früchten und mit extrem wulstig-großem Nabel am Blütenpol. Ungewöhnliche Fruchtform. Sehr schöne Form und Farbe. Hohe Pflanze von rund 2,5m. Frucht wird bis  9cm im Durchmesser, dabei 5 bis 6cm hoch. Gewicht in etwa 200g. Wenig  Platzer und Risse.	images/Pomodore.jpg
1688	Ponderosa Golden	- Kräftige Stabtomate mit mittelgroßen bis sehr großen, wohlschmeckenden gelborange Früchte mit roter Flammung.  Alte Sorte aus Virginia. Platt und oft stark gerippt. Gewicht von 200 bis 500 g. Seltene Fruchtfarbe.	images/Ponderosa_Golden.jpg
1689	Prize of the Trial	- Eine der schönsten orangefarbigen Stabtomaten. Die Früchte sind nicht immer gleichmäßig groß, doch herrlich orange durchfärbt. Meist rund bis etwas platt. Mittelgroße, in der Tendenz aprikosengroße Frucht. Mittelhoher Wuchs.	images/Prize_of_the_Trial.jpg
1690	Purple Price	Eine Pflanze mit runden und sehr dunklen braunroten Früchten, oben mit schwacher, bis zur Fruchtmitte reichender Kappe. Gewicht variiert und schwankt zwischen 80 und 150 g. Viele Fruchtkammern. Mittelfrüh reifende und hoch wachsende Stabtomate. Guter mild-süßer Geschmack.	images/Purple_Prince.jpg
1691	Purple Smudge	- Rund, rot-purpurn gefleckt, sehr aromatisch, 300g, langer, hoher Ertrag. Eine sehr ungewöhnlich gefärbte Frucht, hellere und dunklere Flecken, die sich ohne System abwechseln. Tendenziell ist die recht dunkle Frucht aber purpurn bis weinrot mit vom Stielansatz her mehr oder weniger intensiven dunkelgrünen Streifen. Feste Frucht. Guter Ertrag. Kaum Platzer.	images/Purple_Smudge.jpg
1692	Purpur Kalebasse	- Stark gerippte, sehr platte Frucht von tiefrot-brauner Farbe. Viele Fruchtkammern. Stabtomate von mittel hohem Wuchs. Eine der dunkelsten Sorten.	images/Purpur_Kalebasse.jpg
1693	Mirabelle Blanche	Stabtomate - “Mirabell weiß”  Viele gelbweiße, ziemlich kleine Früchte bringt diese mittelhohe Stabtomate hervor. Sehr seltene Sorte, die leider erst mittelspät trägt. Die Früchte haben mehrere Fruchtkammern und sehen wie weiße Miniatur-Fleischtomaten, also leicht plattrund aus. Geschmack mild obstig bis fruchtig. Geschützter Anbau ist wichtig.	images/Mirabelle_Blanche.jpg
1694	Miss Kennedy	Stabtomate - Eiförmig-ovale bis rundliche, sehr dunkle Stabtomate mit olivfarbener, geflammter Kappe. Sehr reich tragende und schöne Sorte. Die Kappe ist sonnenseits stärker ausgeprägt, ebenso die dunkle Farbe. Feiner süßer Geschmack, wenig Säure, obstartig. Schmelzendes Fruchtfleisch.	images/Miss_Kennedy.jpg
1695	Mc-Mullen Rose	Stabtomate - Rosarote, Wohlschmeckende Früchte, die bis 100 g wiegen können. Früher und lang anhaltender Ertrag. Robuste Pflanzen. Historische Sorte aus den USA.	images/Mc_Mullen_Rose.jpg
1696	Old German	Stabtomate - Bis 400 Gramm schwere, runde, abgeflachte, gelb-orange Früchte. Sehr aromatisch. Eine der besten zweifarbigen Sorten. Am deutlichsten wird die Zweifarbigkeit bei aufgeschnittenen Früchten. Sehr viele Fruchtkammern. Höchst dekorative und ungewöhnliche Sorte.	images/Old_German.jpg
1697	Mission Dyke	Stabtomate - Goldorange, wüchsige Fleischtomate. Plattrund, selten gerippt, bis 300g schwer.	images/Mission_Dyke.jpg
1698	Morano	Stabtomate - Eine Stabtomate mit orangegelben, runden, sehr glatten und glänzenden Früchten.	images/Morao.jpg
1699	Morning Love	Stabtomate - Kleinfruchtige Sorte mit pflaumenförmigen, dickwandigen, knackigen Früchten von glänzend, roter Farbe. Sehr hoch wachsend etwa 2 bis 2,5 m. Die Pflanze kann auch mehrtriebig, bzw. am Spalier gezogen werden.	images/Morning_Love.jpg
1700	Mrs.Pinky	Stabtomate - Pink, köstlich süßsaftig, 50 bis 200 Gramm. Wird sehr hoch. Gesundes Wachstum..	images/Mrs_Pinky.jpg
1701	Multi Color	Stabtomate - Sehr große Fleischtomate mit orangegelben Früchten, die rot marmoriert, gefleckt sind. Kräftig wachsende Sorte, die höchst ungewöhnlich gefärbte, matt glänzende Früchte hervorbringt. Auch beim Durchschneiden der Frucht zeigt sich die Mehrfarbigkeit. Das Zentrum ist orangerot, die Fruchtwände und Samenkammern sind gelb. Die bis 400 g schwer werdenden Früchte sind nur mit der Schere zu ernten.	images/Multi_Color.jpg
1702	Nebrasca Wedding	Stabtomate - Große, 150 bis 200 g schwere, gold- bis goldorangefarbene Früchte. Alte, sehr beliebte Sorte mit hochrunden bis runden, teilweise auch leicht platten, saftigen Früchten mit besten Geschmackseigenschaften. Anfällig für Blütenendfäule, daher Pflanzen gleichmäßig mit Wasser versorgen und im Winter etwas Kalk streuen. Kaum Platzer oder Risse. Hohe kräftige Pflanze.	images/Nebrasca_Wedding.jpg
1703	Nigeria	Stabtomate - Kleine rotfruchtige Fleischtomate von 50 bis 100 g. Hoch wachsend und gesund. Kaum Platzer oder Risse. Hohe kräftige Pflanze.	images/Nigeria.jpg
1704	Nothern Lights	Stabtomate - Frühe, gelb-rosa Fleischtomate. Sehr große, bis 500 g, platte Frucht, die im grünen Zustand von dunkelgrünen Streifen überzogen ist. Mehr oder weniger gerippt. Ertragreich in warmen Sommern. Sehr aromatisch. Ideal für Südwände.	images/Northern_Lights.jpg
1705	Olympisches Feuer	Stabtomate - Runde, wunderschön rot-goldfarben geflammte Sorte aus Russland. Sehr ertragreich und wohlschmeckend. Für alle Verwendungszwecke geeignet. In warmen Sommern ein Massenträger.	images/Olympisches_Feuer.jpg
1706	Old Ivory Egg	Stabtomate - Rote fast runde, saftig-süße Stabtomate. Ertragreich und gesund wachsend.	images/Old_Ivory_Egg.jpg
1707	Old Wyandotte Orange	Stabtomate - Große, gelborange Stab-Fleischtomate von würzigem Geschmack. Eine sehr hoch wachsende richtig leckere Tomate. Erste Ernte ab etwa Mitte August.  Früchte bis ca. 500 Gramm.	images/Old_Wyandotte_Orange.jpg
1708	Old Wyandotte Red	Stabtomate - Große, rote Stab-Fleischtomate von würzigem Geschmack. Eine sehr hoch wachsende richtig leckere Tomate. \r\n \r\n Erste Ernte ab etwa Mitte August. Früchte bis ca. 500 Gramm.	images/Old_Wyandotte_Red.jpg
1709	Old Yellow Candystriped	Stabtomate - Kräftig wachsende, ca. 2,1 m hohe Stabtomate mit herrlich gelben bis knallgelben, unterschiedlich geformten Früchten. \r\n \r\n Ein Teil ist rund, ein anderer gerippt.	images/Old_Yellow_Candystriped.jpg
1710	Olympische Flamme	Stabtomate - Runde bis Plattrunde, wunderschön rot-goldfarben geflammte Sorte aus Russland.  Fleischig oft zwischen 200 und 300 Gramm.	images/Olympische_Flamme.jpg
1711	Orange Plum	Stabtomate - Eine Pflaumenförmige, orange Sorte. Die Früchte färben sich bei Vollreife leuchtend orange. Sehr reich tragend. Fruchtgröße etwa 7,5 x 4 cm. Leicht zu ernten. Dicht besetzte Wickel mit 7 bis 9 Früchten. Gute Gartensorte für trockene Plätze. Mittelfrühe Reife.	images/Orange_Plum.jpg
1712	Olympisches Feuer	Stabtomate - Runde, wunderschön rot-goldfarben geflammte Sorte aus Russland. Sehr ertragreich und wohlschmeckend. Für alle Verwendungszwecke geeignet. In warmen Sommern ein Massenträger.	images/Olympisches_Feuer.jpg
1713	Opalska	Stabtomate - Ein roter äußerst wuchtig wachsender Andenhorn-Typ, also mit Früchten in der Form von Spitzpaprika, lang gestreckt keilförmig. Diese Marktomate für Pizza, Salate und Ketschup ist zwar relativ spät (Reife ab Mitte August), doch sehr ertragreich und bis zu 3m hoch. Die Früchte können teils bis zu 20cm lang werden -richtige Giganten! Gesunder Wuchs. Fleischige, oft fast Samenlose Früchte mit wenig Saft. Soll aus Polen kommen.	images/Opalska.jpg
1714	Orange Beauty	Stabtomate - Sehr schöne, orange bis gelborange Stabtomate. Runde Früchte von etwa 30 Gramm. Äußerst lange Trauben.   Erntebeginn ab Anfang August.	images/Orange_Beauty.jpg
1715	Orange Beere	Stabtomate - "Orange_Berry" Stab-Obsttomate mit orangen Früchten, die in langen, oft gefächerten Trauben hängen. Die runden Früchte haben einen Durchmesser von 2,5cm und wiegen etwa 7g. Mittelhoch wachsende Stabtomate mit wunderschönen Früchten.	images/Orange_Berry.jpg
1716	Orange Favourite	Stabtomate - Sehr schöner, herrlich knall-orange Massenträger. Süßsaure bis mild schmeckende Stabtomate von mittelhohem Wuchs, bis 2m und mit etwa 50 bis 65 Gramm schweren Früchten. Eine der Weltweit schönsten, auch innen intensiv gefärbten Stabtomaten. Früher und lang andauender Ertrag.	images/Orange_Favorite.jpg
1717	Orange Flaschentomate	Stabtomate - Sehr schöne Flaschentomate. Wuchs nur mittelhoch. Frucht länglich mit stumpfer Spitze, nicht saftig und herrlich goldfarben. Fingerlang. 2 - kammerig, dickfleischig, wenig Samen. Unreif oben grün geflammt. Eine der schönsten mittelhohen Flaschentomaten, nicht saftig, doch gut für Salate geeignet.	images/Orange_Flaschentomate.jpg
1718	Orange Johannisbeertomate	Stabtomate - Kleinfruchtige Stabtomate mit orange, runden, ovalen und teils auch länglichen, etwa 3 bis 4 g schweren Früchten in ungewöhnlich langen, oft weit über 30cm, ungefächerte Trauben zu je 22 bis 30 Früchten. Die hoch wachsenden 2,5 m und mehr, locker aufgebauten Pflanzen bringen  bei Spaliererziehung einen hohen Ertrag und reduziert das Höhenwachstum.	images/Orange_Johannisbeertomate.jpg
1719	Oranges Ochsenherz	Stabtomate - Kleinfruchtige Stabtomate mit orange, runden, ovalen und teils auch länglichen, etwa 3 bis 4 g schweren Früchten in ungewöhnlich langen, oft weit über 30cm, ungefächerte Trauben zu je 22 bis 30 Früchten. Die hoch wachsenden 2,5 m und mehr, locker aufgebauten Pflanzen bringen  bei Spaliererziehung einen hohen Ertrag und reduziert das Höhenwachstum.	images/Orange_Ochsenherz.jpg
1720	Orange Wildtomate	Stabtomate, Spaliertomate  Dieser robuste Wildtomatentyp überragt alle Kulturtomaten. In guten Böden erreicht er bis Mitte September eine Höhe von 3 Metern –selbst bei mehrtriebiger Spalier-Erziehung. Die hell- bis orangeroten Früchte sind von ovaler Form und etwa 35 x 25 mm groß. Wickel mit 8 bis 15 Früchten. Widerstandsfähig gegen Braunfäule und andere Tomatenkrankheiten.  Beachtlich ist auch die frühe und lang andauernde Ernte, ohne dass die  Fruchtgröße abnimmt. Bei Spalier-Erziehung die unteren Blätter  entfernen. Das bringt eine gute Luftzirkulation.	images/Orange_Wildtomate.jpg
1721	Orange Queen	Stabtomate - Reichtragende und oft großfruchtige 120 bis 150 g goldgelbe bis orangegelbe Stabtomate. Früchte nicht Gleichmäßig. In warmen Jahren Massenträger.	images/Orange_Queen.jpg
1722	Oranschewoe Sowerschenstwo	Stabtomate - „Orangefarbene Perfekte“  Eine Flaschentomate von herrlich orange Farbe. Mittelhoher Wuchs. \r\n \r\n Erste reife Früchte ab Anfang August.	images/Oranzschewoe_Sowerschenstwo.jpg
1723	Oranzhevaja Slivka	Stabtomate, von schöner, intensiv klarer orange Farbe. Feste, mittelgroße, ovale, süße Frucht. Etwa 25 g schwer und 4 x 3,5 cm groß. Dekorativ und guter Geschmack. 2 kammerig, dickwandig. 7 bis 9 Früchte je Wickel.	images/Oranzhevaja_Slivka.jpg
1724	Pachino	Stabtomate - Mittelhoch wachsende Stabtomate mit kleinen ca. 2 cm, roten, zweikammerigen Früchten, die in Trauben von bis zu 12 Früchten wachsen. Sehr fest. Einheitliche Fruchtgröße.	images/Pachino.jpg
1725	Pendulina	Sehr schön gefärbte, orangegelbe, nahezu eiförmige Früchte – knapp über 4 cm hoch etwa 3 cm breit. Saftig, wohlschmeckende Ampelsorte, die sehr früh, meist ab Anfang Juli, reift.  Die Pflanzen wachsen von Anbeginn ausbreitend mehrtriebig. Die Triebe hängen in Ampeln etwa 20 cm herab.	images/Pendulina.jpg
1726	Perlenschnur Gelb	Eine orangegelbe Johannisbeertomate. Mehrtriebige zu ziehende Sorte, die selbst dann noch über 2 m hoch wird. Früchte etwa 13 bis 15 mm groß, glänzend orangegelb! Früchte in oft einfachen, teils aber auch 1 bis 2 x gegabelten Trauben von 20 bis 30 cm lang. Süß-würzige, knackige Frucht. Wüchsig, gesund, früh und lang tragend. Sehr robuste Naschsorte für Kinder.	images/Perlenschnur_Gelb.jpg
1727	Pervaya Lyubor	Kartoffelblättrige Stabtomate mit mittelgroßen bis großen, dunkel purpurfarbene Früchte. Sehr guter Geschmack und guter Ertrag.	images/Pervaya_Lyubor.jpg
1728	Petite Pomme Blanche	Außergewöhnliche Obsttomate mit weiß-gelben Früchten. Wahrscheinlich eine Johannisbeertomate. Nicht so dünntriebig und feinlaubig wie andere Johannisbeertomaten, eher wuchtig. Sehr geeignet für Spalieranbau. Ab August Laub ausdünnen!	images/Petite_Pomme_Blanche.jpg
1729	Ping Pong	Goldorange Obsttomate aus China. Kugelrunde Früchte, die etwa 15 bis 20 g wiegen, fest und gut lagerfähig sind. Durchmesser etwa 30mm. 2 Fruchtkammern. Fast kein Stielansatz. Ungewöhnlich lange, meist ein- bis dreimal gegabelte Trauben. Überaus   an wunderschönen, sehr platzfesten Früchten. Robust und gesund im Wuchs. Mittelhoch, bis 2 m. Eine der schönsten Obsttomaten mit makellosen, erfrischend saftigen Früchten. Leicht zu pflücken. Massenträger.	images/Ping_Pong.jpg
1730	Pink Peach	Pinkfarbene, behaarte Pfirsichtomate. Mittelgroße Stabtomate, die leider durch die Behaarung sehr anfällig auf Braunfäule ist. Saftig und milde Liebhabersorte.	images/Pink_Peach.jpg
1731	Pink Brandywine	Große. flachrunde, pinkfarben bis rote Fleischtomate. Krankheitsempfindlich, jedoch hervorragender, aromatischer Geschmack. Fruchtgewicht etwa 180 bis 250 g. Durchmesser bis 8cm. Kartoffelblättrig. Etwa 12 bis 16 Fruchtkammern. Für Gewächshaus.	images/Pink_Brandywine.jpg
1732	Pink Ei	Eine der ungewöhnlichsten Stabtomaten überhaupt. Die zunächst wässern-gelblichen, länglich-eiförmigen Früchte wandeln ihre Früchte wandeln ihre Farbe von Hellrosa in Pink. Diese Sorte fällt im Garten zwischen anderen Tomaten aufgrund der Fruchtfarbe sofort auf. Es entwickeln sich Trauben von 8 bis 14 Früchte zu je 25 g. Kräftiger,  gesunder Wuchs. Reife ab Ende Juli. Stabile und platzfeste  Frucht. Guter Ertrag.	images/Pink_Ei.jpg
1733	Pink Grapefruit	Außergewöhnliche gelbe Tomate. Innen zum Teil rote und grüne Einschlüsse. Beim Auseinanderschneiden erkennt man ein rötliches Zentrum, das von smaragdgrünen Fruchtkammern umgeben ist. Die Fruchtwände hingegen sind von gelber Farbe. Die Frucht ist rund und schwer.	images/Pink_Grapefruit.jpg
1734	Pink Lemon	Bis 400 g schwere, runde, abgeflachte, gelb-orange Früchte mit rotem Zentrum. Sehr aromatisch. Eine der besten zweifarbigen Sorten. Die Sortenbezeichnung bezieht sich auf die Zweifarbigkeit der Früchte, die sehr große, platte Riesenfleischtomaten sind. Am deutlichsten wird die Zwei-Farbigkeit bei aufgeschnittenen Früchten. Das Zentrum ist knall rotorange und zur Fruchtwand hin rein gelb. Sehr viele Fruchtkammern.	images/Pink_Lemon.jpg
1735	Pink Mini-Fleisch	Pink-rote kräftig wachsende Stabtomate mit etwa 50 g schweren, kantig, runden, ähnlich wie Fleischtomaten anmutenden Früchten. Hübsche Farbe, schnittfeste Frucht.	images/Pink_Mini_Fleisch.jpg
1736	Pinkfarbene Wildtomate	Trägt viele kleine 15 mm, kugelrunde Früchtchen mit ursprünglichem Aroma. Saftreich. Ungewöhnlich in der Farbe, da pinkfarben. Eine überaus hoch wachsende Stabtomate bis 4 m, die am besten am Spalier gezogen wird. Einfache Trauben mit 7 bis 8 Früchten. Sehr gute Widerstandsfähigkeit gegen Braunfäule. Kräftiges, dunkles Laub.	images/Pinkfarbene_Wildtomate.jpg
1737	Pink Russian 117	Pinkfarbene, sehr große, herzförmige Sorte. Vorzügliches Aroma, ertragreich und gesund.	images/Pink_Russian_117.jpg
1738	Pink Yellow	Große eiförmige bis herzförmige Stabtomate, gelb oder gelborange mit roter Spitze.	images/Pink_Yellow.jpg
1739	Piroka	Starkwachsende Stabtomate mit üppigen Fruchttrauben. Flachrund bis platt, mittelgroße bis große, mittel- bis scharlachrote Früchte mit mittlerer Rippung. Bis 200 g schwer. Durchmesser bis 10 cm. Gut für das Freiland geeignet. Reich tragend. Platzfest. Wahrscheinlich aus Russland.	images/Piroka.jpg
1740	Maclivostocki	Stabtomate - Schöne, runde, pinkfarbene Früchte, wohlschmeckend, reich tragend, attraktiv. Die relativ kleinen glasig-pinkfarbenen, bei reife weichen Früchte sind rund und wiegen etwa 40 g, Durchmesser knapp über 4 cm.  Oberseite oft gelblich-grün aufgehellt, die ganze Frucht wirkt gepunktet. Leicht ohne Stiel zu Ernten.	images/Maclivostocki.jpg
1741	Madagascar	Stabtomate - Kleinere, gelbrote Tomate von rundlich-länglicher, tonnenförmiger Form von etwa 40 g. Süßer Geschmack. Hochwachsende Stabtomate.	images/Madagascar.jpg
1742	Malschor Isura	Stabtomate - Gelb, birnenförmig, klein, aromatisch, trägt viel, bis zum Frost, aus Russland. Diese hoch wachsende Stabtomate, Mitte August bereits 2,30 m, bringt an fächerförmigen Trauben Unmengen an kleinen, ovalen bis birnenförmigen Früchten hervor. Fruchtgewicht etwa 7 g bis 8 g. Jede Traube trägt bis zu 150 gelbe Birnchen. Früher und sicherer Ertrag. Massenträger! Milder, süßlicher Geschmack.	images/Malschor_Isura.jpg
1743	Mammut Rot	Stabtomate - Große Fleischtomate, die oben leicht rotorange, zum Blütenpol hin eher pinkrot wird. Süß und fruchtig, sehr fleischig mit vielen Fruchtkammern. In der Form leicht plattrund mit gering ausgeprägter Rippung. Geringe Rissbildung. Mittelspäte Reife.	images/Mammut_Red.jpg
1744	Marglobe	Stabtomate - Starkwachsende Stabtomate mit üppigen Fruchttrauben. Flachrund bis platt, mittelgroße bis große, mittel- bis scharlachrote Früchte mit mittlerer Rippung. Bis 200 g schwer. Durchmesser bis 10 cm. \r\n \r\n Gut für das Freiland geeignet. Reich tragend. Platzfest	images/Marglobe.jpg
1745	Marizol Gold	Stabtomate - Süße Obsttomate mit gelb-orange-rot marmorierten Früchten. Sehr lecker. Hohe Wärmeansprüche, für Hauswand, Tomatenkasten und Gewächshaus! Rote bis orangefarbene, geflammte, oft schwere, Stab-Fleischtomate. Nur für geschützte Standorte und warme Lagen oder unter Glas. Vielkammerig.  Das Fruchtfleisch ist gelb-orange marmoriert.	images/Marizol_Gold.jpg
1746	Marvel Sriped	Stabtomate - Frühe, orangegelbe bis gelbe Fleischtomate. Sehr große, oft über 500 g, platte Frucht, die im grünen Zustand von dunkelgrünen Streifen überzogen ist. Historische mexikanische Sorte von kräftigem Wuchs. Mehr oder weniger gerippt. Reich tragend in warmen Sommern. Ideal für Südwände.	images/Marvel_Striped.jpg
1747	Mary Ann	Stabtomate - Eine normalgroße rosarote Stabtomate mit 4 Fruchtkammern. Sehr reicher Ertrag.	images/Mary_Ann.jpg
1748	Mary Robinsons German Bicolor	Stabtomate - Eine Riesenfleischtomate, die gesund wächst, bis 2,00 m und platte, leicht gerippte Früchte von orangeroter Farbe trägt. Aufgeschnitten zeigen sich in der Frucht rote Streifen. Wenig Samen. Extrem viele Fruchtkammern. Extrem fleischig. Etwa drei Früchte je Wickel, von denen aber jede bis 500 g schwer werden kann. Durchmesser teilweise 10cm. Mittelspäte Reife. Recht platzfest. Einfach riesig!	images/Mary_Robinsons_German_Bicolor.jpg
1749	Melanie	Stabtomate - Eine Stabtomate mit cremeweißen runden Früchten. Süßer bis süßsäuerlicher Geschmack. Starkes Wachstum bis zu 2,50 m. Teilweise auch eiförmige Früchte. Wahrscheinlich noch nicht stabil.	images/Melanie.jpg
1750	Menryka	Stabtomate - Eine Stabtomate mit rosaroten runden Früchten mit deutlicher Spitze. Lange Fruchttrauben.	images/Menryka.jpg
1751	Micro Cherry	Buschtomate, Ampeltomate - Eine Buschtomate mit sehr langer, weit verzweigter, ausladender flach auf dem Boden wachsende Pflanze. Die Früchte sind kaum Murmelgroß, rot, rund hängen an üppigen, fächerartigen Trauben. Pro Ampel eine Pflanze.	images/Microcherry.jpg
1752	Groseille  Microtomate	Stabtomate - Mittelhohe Stabtomate mit sehr vielen, oft mehreren hundert kleinen Früchten an extrem üppigen fächerartigen Trauben. Die Früchte sind kaum murmelgroß, rot und rund. Regelmäßig abernten, denn die reifen Früchte fallen gern ab. Kurios ist, dass sich die Fruchtstände wie ein Schirm, oder Rad um den Haupttrieb legen. Eintriebig ziehen, obwohl zu Johannisbeertomaten gehörend.	images/Microtomate.jpg
1753	Midas	Stabtomate - Goldene Flaschentomate mit kurzer, scharfer Spitze. Herrliche, lang gestreckte Frucht und großen Trauben. Erntebeginn ab Anfang August. Sehr guter Ertrag. Aus Russland.	images/Midas.jpg
1754	Mini Rose	Stabtomate - Frühe Ertragreiche Stabtomate mit pinkfarbenen bis rosaroten Früchten von etwa 2 bis 3 cm im Durchmesser.	images/Mini_Rose.jpg
1755	Southpart	Eine hohe Stabtomate mit roten, kleinen Früchten an langen Trauben. Am Fruchtansatz bei vollreife gelb geflammt. Ab 60 cm Spalierförmig ziehen erhöt den Ertrag und begrenzt das Höhenwachstum.	images/Southport.jpg
1756	Splash of Cream	Buntlaubige Sorte und Rotfruchtige Stabtomate, deren Laub weiß-grün panaschiert ist. Auch der Stängel ist gestreift. Mittlerer Ertrag von etwa 40 bis 50g schweren roten und runden Früchten. Saftig. Sehr auffälliges Laub. Eine Sorte für Sammler und zur mehrtriebigen Erziehung unter Glas.	images/Splash_of_Cream.jpg
1757	Sosulka	Rein gelbfruchtige, recht reichtragende Flaschentomate mit Spitze, manchmal etwas kantig. Drahtiger, schlanker Wuchs. Feingliedrige Blätter. Sehr schöne, eigenwillige Fruchtform, die zwischen herzförmig und bananenförmig schwankt. Üppige Trauben mit schweren Früchten, die zwischen 100 und 300 Gramm wiegen variabel. Völlig platzfest. Äußerst fleischig, mild-süß und fast keine Samen.  Anfällig auf Blütenendfäule.	images/Sosulka.jpg
1758	Star Orange	Flachrunde, gelbrot marmorierte, saftige Stabtomate von süßlich-würzigem Geschmack.	images/Star.jpg
1759	Striped Carven	Fülltomate - Geflammte Paprikatomate, die besonders im Grünstadium mit dunklen, bei Reife hellen Längsstreifen durchzogen ist. Die später rot werdende Frucht ist innen hohl, wie Paprika und kann zum Füllen verwendet werden. Auch die Fruchtform, länglich-oval mit Rippen und Fruchtgröße erinnert an Gemüsepaprika.	images/Striped_Carven.jpg
1760	Sun Drop	Größere, orangefarbene Stab-Obsttomate mit langen Fruchtständen und vielen, süßen Früchten. Langer Ertrag. Fruchtgewicht etwa 35 bis 45 Gramm. Meist etwas hochrund, Durchmesser etwa bis knapp über 4 cm. Eine wunderschöne, toll gefärbte Frucht. Kein Grünkragen, kaum Platzer. Bestens durchfärbt.  Leicht ohne Stiel zu ernten. Gesunder, kräftiger Wuchs.	images/Sun_Drop.jpg
1761	Talent Cream	Eine Stabtomate mit großen, feingliedrigen Blättern. Kräftiger Wuchs. Frucht platt, bis 6 cm Durchmesser. Cremeweiß. Mild-süß. Meist 3-kammerig. Reich tragend und gesund.	images/Talent_Cream.jpg
1762	Talent Gelb	Eine Stabtomate mit großen, feingliedrigen Blättern. Kräftiger Wuchs. Frucht platt, bis 6 cm Durchmesser. Gelb. Mild-süß. Meist 3-kammerig. Reich tragend und gesund.	images/Talent_Gelb.jpg
1763	Tangella	Runde Stabtomate von goldgelber bis orange Farbe. Etwa 30 Gramm. Durchmesser etwa 40 mm. Meist 2 Fruchtkammern. \r\n \r\n Sehr schöne Sorte.	images/Tangella.jpg
1764	Tangerine	Mandarinenförmige Sorte von gelber bis orange Farbe. Durchmesser etwa 3 cm. Hochwachsende Stabtomate, oft über 3 m. Gesundes, dunkles Laub. Sehr lange Vegetationsperiode. Robust. Dichte Trauben. Sehr reich tragend.	images/Tangerine.jpg
1765	Thompson Seedling Cream	Cremeweiße, süß, recht Große Cherrytomate. Ertragreich. Diese Sorte bringt kleine Trauben mit 7 bis 10 Früchten hervor. Seltene, wohlschmeckende, mittelhohe Sorte mit runden, etwa 20 Gramm schweren Früchten.	images/Thompson_Seedling_Cream.jpg
1766	Thompson Seedling Green	Gelbgrüne, süß, recht große Cherrytomate. Ertragreich. Diese Sorte bringt kleine Trauben mit 7 bis 10 Früchten hervor. Seltene, wohlschmeckende, mittelhohe Sorte mit runden, etwa 20 Gramm schweren Früchten.	images/Thompson_Seedling_Green.jpg
1767	Tiger Striped	Herrlich geflammte rote Stabtomate, mit intensiv gezeichneten, auffälligen, attraktiven Früchten. Ertragreich, robust und von sehr einheitlicher Sortierung. Runde, saftige, 2 bis 3-kammerige Frucht.  Mittelhoch bis hoch wachsend. Beste Gartensorte. Ursprünglich aus Russland.	images/Tiger_Striped.jpg
1768	Tigarella	Im grünem Stadium stark, später schwächer gestreifte normalrunde, manchmal auch hochrunde rote Stabtomate. Diese Sorte ist in England schon länger bekannt und wegen der saftigen und wohlschmeckenden Früchte sehr beliebt.	images/Tigarella.jpg
1769	Tommy Toe	Australische, früh reifende Stabtomate mit kleineren runden Früchten. Schön und reich tragend. Leicht zu ernten. Früchte wiegen zwischen 25 und 40 g. Geschmacklich zwischen Obst- und normalrunder Tomate. Meist 2, selten 3 Fruchtkammern. Fleischig mit dicken Fruchtwänden. Durchmesser 35-42 mm. Keine typische Obsttomate.	images/Tommy_Toe.jpg
1770	Tondo Liscio	Runde, teils leicht gerippte Stabtomate aus Italien. Für Anbau unter Glas ideal.	images/Tondo_Liscio.jpg
1771	Tonnelet	Gelb-rot gestreifte, länglich-eiförmige Stabtomate mit stumpfer Spitze aus Belgien von ca. 40 g. Mittel bis spät reifend. Wunderschöne, kuriose Frucht, doch etwas braunfäuleanfällig. Daher am besten unter Dach anbauen. S ie können über 2,4 m hoch werden.  Ketschup-Typ.	images/Tonnelet.jpg
1772	Tres Cantos	Fleisch-Stabtomate mit großen, dunkle, plattrunden, gerippten Früchten. Kräftiger Wuchs. Wahrscheinlich aus Spanien.	images/Tres_Cantos.jpg
1773	Tschuchloma	Diese orangefarbene Stabtomate hat lang gestreckt ovale, zeppelinförmige Früchte. Hoch wachsend und früh tragend. Sehr schöne, platzfeste Früchte.  . Tschuchloma ist ein Städtchen an der Wolga.	images/Tschuchloma.jpg
1774	Tim´s Black Ruffled	Stark gerippte, sehr platte Frucht von tiefrot-brauner Farbe. Viele Fruchtkammern. Stabtomate von mittelhohem Wuchs. Eine der dunkelsten Sorten.	images/Tums_Black_Ruffled.jpg
1775	Tumpling Tom Red	- Dieser Sorte ist eine erstklassige Balkontomate. Der buschige, herabhängende Wuchs macht sie zu einer optimalen Tomate für Ampeln und Balkonkästen. Sehr positiv sind auch die frühen und überaus zahlreichen roten Früchte. Die Fruchte sind etwa 1,8 bis 2,2 cm im Durchmesser.	images/Tumpling_Tom_Red.jpg
1776	Tumpling Tom Yellow	- Dieser Sorte ist eine erstklassige Balkontomate. Der buschige, herabhängende Wuchs macht sie zu einer optimalen Tomate für Ampeln und Balkonkästen. Sehr positiv sind auch die frühen und überaus zahlreichen gelben Früchte. Die Fruchte sind etwa 1,8 bis 2,2 cm im Durchmesser.	images/Tumpling_Tom_Yellow.jpg
1777	Tuxhorn´s Red	Kräftige Stabtomate mit bis zu 500g schweren, roten Früchten. Gutes Aroma. Mittelspäte Ernte ab etwa Mitte August aber dafür sehr lecker und guter Ertrag. Wenig krankheitsanfällig.	images/Tuxhorns_Red.jpg
1778	Tuxhorn´s Red and Yellow	Rote bis orangefarbene, geflammte, oft sehr schwere, kartoffelblättrige Stab-Fleischtomate. Sehr alte Sorte und extrem fleischig. Vielkammerig. Das Fruchtfleisch ist gelb-orange marmoriert und enthält wenig Samen. Sie wird hauptsächlich in Salat verwendet.  Hohe Wärmeansprüche, für Hauswand, Tomatenkasten und Gewächshaus! Nur für geschützte Standorte und warme Lagen oder unter Glas.	images/Tuxhorns_Red_Yellow.jpg
1779	Ukrainian Pear	Mittelgroße bis sehr große birn- bis glockenförmige, fleischige Tomate aus der Ukraine. Etwas pinkfarben.	images/Ukrainian_Pear.jpg
1780	Usbekistan IV	Eine Stabtomate mit hervorragendem Geschmack! Die Fruchtfarbe ist eher olivgrün mit braunroten, fleischfarbenen Anteilen. Mittelgroße, meist hochrunde Früchte mit durchschnittlich 140 g und 3 bis 5 Fruchtkammern. Sehr saftreich. Gute Erträge nur in geschützter Lage.	images/Usbekistan_IV.jpg
1781	Saint Pierre	Mittelgroße Stabtomate mit leicht gerippten und milden, sehr wohlschmeckenden, schmelzend süßwürzigen, roten Früchten. Wenig Kerne. Alte französische Feinschmecker-Sorte.	images/Saint_Pierre.jpg
1782	Schimmeig Greg	- (keltisch: Gestreifter Fels)  Mittelgroße, ockergelb-rot geflammte, herrlich, glänzende, toll gezeichnete Stabtomate. Die Fruchtform variiert, Früchte sind meist hochrund bis klobig bis herzförmig, mit und ohne Rippen an der gleichen Traube. Sehr Dekorativ. Sehr schöne Frucht mit meist über 100g Gewicht.	images/Schimmeig_Creg.jpg
1783	Schneewittchen Rot	Eine Stabtomate mit kleinen 2 bis 3 cm leuchtend roten, süßlich schmeckenden Früchten. Wahrscheinlich eine Wildtomate. Hoch wachsend bis 3 m. Spalieranbau sinnvoll.	images/Schneewittchen.jpg
1784	Schneewittchen Weiss	Eine Stabtomate mit kleinen 2 bis 3 cm cremeweißen, süßlich schmeckenden Früchten. Wahrscheinlich eine Wildtomate. Hoch wachsend bis 3 m. Spalieranbau sinnvoll.	images/Schneewittchen_weiss.jpg
1785	Schwarze Beere	Dunkelrot bis braunschwarz je nach Lichteinfall, rund mit kleiner Spitze, aromatisch Diese hoch wachsende Stabtomate, etwa 2 m, bringt an fächerförmigen Trauben Unmengen leckere Früchte. Fruchtgewicht etwa 7 bis 8 g. Jede Traube trägt bis zu 150 Früchte.  Früher und sicherer Ertrag. Massenträger. Milder süßer Geschmack. Noch nicht stabil.	images/Schwarze_Beere.jpg
1786	Schwarze Krim	Dunkle, braunrote Sorte aus Russland. Bis 500 g schwere Früchte. Aromatisch und Ertragreich!	images/Schwarze_Krim.jpg
1787	Schwarze Russische	Eine Stab- Fleischtomate mit braunroten, marmoriert, weichen und saftigen Früchten. Der Geschmack ist vergleichsweise süß und gleichzeitig sauer. Die Pflanze wird mittelhoch wachsend. Der Ertrag liegt bei etwa 6 x 4 Früchten bis 200 g. Reift mittelfrüh bis spät.	images/Schwarze_Russische.jpg
1788	Schwarze Sarah	Alte, deutsche Stab-Fleischtomate mit hohem Ertrag. Sehr wohlschmeckend. Große pralle, rotbraune Früchte von bestem Aroma. Am Stielansatz mit dunkler, olivgrüner Kappe. Sehr fleischig mit bis zu 12 und mehr Fruchtkammern. Bei Vollreife weich. Meist über 150 g schwer und bis zu 10 cm im Durchmesser.	images/Schwarze_Sarah.jpg
1789	Schwarzer Prinz	Stab-Fleischtomate mit runden, kaum gerippten und dunklen, braunroten Früchten, oben mit schwacher, bis zur Fruchtmitte reichender Kappe. Gewicht variiert und schwankt zwischen 80 bis 150 Gramm. Viele Fruchtkammern. Mittelfrüh reifende und hoch wachsende Stabtomate. Guter, mild-süßer Geschmack. Aus Sibirien. Meist über 150 g schwer und bis zu 10 cm im Durchmesser.	images/Schwarzer_Prinz.jpg
1790	Schwarzes Tigerherz	Dunkle, braunrote Fleischtomate aus Russland. Innen mit grünem Samenmantel. Am Blütenpol mit Nabel, mehr herzförmig.	images/Schwarzes_Tigerherz.jpg
1791	Sensual Love	Eine Stabtomate mit fantastischen rot-grüngestreiften Minitomaten. Innen grell-dunkelrotes Fruchtfleisch. Total saftig und lecker. Hoher Wuchs von etwa 2,5 m.  Auch Spalieranbau sinnvoll. Anbau an warmer Hauswand oder Gewächshaus.	images/Sensual_Love.jpg
1792	Shah–Mikado Red	Kartoffelblättrige Sorte aus den USA, die schon um 1886 erwähnt wurde. Große rote, in Vollreife pinkrote, exzellent süßaromatische Früchte.	images/Shah_Mikado_Red.jpg
1793	Shah – Mikado White	Kartoffelblättrige Sorte aus den USA, die schon um 1886 erwähnt wurde. Große cremeweiße, in Vollreife pinkgestreifte, exzellent süßaromatische Früchte.  Sehr rar.	images/Shah_Mikado_White.jpg
1794	Siberian Golden Pear	Eine wuchtige Sorte von hohem, kräftigem Wuchs. Kräftige Stäbe von 2,4 m sind erforderlich. Sehr hoher Ertrag an großen, beutel- bis birnenförmigen, Gelborangen Früchten, die platz- und druckfest und lange lagerfähig sind. Milder Geschmack ohne viel Säure. Außergewöhnliche Fruchtform. Mittlerer Ertragsbeginn. Lange Erntezeit. Gute Freilandsorte. Trauben mit 5 bis 8 Früchten.	images/Siberian_Golden_Pear.jpg
1795	Sibirische Orange	Gigantisch-wuchtige Stab-Fleischtomate in der Fruchtfarbe wie eine unreife Orange, also hell orange. Innen Einheitlich gelborange. In der Form variabel und kurios, oft Beutelartig und herzförmig, manchmal auch hochrund oder gleich einer gigantischen, dicken Pflaume. Nur 4 bis 5 Früchte je Wickel, die aber je zwischen 150 und 300g schwer werden. Mild, süße, extrem große, Reichtragende Fleischtomate.	images/Sibirische_Orange.jpg
1796	Sibirisches Ochsenherz	Eine Stabtomate mit großen, stumpf herzförmigen Früchten. Etwa 70 mm hoch und 80 mm breit. An der Herzspitze dunkelrot bis weinrot, zum Rücken hin heller werdend. Oft sehr schöne Herzform. 170 bis 200 g schwer. Schlecht vom Stiel zu lösen.	images/Sibirisches_Ochsenherz.jpg
1797	Sibirisches Tigerherz	Dunkle, braunrote Fleischtomate aus Russland. Innen mit grünem Samenmantel. Am Blütenpol mit Nabel, mehr herzförmig.	images/Sibirisches_Tigerherz.jpg
1798	Slimslum	Gelb, birnenförmig, klein, aromatisch, trägt viel, bis zum Frost, aus Russland. Diese hoch wachsende Stabtomate, Mitte August bereits 2,3 m, bringt an fächerförmigen Trauben Unmengen an kleinen, ovalen bis birnenförmigen Früchten hervor. Fruchtgewicht etwa 7 bis 8 g. Jede Traube trägt bis zu 150 gelbe Birnchen. Früher und sicherer Ertrag. Massenträger! Milder, süßlicher Geschmack.	images/Slimslum.jpg
1799	Sliwowidnij	Gelbe Pflaumentomate mit gigantischen Fruchtständen. Hoch wachsend. die Früchte können nach dem 1. Frost mitsamt der ganzen Traube geerntet und aufgehängt eingelagert werden. Sie halten noch wochenlang ohne zu schrumpeln und schmecken sehr süß. Die Beeren sind etwa1 bis 1,5 cm und wiegen bis 20 g. Beachtlicher Ertrag und bester Geschmack.  Tolle Naschtomate.	images/Sliwowidnij.jpg
1800	Snow Berry	Obst-Stabtomate mit cremeweißer bis glasig-gelber Färbung durchschimmernd. Plattrunde Frucht mit leichter Rippung Ca. 23 bis 25 Gramm. Meist dreikammerig.	images/Snow_Berry.jpg
1801	Snow White Cherry	Viele gelbweiße, ziemlich kleine Früchte bringt diese mittelhohe Stabtomate hervor. Sehr seltene Sorte, die leider erst mittelspät trägt. Die Früchte haben mehrere Fruchtkammern und sehen wie weiße Miniatur-Fleischtomaten, also leicht plattrund aus.  Geschmack mild-obstig bis fruchtig. Geschützter Anbau ist wichtig.	images/Snow_White_Cherry.jpg
1802	Snowball	Russische, weiße Stabtomate. Eine süße, sehr wohlschmeckende Sorte mit überaus saftigen, mehr-kammerigen Früchten zum So –essen.	images/Snowball.jpg
1803	Solotoj	Gelbe Pflaumentomate mit gigantischen Fruchtständen. Hoch wachsend. die Früchte können nach dem 1. Frost mitsamt der ganzen Traube geerntet und aufgehängt eingelagert werden. Sie halten noch wochenlang ohne zu schrumpeln und schmecken sehr süß. Die Beeren sind etwa1 bis 1,5 cm und wiegen bis 20 g.  Beachtlicher Ertrag und bester Geschmack. Tolle Naschtomate.	images/Solotoj.jpg
1804	Solotoj Petruschok	Gelbe Flaschentomate mit länglichen, dünnen, etwa 9cm langen Früchten. Vollreif orange Anflug. Feste, dickwandige, fleischige Frucht mit Nippel. Bis 100 g schwer. Sehr schöne und ungewöhnliche Fruchtform. Wuchshöhe 2,2 bis 2,5 m.	images/Solotoj_Petruschok.jpg
1805	Qianglimishou	- Sehr große, pinkfarbene, wohlschmeckende, Fleischtomate aus Japan. Eine Stabtomate mit runden, fleischigen Früchten. Sehr schön in der Form. Guter Ertrag. Feste, 80 bis 120 g schwere Früchte. Stiel sitzt sehr fest, am besten mit Stiel ernten. Gute Sorte für Garten und unter Glas.	images/Qianglimishou.jpg
1806	Radinie Meita	- “Radiniesces Meita”  Eine pink bis braunrote Stabtomate. Mittelhoher bis hoher wuchs von 1,6 bis 2,2 m. Gewicht etwa 80 bis 200 g. Sehr lecker, fruchtige Sorte. Mittelhoher Ertrag.	images/Radinie_Meita.jpg
1807	Rainbow Bicolor	- Saftige, würzige Stab-Obsttomate mit rot-orange mittelgroßen Früchten.	images/Rainbow_Bicolor.jpg
1808	Rajce Tyck Hroznove	- Eine gelbe Obsttomate mit extreme großen, extreme aufgefächerten Trauben von 150 bis 300 Früchten je Wickel. Absoluter Massenträger! Die Pflanzen scheinen nur aus Blütenständen und Fruchttrauben zu bestehen. Kräftiger Wuchs. Mittelhoch bis hoch wachsend, auf jeden Fall über 2 m. Fruchtgewicht etwa 6 g. Durchmesser etwa 22 mm. Eine Spitzensorte der Extraklasse!	images/Rajek_Tyck_Hroznove.jpg
1809	Rajce Tygrovane	- Eine herrlich gezeichnete, kaum mittelgroße Sorte. Super Fruchtansatz von etwa 30 bis 40 g Gewicht und bis zu 40 mm Durchmesser. Häufig lange Fruchtstände mit 10 bis 30 Früchten. Mittel hoher Wuchs 1,7 bis 2 m. Erntebeginn schon ab Mitte Juli mit hohem Anfangsertrag!	images/Rajce_Tygrovane.jpg
1810	Red Berry	- Begehrte, sehr aromatisch schmeckende Cocktailtomate. Kirschgroße, rote Früchte.	images/Red_Berry.jpg
1811	Red Pepper	- Kuriose Stabtomate mit roten, kantig spitz-paprikaförmigen Früchten, die eine lange ausgezogene Spitze haben. Bis 14 cm lang und 4 bis 5 cm Durchmesser. Hoher, aber später Ertrag, bei Wärme. Sehr interessante Fruchtform. Mittelrot. Ideal für Tomatenkästen. Im Freiland kein guter Ertrag. Seltene Fruchtform.	images/Red_Pepper.jpg
1812	Red Plum mit Spitze	- Rot, lang gestreckt, eiförmig mit Spitze. Die Fruchtform ist eckig-oval, zum Blütenpol hin etwas verjüngt, dann folgt ein Nippel einer Brustwarze gleich, der an der Basis manchmal etwas eingesunken ist. Die Frucht hat einen Durchmesser von 4-4,5 cm und ist zwischen 5 und  7 cm lang, 2 Fruchtkammern, eine dicke Mittelachse und eine dicke  Fruchtwand. Eine begehrte und schöne Stabtomate.	images/Red_Plum_mit_Spitze.jpg
1813	Red Zebra	- Herrlich geflammte, rote, deutlich gestreifte Stabtomate. Runde Frucht von etwa 40 bis 50 Gramm. Sehr schön und wohlschmeckend. Mittlerer Ertrag.	images/Red_Zebra.jpg
1814	Regina´s Yellow	- Orangegelbe, süße Fleischtomate. Hohe Wärmeansprüche, für Hauswand, Tomatenkasten und Gewächshaus! Orangefarbene, geflammte, schwere, Stab-Fleischtomate. Sehr alte Sorte und extrem fleischig. Nur für geschützte Standorte und warme Lagen oder unter Glas. Vielkammerig. Das Fruchtfleisch ist gelb-orange marmoriert und enthält wenig Samen.	images/Reginas_Yellow.jpg
1815	Reisetomate	- Bei dieser roten, meist flachrunden Fleischtomate setzt sich die Frucht aus mehreren Teilfrüchten zusammen, die ohne große Verletzung von der Stammfrucht abgetrennt werden können. Sehr seltene Stabtomate mit eher waagerecht stehendem Laub. Setzt bei kalter Witterung und im Schatten keine Früchte an. Stark kreuzungsgefährdet.	images/Reisetomate.jpg
1816	Ribesoides Wildtomate	, Spaliertomate - Eine kräftig wachsende, meist über 2 m hohe Wildtomate mit kleinen, roten, runden Früchten, die an ein- bis mehrfach gegabelten, zunächst waagerecht und weit abstehenden Wickeln hängen. Intensiv und süß im Geschmack. Sehr saftig. Kuriose Unterart der Johannisbeertomate.	images/Ribesoides_Wildtomate.jpg
1817	Rio Grande	- Eine eiförmige, sehr dickwandige und lagerfähige Tomate aus Bolivien. Ketschup Typ. Niedriger Wuchs ca. 1 bis 1,4 m. Mild im Geschmack und platzfest. Leicht zu ernten. Trotz der Höhe sehr guter und lang andauernder Ertrag.	images/Rio_Grande.jpg
1818	Romarzano	- Eine rote Marktomate mit dicken Fruchtwänden für Ketschup, Suppen und Salate.	images/Romarzano.jpg
1819	Rosovij Zunami	- Eine rosarote Fleischtomate von etwa 200 bis 300 g Gewicht. Ertragreiche Sorte. Saftig und Lecker.	images/Rosovij_Zunami.jpg
1820	Rotes Birnchen	- Stabtomate mit roten, oval-birnenförmigen Früchten von etwa 8 g. Früchte hängen in Trauben von bis zu 12 Früchten.\r\n \r\n Alte deutsche Obsttomate. Süßer und aromatischer Geschmack.	images/Rote_Birne.jpg
1821	Rote Perle	- Kleine, runde, sehr dunkle, rote Obsttomate. Eine der wenigen dunkelroten, kleinfruchtigen Sorten. Die 2 cm großen Früchte hängen in einfachen Trauben zu 8 bis 10 Stück. Saftig und würzig im Geschmack. Mittelhoher Wuchs.  Liebhabersorte. Sehr platzfest.	images/Rote_Perle.jpg
1822	Rote Sarah	- Mehrkammerige, platte und saftige Stab-Fleischtomate mit einigen Rippen. Hell bis mittelrot. Für Freiland und Gewächshaus. Interessante, oft verschieden geformte Früchte.	images/Rote_Sarah.jpg
1823	Rote Traube	- Eine Obsttomate mit bestem Geschmack. Runde mittelrote Frucht von etwa 11 bis 14 g, doch variabel. Saftig, sehr wüchsig, Ende Juli oft schon 2 m hoch. Mittelfrühe Reife ab Anfang August. Meist mehrfach gegabelte, lange Wickel mit jeweils 20 bis 30 Früchten.	images/Rote_Traube.jpg
1824	Rote Zora	- Eine hohe Stabtomate bis 2,5 m. Die Früchte sind Eiförmig bis tonnenförmig, rosarot bis weinrot, etwa 5 bis 7 cm lang und 3 bis 5 cm breit, hängen in großen Trauben von 6 bis zu 9 Früchten je Wickel. Guter Ertrag.	images/Rote_Zora.jpg
1825	Roter Batzen	- Hochwachsende Stabtomate mit wohlschmeckenden, roten Früchten, die besonders an den unteren beiden Fruchtständen eine stark uneinheitliche Form aufweisen. Nach oben hin werden die Früchte einheitlicher. Sonniger Standort, wenig Wasser und geringe Düngergaben fördern den bereits genetisch bedingten guten Geschmack.	images/Roter_Batzen.jpg
1827	Rotes sibirisches Ei	- Eine rot fruchtige Ketschup-Tomate mit guter Widerstandsfähigkeit gegen Braunfäule. Kräftiger Wuchs über 2 m mit dickem Haupttrieb. Größe der Frucht etwa 8 x 4 cm. Ovale Form. Sehr fest und lange Lagerfähig.	images/Rotes_Sibirisches_Ei.jpg
1828	Rotorange Galapagos Wildtomate	- Kleine, ovale, meist birnenförmige Wildtomate mit Spitze. Etwa 4 Gramm. Gigantische büschelförmige Wickel. Soll von den Galapagos-Inseln stammen und salzverträglich sein. Massenträger, hat ca. 100 bis 150 Tomaten je Wickel.	images/Rotorange_Galapagos.jpg
1829	Runde Peh Orange	- Starkwachsende Stabtomate mit üppigen Fruchttrauben. Flachrund bis platt, mittelgroße bis große, mittelrot bis rotorange Früchte mit mittlerer Rippung. Bis 200 g schwer. Durchmesser bis 10 cm. Gut für das Freiland geeignet. Reich tragend.	images/Runde_Peh_Orange.jpg
1830	Runde Peh Rot	- Starkwachsende Stabtomate mit üppigen Fruchttrauben. Flachrund bis platt, mittelgroße bis große, mittelrote bis scharlachrote Früchte mit mittlerer Rippung. Bis 200 g schwer. Durchmesser bis 10 cm. Gut für das Freiland geeignet. Reich tragend.	images/Runde_Peh_Rot.jpg
1831	Verna Orange	Orange Stab-Fleischtomate aus Indiana (USA) mit keil- bis herzförmigen Früchten. Süßsauer und wohlschmeckend.	images/Verna_Orange.jpg
1832	Vinitage Wine	Eine der wenigen Fleischtomate mit geflammten Früchten. Rot mit Gelb. Aus Russland.	images/Vintage_Wine.jpg
1833	Violette Fleischtomate	(Dunkelviolette Fleischtomate, Indische Fleisch) Eine Stabtomate mit hervorragendem Geschmack! Die Fruchtfarbe ist eher olivgrün mit braunroten, fleischfarbenen Anteilen. Mittelgroße, meist hochrunde Früchte mit durchschnittlich 140 g und 3 bis 5 Fruchtkammern. Sehr saftreich. Gute Erträge nur in geschützter Lage. Soll aus Indien stammen.	images/Violette_Fleischtomate.jpg
1834	Wapsipinicon Peach	Eine Stabtomate mit cremeweißen runden Früchten. Diese Sorte gehört zu den Pfirsichtomaten. Die Tomaten sind leicht behaart.	images/Wapsipinicon_Peach.jpg
1835	Weißbehaarte	Sehr schöne, etwas kleinfruchtige, runde Stabtomate bis 2,5 m mit fein behaarten Früchten. Weißgelbe, fast weiße, sehr seltene Fruchtfarbe. Relativ platzfest und gesund wachsend. Früh bis mittelfrüh. An geschützten Stellen oft schon vor Mitte Juli reif. Kuriosität! Saftig und mild-süß.	images/Weissbehaarte.jpg
1836	Weiße Mirabelle	“Mirabell weiß” Viele gelbweiße, ziemlich kleine Früchte bringt diese mittelhohe Stabtomate hervor. Sehr seltene Sorte, die leider erst mittelspät trägt. Die Früchte haben mehrere Fruchtkammern und sehen wie weiße Miniatur-Fleischtomaten, also leicht plattrund aus. Geschmack mild-obstig bis fruchtig. Geschützter Anbau ist wichtig.	images/Weisse_Mirabelle.jpg
1826	Rotes Herz	- Kuriose Stabtomate mit tropfenherzförmigen, roten Früchten. Teils breitbauchig, doch immer mit ausgezogener Spitze. Schlank und drahtig wachsend. Große, fächerförmige, büschelförmige Wickel mit meist 10 bis 25 Früchten von 30 bis 60 Gramm. Eine der lustigsten Sorten.	images/Rotes_Herz.jpg
1837	Weißes Ochsenherz	Diese Ochsenherztomate ist die einzige mit weißen Früchten. Extrem fleischige und auch große Frucht. Relativ frühe Reife.  Eine Sorte, die aus Belgien stammt.	images/Weisses_Ochsenherz.jpg
1838	White Beauty	(Beaute Blanche du Canada)  Cremegelbe bis weiße Stab-Fleischtomate mit sehr süßem Geschmack. Außergewöhnlich in Farbe und Geschmack. Bringt kräftige und wüchsige Jungpflanzen. Trägt in warmen Sommern und im Gewächshaus sehr gut. Tomaten zerfallen im Salat, da zu wässrig.	images/Weisse_Schoenheit.jpg
1839	White Princess	Eine große, nahezu reinweiße Stabtomate mit großen, teils pfundschweren, fleischigen Früchten. Platt und mittelstark bis schwächer gerippt. Bei uns reiften die ersten Früchte gegen Anfang August. Selbst vollreife Früchte haben nur einen ganz geringen gelben Anflug. Das schmelzende Fruchtfleisch schmeckt süß und sehr saftig.	images/White_Princess.jpg
1840	White Queen	Blassgelbe, platte, leichter gerippte Fleischtomate von 70 bis 200 Gramm Gewicht. Manchmal mit rosa Streifen oder rötlich angehaucht. Mittelhoher Wuchs. Frucht mit vielen Fruchtkammern und oft extrem fleischig sowie mit Nabel.	images/White_Queen.jpg
1841	White Tomesol	Reichtragende weiße Fleischtomate mit saftigen, mittelgroßen, leuchtenden Früchten.	images/White_Tomesol.jpg
1842	Wolford Wonder	Große, herz- bis kreiselförmige oder auch keilförmige Stabtomate mit tief pinkfarbenen Früchten. Unreif mit dunkelgrüner Kappe, die aber bei Reife voll verschwindet. Wenig Platzer. Fleischig, bis 9 cm lang und meist 4 bis 6 cm stark.	images/Wolford_Wonder.jpg
1843	Wooly Typ 1	Eine Stabtomate mitgelborange Früchten von etwa 2 cm Durchmesser. Die Früchte haben am Fruchtansatz eine braunorange Maserung. Sehr lecker und wüchsig.	images/Wooly_Typ_1.jpg
1844	X-Basinga	Ein wahrer Massenträger. Runde Früchte von 45 x 40 mm Größe. Gewicht etwa 35 Gramm. Relativ einheitliche Sortierung. Die Früchte sind grünlichgelb bis ockerfarben und haben auch bei Vollreife eine verwaschene grünliche Kappe. Angenehm und wohlschmeckend, mild-süß und sehr ertragreich. Die Pflanzen machen sehr wenig Arbeit. Wuchshöhe etwa 2 m.	images/x_Basinga.jpg
1845	X-Basinga Oval	Ein wahrer Massenträger. Oval-eiförmige Früchte von 45 x 40 mm Größe. Gewicht etwa 35 Gramm. Relativ einheitliche Sortierung. Die Früchte sind grünlichgelb bis ockerfarben und haben auch bei Vollreife eine verwaschene grünliche Kappe. Angenehm und wohlschmeckend, mild-süß und sehr ertragreich. Die Pflanzen machen sehr wenig Arbeit. Wuchshöhe etwa 2 m.	images/x_Basinga_oval.jpg
1846	Yellow Agate	Wunderschöne, glänzend gelbe Flaschentomate. Diese Sorte wächst nur halbhoch und sehr kompakt mit wuchtigem, dichtem Blattwerk. Etwa fingerlange, 40 bis 50 g schwere, flaschenförmige Früchte mit dicker Fruchtwand. Mild im Geschmack, ohne Säure. Guter Ertrag ab Ende Juli. Platzfest. Interessant für Liebhaber.	images/Yellow_Agate.jpg
1847	Yellow Niunai	Kuriosität! An kompakten, dicht belaubten, etwa 1,6 m hohen Pflanzen hängen dicht gedrängt je Wickel etwa 6 birnengroße und birnenförmige, knallgelbe Früchte. Diese 100 bis 120 g schweren Brocken sind etwa 8 cm lang und bis 6 cm dick. Hängendes, sehr großes Laub.	images/Yellow_Niunai.jpg
1848	Yellow Oxheart	Fast herzförmige, manchmal glockige, nicht einheitlich geformte, gelbe Stabtomate. Vielkammerig. Nicht zu groß, meist etwa 100 g schwer, ein Gewicht von 500 g ist aber drin. Die Früchte enthalten oft nur sehr wenig Samen. Viele kleine Rippen. Rarität!	images/Yellow_Oxheart.jpg
1850	Yellow Stuffer	(Golden Cavern, Jaune a Farcir, Gelbe zum Füllen) Paprikaförmige gelbe Stabtomate mit hohlen Früchten. Die Samen sitzen in der Fruchtmitte. Sehr schöne, zum Teil auch große Frucht. Seltenheit. Braucht einen geschützten, trockenen und warmen Platz, um herrliche Früchte zu entwickeln.	images/Yellow_Stuffer.jpg
1851	Zehen-Reisetomate	Bei dieser roten, meist flachrunden Fleischtomate setzt sich die Frucht aus mehreren Teilfrüchten zusammen, die ohne große Verletzung von der Stammfrucht abgetrennt werden können. Sehr seltene Stabtomate mit eher waagerecht stehendem Laub. 	images/Zehen_Reisetomate.jpg
1852	Zscheltyi Delikatess	Goldgelbe, russische Stabtomate mit runden Früchten. Milder Geschmack. Guter Ertrag. Mittlerer Ertragsbeginn. Fruchtgewicht variabel. Ziemlich platzfest.	images/Zscheltyi_Delikatess.jpg
1853	Zhongshu	(Tschongshou) Wunderschöne, brillant pinkfarbene, mittelgroße, würzigsaftige Fleischtomate, sehr selten.	images/Zhongshu.jpg
1854	Zuckertraube	(Zuckertomate)  Süßaromatische kleinfruchtige und kräftig wachsende rote Stab-Obsttomate. Reich tragend mit üppigen, langen Trauben. Etwas empfindlich für Braunfäule, daher geschützt anbauen.	images/Zuckertomate.jpg
1855	Zunami	Eine wunderschöne, großfruchtige Stabtomate. Rund bis plattrund, zwischen 150 bis 200 g schwer und von hervorragender Qualität und ungewöhnlich früher Reife für eine Fleischtomate. Bemerkenswert ist die herrliche, deutlich auffallende Färbung von rosa bis tief rosarot. Mittelhohe Sorte von etwa 2 m Höhe. Runde Früchte, die sich fest anfühlen und schwer in der Hand liegen. Pro Wickel oft ein Ertrag von 1 kg.	images/Zunami.jpg
1856	Zypriotische Riesenfleischtomate	Eine große, rote Fleischtomate aus Zypern. Die Frucht ist keilförmig bis herzförmig, selten auch doppelt herzförmig mit tief liegendem Stielansatz. Gewicht meist 150 bis 200 g. Sie ist so fleischig, dass teilweise nur noch Platz für Mini-Fruchtkammern ist. 6 und mehr Fruchtkammern mit meist wenig Samen. Frucht bis zu 8 cm hoch. Kaum Grünkragen, wenig Platzer.	images/Zypriotische_Riesenfleischtomate.jpg
1857	Berner Rosen	Stabtomate - Mittelspät reifende, fleischige Tomate mit rosaroten Früchten. Guter, aromatischer Geschmack mit süßem Anflug. Saftig-weiche Früchte. Kräftiger Wuchs, neigt zum Wuchern und wird 2 m hoch. Ertragreiche Stabtomate. Kreuzungsgefährdet. Fruchtdurchmesser ca. 8 cm. Rund bis leicht plattrund. Zahl der Fruchtkammern variiert: 3-7. Durchschnittliches Gewicht: 200 g. 4-6 Früchte je Traube. Schweizer Gartensorte, die einen Warmen, trockenen Standort benötigt.	images/BernerRosen.jpg
1858	Gelbe Saure	Stabtomate, Spaliertomate - Wahrscheinlich eine Wildtomate mit extremen Wuchs-Eigenschaften. Sehr hoch bis 4,00 m bei eintriebiger Erziehung. Sehr viele Trauben mit kleinen ca.1,5 cm großen gelben Tomaten. Leider wie der Name schon sagt sehr sauer. Freies Wachstum am Spalier ohne ausgeizen bringt mehr Ertrag.	images/Gelbe Saure.jpg
1849	Yellow Pepper	Gelborange bis goldfarbene, große Früchte etwa 80 Gramm, bis 8 cm lang und 5 cm breit von spitzovaler „Andenhorn- Form“, wie Spitzpaprika (oben gleich klobiger, also eher keilförmig). Buschiger Typ mit jeweils 3 bis5 Früchten je Traube. Am Blütenpol mit ausgezogener Spitze.	images/Yellow_Pepper.jpg
1859	Star Rot	Flachrunde, rote, saftige Stabtomate von süßlich-würzigem Geschmack.	images/Star Rot Kopie.jpg
1860	Ananas Noire	Stabtomate - Große Fleischtomate mit dunkelroten und grünen Farbtönen, die von gelben Streifen durchzogen sind. Innen grünlich mit roter Marmorierung. Würzig im Geschmack.	images/Ananas_Noire_1.jpg
1861	Jana Rot	Stabtomate - Eiförmige, rote Früchte, 30 bis 50 g schwer. Höhe der Frucht etwa 50 bis 60 mm, Durchmesser etwa 40 mm. Leicht zu ernten. Eine platzfeste und einheitlich geformte, sehr empfehlenswerte Gartensorte.	images/Jana Rot.jpg
1862	Grüngelb gestreiftes Mini-Ei	Stabtomate - Eine hoch wachsende Stabtomate mit grün-gelb gestreiften ca.3cm langen und ca. 1,5cm dicken eiförmigen Früchten. Geschmack mild aromatisch. Spaltet teilweise auf. Wahrscheinlich noch nicht stabil.	images/Gruengelb gestreiftes Miniei.jpg
1863	Maestria	Stabtomate - Starkwachsende Stabtomate mit üppigen Fruchttrauben. Flachrund bis platt, mittelgroße bis große, mittel- bis scharlachrote Früchte mit mittlerer Rippung. Bis 200 g schwer. Durchmesser bis 10 cm. Gut für das Freiland geeignet. Reich tragend. Platzfest.	images/Maestria.jpg
1864	Goldi	Stabtomate - Eine gelbe Stabtomate mit runden Früchten von 3 bis 4 cm Durchmesser. Erste Früchte schon Mitte Juli. Mittelhohe Pflanze von etwa 1,70 m.	images/Goldi.jpg
1865	Grüne Russische	Stabtomate - Wüchsige, grüngelbe, etwa 2 m hohe, kartoffelblättrige Stab-Fleischtomate mit etwas platten und leicht gerippten, mittelgroßen, z. T. auch riesigen Früchten, deren Größe zwischen 5 und 15 cm schwankt. Das Gewicht liegt in der Regel zwischen 100 und 200 g. Fruchtfleisch innen manchmal mit rosa Streifen durchzogen.	images/Gruene Russische.jpg
1866	Moneymaker	Stabtomate - Hellfruchttyp mit üppigem Fruchtbehang, teils büschelige Trauben mit bis zu 12 Früchten. Mittelgroße 55 mm, runde Früchte von roter Farbe mit 2 Fruchtkammern und ohne Grünkragen. Bis 80 g je Frucht sind möglich. Massenträger. Ideal für Freiland.	images/Moneymaker.jpg
1867	Rotauge	- Runde, rote Stabtomate mit etwa 4 bis 5 cm großen Früchten. Meist 2 Fruchtkammern. 6 bis 9 Früchte je Wickel. Relativ früh im Ertrag. Sehr hoher Ertrag an festen Früchten gleichmäßiger Sortierung.	images/Rotauge.jpg
1868	Swajawa	Wildtomate -Birnenförmige, pflaumenförmige rote Wildtomate. Früchte 8 bis 12g schwer. Relativ widerstandsfähig gegenüber Braunfäule. Feines, hellgrünes Laub. Schlanker, drahtiger Wuchs von etwa 2,3 bis 3 m. Fächerförmige Trauben. Massenträger.	images/Swajawa.jpg
1869	Pearls Yellow Pink	Stabtomate - Saftige, süß-aromatische Stabtomate mit gelb-rot marmorierten Früchten.	images/Pearls Yellow Pink.jpg
1870	Aurantiacum Wildtomate	Stabtomate - Ertragreiche Wildtomate mit nicht ganz kirschgroßen, dottergelben Früchten, die in Trauben mit teils mehr als 100 Früchten reifen. Die eiförmigen Früchte sind knackig und saftig. Sie wiegen etwa 5 g bis 7 g und können sehr lange hängen bleiben ohne zu faulen und ohne zu schrumpeln. Insofern ist auch die Ernte ganzer Trauben möglich. Auch die gute Platzfestigkeit macht dies möglich. Gut widerstandsfähig gegen Braunfäule.	images/Aurantiacum_Wildtomate.jpg
1871	Karolewskij	Stabtomate - Roter Massenträger mit etwa 6,5cm großen Früchten. Wird etwa 1.8m hoch. Auch für Lagen mit kühler Witterung.	images/Karolewskij.jpg
1872	Tschio Tschio San	Eine richtige Überraschung. Diese lang gestreckt ovale bis etwa birnförmige Tomate ist wirklich sehr außergewöhnlich in Farbe und Ertrag. Reif glänzend lachsfarben mit hellerer, gelblich-grüner Kappe. Manchmal zeigen sich auch noch einzelne grüne Flecken und Streifen. Sehr leicht ohne Stiel zu ernten. Massenträger mit Fächerförmigen Trauben. Bis 50 Früchte je Wickel. Fruchtgröße 50 x 33 mm. Gewicht etwa 25 Gramm.	images/Tschio Tschio San.jpg
1873	Weißleinchen	Kuriose Obsttomate mit üppigen Trauben dicht beieinander sitzender Früchte. Die Farbe der etwa 2 cm großen und runden Früchte ist cremeweiß. Für Spalieranbau geeignet.	images/Weissleinchen.jpg
1874	Heikos Rote Balkontomate	Buschtomate - Eine kräftige ca.40 cm hohe und etwa 35 cm breite aufrecht wachsende Buschtomate. Rote etwa 4 cm im Durchmesser feste Früchte. Widerstandsfähig. Sehr geeignet für Topfkultur.	images/Heikos Rote Balkontomate.jpg
1875	Kelloggs Breakfast	Stabtomate - Große, abgeflachte, orange Fleischtomate von D. Kellogg aus Reford/Michigan. Reich tragend und ausgezeichnetes, süßes Aroma.	images/Kelloggs Breakfest.jpg
1876	Gelber Favorit	Stabtomate - Sehr schöner, herrlich gelber Massenträger. Süßsaure bis mild schmeckende Stabtomate von mittlerem wuchs bis 2,00 m und mit etwa 50 bis 65 g schweren Früchten. Sehr einheitliche Sortierung, 2 bis 3 Fruchtkammern, manchmal leicht hochrund, sonst völlig rund, fest und saftig. Beachtlich platzfest.	images/Gelber Favorit.jpg
1877	Poma Amoris	- Eine niedrige Stabtomate von etwa 1,2 m mit gelben 10 bis 50 g schweren mild schmeckenden Früchten.	images/Poma Amoris.jpg
1878	Black Cherry	Stabtomate - Dies ist die einzige bekannte wirklich runde schwarze Kirschtomate. Sie vereint die Würze der schwarzen Tomaten mit der Süße von Kirschtomaten. Diese Stabtomate wächst sehr hoch und liefert viele außergewöhnlich – in Farbe und Geschmack – delikate Früchte.	images/Black_Cherry.jpg
1879	San Petro	Eine mittelhohe bis hohe Stabtomate von etwa 1,5 bis 2 m Höhe. Die roten Früchte sind plattrund zwischen 70 und 200 g schwer, leicht gerippt, fleischig mit vielen Fruchtkammern.	images/San Petro.jpg
1880	Sachalin	Rote plattrunde Früchte. Eine aufrecht wachsende Buschtomate.	images/Sachalin.jpg
1881	Mammut Gelb	Stabtomate - Große Fleischtomate, die oben leicht goldorange, zum Blütenpol hin eher pinkrot wird. Süß und fruchtig, sehr fleischig mit vielen Fruchtkammern. In der Form leicht plattrund mit gering ausgeprägter Rippung. Geringe Rissbildung. Mittelspäte Reife.	images/Mammut Gelb.jpg
1882	San Marzano	Eiförmige, scharlachrote mittelhohe Stab- oder Spaliertomate aus Italien. Früchte pflaumenförmig mit kurzer, stumpfer Spitze und überaus zahlreich! Seitentriebe hochbinden. Üppige bis pompöse, buschige Blütentrauben. Platzfeste und haltbare Früchte. 2 Fruchtkammern.	images/San Marzano.jpg
1883	Fucco d´ Oro Red	Stabtomate - Unförmige, flache, ungewöhnliche, Mittel- bis dunkelrote Stabtomate. Reich tragend. Recht platzfest. Verträgt keinen Regen.	images/Fucco d Oro Red.jpg
1884	Big Sungold Red	Stabtomate - Nur murmelgroße Früchte in üppigen Fruchtständen. Ist gut widerstandsfähig gegen Braunfäule. Schöne, rote Früchte. Sehr hohes und robustes Wachstum. Höhe ohne weiteres 2,8 bis 3,5m. Diese Sorte sollte am Spalier gezogen werden.	images/Big_Sungold_Red.jpg
1885	Gestreifte Birnenförmige aus Sibirien	Stabtomate - Mittelhohe Stabtomate mit eher kurios-herzförmigen, oft beutelförmigen, mittelgroßen Früchten, die Rippen haben und im Grünstadium dunkelgrüne Streifen aufzeigen. Meist 70-100 g.	images/Gestreifte Birnenfoermige.jpg
1886	Pinkne Rita	Hochwachsende Stabtomate mit rot bis pinkfarbenen etwa 6 cm großen, meist runden, bis 150 g schweren Früchten.	images/Pinkne Rita.jpg
1887	Rot-Gestreifte	- Herrlich geflammte, rote, deutlich gestreifte Stabtomate. Runde Frucht von etwa 40 bis 50 Gramm. Sehr schön und wohlschmeckend. Mittlerer Ertrag.	images/Rot-Gestreifte.jpg
1888	Tamara	Rosarote, Wohlschmeckende Früchte, die bis 100 g wiegen können. Historische Sorte aus den USA. Früher und lang anhaltender Ertrag. Robuste Pflanzen.	images/Tamara Kopie.jpg
1889	Lagertomate gelb-rot	Stabtomate - Eine Sorte mit eiförmigen, geflammten, kleineren Früchten. Sind bis zu 8 Monaten lagerfähig. Leider wenig Geschmack.	images/Lagertomate gelb-rot.jpg
1890	Livingstons Acme	Stabtomate - Eine glattschalige Tomate von Livingston & Co, USA 1875. Eine kleinere, pinkfarbene, plattrunde Fleischtomate, die kaum gerippt ist. Das Gewicht variiert: Früchte wiegen zwischen 80 g und 200 g. Die Frucht ist oben heller und oft mit grünen Flecken. Unten, am Blütenpol, dagegen rein pinkfarben. Geringe Rissneigung und keine Platzer. Auffällig wegen der Farbe. Mittlerer Ertrag und mittlerer Reifebeginn.	images/Livingstons Acme.jpg
1891	Petite Pomme Red	Stabtomate, Spaliertomate Außergewöhnliche Obsttomate mit kleinen roten Früchten. Wahrscheinlich eine Johannisbeertomate. Nicht so dünntriebig und feinlaubig wie andere Johannisbeertomaten, eher wuchtig. Sehr geeignet für Spalieranbau. Ab August Laub ausdünnen!	images/Petite Pomme Red.jpg
1892	Ines Rote Eiertomate	Stabtomate - Ketschuptomate mit gesundem, hohem Wuchs und langer Ertragsdauer. Geschmacklich nicht überragend. Feste, mittelgroße und länglichovale Früchte. Ertragreich. Blätter relativ stabil gegenüber der Braunfäule - z. T. werden eher die Früchte befallen.	images/Ines Rote Eiertomate.jpg
1893	Lange Große Kubanische	Stabtomate - Rote Stabtomate mit länglicher Fruchtform. Riesige, längliche Keilform. Große und schlanke, spitze Paprikatomate. Sehr beachtliche und kuriose Sorte. Seltenheit. Die Sorte sollte am besten unter Dach an vollsonniger Stelle gezogen werden. Eine Sorte für den fortgeschrittenen Tomatenfreak und für Ausstellungen.	images/Lange Grosse Kubanisch.jpg
1894	Denar	Stocktomate, hohe Buschtomate - Eine Buschtomate von kräftigem Wuchs. Die roten Früchte sind länglich-tonnenförmig. Ketschup-Tomate. Besonderheiten: Sehr guter Ertrag. Gut Lagerfähig, fleischig und süß. Feste Schale.	images/Denar.jpg
1895	Marmande	Stabtomate - Gerippte, rote, mittelgroße bis große halbhohe Stab-Fleischtomate. Klassische französische Sorte von nur mittel hohem Wuchs. Von bestem Geschmack (mild, süß-würzig und saftig) und daher sehr beliebt.  Braucht einen warmen Standort.	images/Marmande.jpg
1896	Rotkäppchen	- Fast vollkommen platzfeste, kartoffelblättrige, rote Buschtomate mit mittelgroßen, flachrunden Früchten. Sicherer Ertrag. Reife Anfang August.	images/Rotkaeppchen.jpg
1897	Yellow-Pink-Fleisch	Bis 400 g schwere, runde, abgeflachte, gelb-orange Früchte mit rotem Zentrum. Sehr aromatisch. Eine der besten zweifarbigen Sorten. Die Sortenbezeichnung bezieht sich auf die Zweifarbigkeit der Früchte, die sehr große, platte Riesenfleischtomaten sind. Am deutlichsten wird die Zwei-Farbigkeit bei aufgeschnittenen Früchten. Das Zentrum ist knall rotorange und zur Fruchtwand hin rein gelb. Sehr viele Fruchtkammern.	images/Yellow Pink Fleisch.jpg
1898	Hurma	Stabtomate - (Churma , Sharon) Mittelhohe, doch Stabtomate mit mittelgroßen, teils aber auch gigantischen, fleischigen, wunderschönen Früchten. Plattrund und kaum gerippt. Süß, mild-würzig und wohlschmeckend, fest und von intensiver gelb-orangerer Farbe. Für den Anbau unter Folie und Glas oder an einer Hauswand, da braunfäule- empfindlich. In warmen Sommern hoher Ertrag.	images/Hurma.jpg
1899	Alberta Girl	Stabtomate - Eine Tomatenpflanze mit höchst ungewöhnlichen, beflaumten, runden und dunkelroten Früchten. Auch die Pflanze ist komplett weiß-silbrig behaart. Gesunder Wuchs, aber nur für überdachte Standorte geeignet.	images/Alberta_Girl.jpg
1900	Rot-Gelb-Gestreifte Party	- Eine rot-gelb gestreifte, runde Obsttomate. Sehr saftig und wohlschmeckend. Durchmesser ca.2cm. noch nicht stabil.	images/Rot-Gelb-Gestreifte Party.jpg
1901	Amana Rot	Stabtomate - Große, dunkelrote Fleischtomate von ca. 10 cm Durchmesser. Geschmack: Saftig und aromatisch. 	images/Amana_Rot.jpg
1902	Bertas Rote	Stabtomate - Ertragreiche, rote Stabtomate von etwa 1,9 m Höhe. Gute Sorte mit eher säuerlichem Geschmack. Relativ feste Frucht. Nicht ganz platzfest, daher unter Dach anbauen oder auf regelmäßige Wasserversorgung achten bzw. vor starken Regenfällen die noch nicht ganz reifen Früchte abnehmen.	images/BertasRote.jpg
1903	Domamu	Stabtomate - Mittelfrühe, leicht plattrunde, rote Fleischtomate, deren Früchte ein italienisches Flair ausstrahlen. Sehr gleichmäßig aufgebaute Frucht mit nur angedeuteten Rippen. Durchmesser etwas 65 bis75 mm. Höhe etwa 55 bis 60 mm. Gewicht ca.150 g.  Sehr schön geformt. Relativ gleichmäßige Sortierung. Saftig. Mittelhoher Wuchs. : Kaum Risse und Platzer.	images/Domamu.jpg
\.


--
-- Data for Name: tomatos_tomato_colors; Type: TABLE DATA; Schema: public; Owner: django
--

COPY tomatos_tomato_colors (id, tomato_id, tomatocolor_id) FROM stdin;
2430	1507	99
2431	1508	89
2432	1508	95
2433	1509	99
2434	1509	88
2435	1510	89
2436	1511	88
2437	1511	100
2438	1513	89
2439	1513	99
2440	1513	88
2441	1514	89
2442	1515	99
2443	1516	99
2444	1516	93
2445	1516	87
2446	1517	88
2447	1518	89
2448	1518	99
2449	1518	88
2450	1519	99
2451	1519	88
2452	1519	95
2453	1519	94
2454	1520	99
2455	1520	88
2456	1520	95
2457	1521	99
2458	1521	88
2459	1522	89
2460	1523	95
2461	1524	89
2462	1525	89
2463	1526	99
2464	1527	89
2465	1527	95
2466	1527	94
2467	1528	88
2468	1528	87
2469	1529	99
2470	1530	89
2471	1530	99
2472	1531	99
2473	1531	88
2474	1531	87
2475	1532	99
2476	1532	93
2477	1532	87
2478	1533	99
2479	1533	88
2480	1534	88
2481	1534	87
2482	1534	100
2483	1535	99
2484	1535	93
2485	1536	89
2486	1536	99
2487	1536	88
2488	1537	89
2489	1537	95
2490	1537	94
2491	1538	89
2492	1538	97
2493	1539	89
2494	1539	94
2495	1539	87
2496	1539	97
2497	1539	96
2498	1540	87
2499	1540	97
2500	1541	89
2501	1541	94
2502	1541	87
2503	1541	97
2504	1542	94
2505	1542	97
2506	1543	99
2507	1543	87
2508	1544	99
2509	1545	89
2510	1545	98
2511	1545	90
2512	1546	89
2513	1546	87
2514	1547	89
2515	1548	87
2516	1549	89
2517	1549	94
2518	1549	87
2519	1549	97
2520	1549	96
2521	1550	89
2522	1550	87
2523	1551	87
2524	1552	89
2525	1552	87
2526	1553	89
2527	1553	87
2528	1555	89
2529	1555	94
2530	1555	97
2531	1556	88
2532	1557	89
2533	1557	99
2534	1557	88
2535	1558	89
2536	1558	88
2537	1559	99
2538	1559	87
2539	1560	89
2540	1560	99
2541	1560	87
2542	1561	99
2543	1561	93
2544	1561	87
2545	1562	89
2546	1563	89
2547	1563	94
2548	1563	87
2549	1564	89
2550	1564	87
2551	1565	89
2552	1565	87
2553	1566	89
2554	1567	89
2555	1567	99
2556	1567	88
2557	1568	89
2558	1569	99
2559	1572	95
2560	1572	87
2561	1573	89
2562	1573	98
2563	1574	89
2564	1575	89
2565	1576	89
2566	1577	89
2567	1578	89
2568	1578	87
2569	1579	89
2570	1579	99
2571	1580	95
2572	1581	89
2573	1581	87
2574	1582	99
2575	1583	99
2576	1583	88
2577	1584	89
2578	1584	87
2579	1585	89
2580	1585	95
2581	1586	88
2582	1587	99
2583	1587	88
2584	1587	100
2585	1588	89
2586	1588	87
2587	1589	99
2588	1589	93
2589	1590	89
2590	1590	98
2591	1590	90
2592	1591	99
2593	1591	93
2594	1592	89
2595	1592	88
2596	1593	99
2597	1593	88
2598	1594	89
2599	1594	99
2600	1595	89
2601	1595	99
2602	1595	95
2603	1596	89
2604	1597	89
2605	1597	87
2606	1598	89
2607	1598	99
2608	1598	87
2609	1600	99
2610	1600	94
2611	1601	89
2612	1602	99
2613	1602	88
2614	1602	94
2615	1604	89
2616	1604	99
2617	1604	88
2618	1605	99
2619	1605	88
2620	1606	89
2621	1607	89
2622	1608	99
2623	1608	100
2624	1609	89
2625	1609	99
2626	1610	99
2627	1611	99
2628	1612	89
2629	1612	99
2630	1613	99
2631	1614	99
2632	1615	99
2633	1616	99
2634	1617	99
2635	1618	89
2636	1618	95
2637	1619	89
2638	1619	99
2639	1619	88
2640	1619	100
2641	1620	89
2642	1622	99
2643	1622	88
2644	1623	99
2645	1624	99
2646	1624	100
2647	1625	99
2648	1625	100
2649	1626	88
2650	1626	100
2651	1627	99
2652	1627	100
2653	1628	99
2654	1628	100
2655	1629	89
2656	1629	95
2657	1630	99
2658	1630	88
2659	1630	94
2660	1631	99
2661	1631	94
2662	1631	96
2663	1632	94
2664	1632	96
2665	1633	99
2666	1633	94
2667	1634	94
2668	1635	99
2669	1635	94
2670	1636	89
2671	1636	94
2672	1636	96
2673	1637	99
2674	1637	94
2675	1638	99
2676	1638	94
2677	1638	96
2678	1639	99
2679	1639	94
2680	1639	92
2681	1640	89
2682	1640	99
2683	1641	99
2684	1641	93
2685	1642	99
2686	1642	94
2687	1643	99
2688	1643	94
2689	1644	89
2690	1644	87
2691	1644	97
2692	1645	89
2693	1645	87
2694	1645	97
2695	1646	89
2696	1646	99
2697	1646	88
2698	1646	94
2699	1646	100
2700	1647	89
2701	1647	99
2702	1647	88
2703	1647	94
2704	1647	100
2705	1648	88
2706	1649	89
2707	1650	89
2708	1650	99
2709	1650	88
2710	1651	89
2711	1652	89
2712	1653	89
2713	1653	99
2714	1653	88
2715	1654	99
2716	1655	89
2717	1655	99
2718	1655	88
2719	1655	100
2720	1656	89
2721	1656	99
2722	1658	99
2723	1659	99
2724	1660	88
2725	1661	87
2726	1661	97
2727	1663	89
2728	1663	88
2729	1663	100
2730	1664	99
2731	1665	89
2732	1666	89
2733	1666	87
2734	1667	88
2735	1668	89
2736	1668	88
2737	1669	89
2738	1669	100
2739	1670	89
2740	1671	89
2741	1672	99
2742	1673	89
2743	1673	87
2744	1673	97
2745	1674	89
2746	1675	89
2747	1675	87
2748	1676	88
2749	1677	89
2750	1678	89
2751	1678	94
2752	1678	98
2753	1678	87
2754	1679	99
2755	1680	89
2756	1681	89
2757	1682	89
2758	1683	89
2759	1683	99
2760	1683	94
2761	1683	93
2762	1684	99
2763	1685	89
2764	1685	98
2765	1686	89
2766	1687	89
2767	1688	89
2768	1688	99
2769	1688	88
2770	1688	95
2771	1688	100
2772	1689	88
2773	1690	89
2774	1690	87
2775	1691	89
2776	1691	94
2777	1691	91
2778	1692	89
2779	1692	87
2780	1692	91
2781	1693	99
2782	1693	93
2783	1695	89
2784	1695	95
2785	1696	99
2786	1696	88
2787	1697	88
2788	1697	100
2789	1698	99
2790	1698	88
2791	1699	89
2792	1701	89
2793	1701	99
2794	1701	88
2795	1702	88
2796	1702	100
2797	1703	89
2798	1704	99
2799	1704	95
2800	1704	94
2801	1705	89
2802	1705	100
2803	1706	89
2804	1707	99
2805	1707	88
2806	1708	89
2807	1709	99
2808	1710	89
2809	1710	100
2810	1711	88
2811	1711	96
2812	1712	89
2813	1712	100
2814	1713	89
2815	1714	99
2816	1714	88
2817	1715	88
2818	1716	88
2819	1717	88
2820	1717	94
2821	1717	100
2822	1718	88
2823	1719	88
2824	1720	89
2825	1720	88
2826	1720	87
2827	1721	99
2828	1721	88
2829	1721	100
2830	1722	88
2831	1723	88
2832	1724	89
2833	1725	99
2834	1725	88
2835	1726	99
2836	1726	88
2837	1727	91
2838	1728	99
2839	1728	93
2840	1729	88
2841	1729	100
2842	1730	87
2843	1731	89
2844	1732	99
2845	1732	95
2846	1733	89
2847	1733	99
2848	1733	94
2849	1734	89
2850	1734	99
2851	1734	88
2852	1735	89
2853	1736	87
2854	1738	89
2855	1738	99
2856	1738	88
2857	1739	89
2858	1740	99
2859	1740	94
2860	1741	89
2861	1741	99
2862	1742	99
2863	1743	89
2864	1743	88
2865	1744	89
2866	1745	89
2867	1745	99
2868	1745	88
2869	1745	100
2870	1746	99
2871	1746	88
2872	1746	94
2873	1747	89
2874	1747	95
2875	1748	89
2876	1748	88
2877	1749	93
2878	1750	89
2879	1750	95
2880	1751	89
2881	1752	89
2882	1753	100
2883	1754	89
2884	1754	95
2885	1755	89
2886	1755	99
2887	1756	89
2888	1756	94
2889	1756	93
2890	1757	99
2891	1758	89
2892	1758	99
2893	1758	88
2894	1759	89
2895	1759	94
2896	1760	88
2897	1760	94
2898	1761	93
2899	1762	99
2900	1763	99
2901	1763	88
2902	1763	100
2903	1764	99
2904	1764	88
2905	1765	93
2906	1766	99
2907	1766	94
2908	1767	89
2909	1768	89
2910	1768	94
2911	1771	89
2912	1771	99
2913	1771	87
2914	1773	88
2915	1774	89
2916	1774	87
2917	1775	89
2918	1776	99
2919	1777	89
2920	1778	89
2921	1778	99
2922	1778	88
2923	1780	89
2924	1780	94
2925	1780	87
2926	1781	89
2927	1782	89
2928	1782	99
2929	1782	96
2930	1783	89
2931	1784	93
2932	1785	89
2933	1785	87
2934	1785	97
2935	1786	89
2936	1786	87
2937	1786	97
2938	1787	89
2939	1787	87
2940	1787	97
2941	1788	89
2942	1788	94
2943	1788	87
2944	1788	97
2945	1789	89
2946	1789	87
2947	1789	97
2948	1790	89
2949	1790	94
2950	1790	87
2951	1790	97
2952	1791	89
2953	1791	94
2954	1792	89
2955	1793	93
2956	1794	99
2957	1794	88
2958	1794	100
2959	1795	99
2960	1795	88
2961	1796	89
2962	1797	89
2963	1797	94
2964	1797	87
2965	1798	99
2966	1799	99
2967	1800	99
2968	1800	93
2969	1801	99
2970	1801	93
2971	1802	93
2972	1803	99
2973	1804	99
2974	1804	88
2975	1806	89
2976	1806	87
2977	1807	89
2978	1807	88
2979	1808	99
2980	1810	89
2981	1811	89
2982	1812	89
2983	1813	89
2984	1814	99
2985	1814	88
2986	1815	89
2987	1816	89
2988	1817	89
2989	1818	89
2990	1819	89
2991	1819	95
2992	1820	89
2993	1821	89
2994	1822	89
2995	1823	89
2996	1824	89
2997	1824	95
2998	1825	89
2999	1826	89
3000	1827	89
3001	1827	87
3002	1828	89
3003	1828	88
3004	1829	89
3005	1829	88
3006	1830	89
3007	1831	88
3008	1832	89
3009	1832	99
3010	1833	89
3011	1833	94
3012	1833	87
3013	1834	93
3014	1835	99
3015	1835	93
3016	1836	99
3017	1836	93
3018	1837	93
3019	1838	99
3020	1838	93
3021	1839	99
3022	1839	93
3023	1840	99
3024	1840	95
3025	1841	93
3026	1842	94
3027	1843	99
3028	1843	88
3029	1843	87
3030	1844	99
3031	1844	94
3032	1844	96
3033	1845	99
3034	1845	94
3035	1845	96
3036	1846	99
3037	1847	99
3038	1847	96
3039	1848	99
3040	1849	99
3041	1849	88
3042	1849	100
3043	1850	99
3044	1850	100
3045	1850	96
3046	1851	89
3047	1852	99
3048	1852	100
3049	1854	89
3050	1854	87
3051	1855	89
3052	1855	95
3053	1856	89
3054	1856	94
3055	1857	89
3056	1857	95
3057	1857	96
3058	1858	99
3059	1859	89
3060	1860	89
3061	1860	99
3062	1860	94
3063	1861	89
3064	1862	99
3065	1862	94
3066	1863	89
3067	1864	99
3068	1864	100
3069	1865	99
3070	1865	95
3071	1865	94
3072	1866	89
3073	1866	94
3074	1867	89
3075	1868	89
3076	1868	94
3077	1868	87
3078	1869	89
3079	1869	99
3080	1870	99
3081	1870	87
3082	1871	89
3083	1872	99
3084	1872	94
3085	1873	93
3086	1874	89
3087	1875	88
3088	1876	99
3089	1877	99
3090	1878	97
3091	1879	89
3092	1880	89
3093	1881	89
3094	1881	99
3095	1881	88
3096	1881	100
3097	1882	89
3098	1883	89
3099	1884	89
3100	1884	87
3101	1884	100
3102	1885	94
3103	1886	89
3104	1887	89
3105	1888	89
3106	1888	95
3107	1889	89
3108	1889	99
3109	1890	94
3110	1891	89
3111	1892	89
3112	1892	87
3113	1893	89
3114	1894	89
3115	1895	89
3116	1896	89
3117	1897	89
3118	1897	99
3119	1897	88
3120	1898	99
3121	1898	88
3122	1898	87
3123	1899	89
3124	1899	93
3125	1900	89
3126	1900	99
3127	1901	89
3128	1902	89
3129	1903	89
\.


--
-- Name: tomatos_tomato_colors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('tomatos_tomato_colors_id_seq', 3129, true);


--
-- Name: tomatos_tomato_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('tomatos_tomato_id_seq', 1903, true);


--
-- Data for Name: tomatos_tomato_types; Type: TABLE DATA; Schema: public; Owner: django
--

COPY tomatos_tomato_types (id, tomato_id, tomatotype_id) FROM stdin;
1952	1507	203
1953	1509	203
1954	1509	204
1955	1510	187
1956	1510	203
1957	1511	203
1958	1512	203
1959	1512	185
1960	1513	203
1961	1513	204
1962	1514	203
1963	1515	203
1964	1516	203
1965	1517	203
1966	1518	203
1967	1518	204
1968	1519	203
1969	1519	204
1970	1520	203
1971	1520	204
1972	1521	203
1973	1521	204
1974	1522	203
1975	1522	204
1976	1523	203
1977	1523	204
1978	1524	203
1979	1525	203
1980	1526	203
1981	1527	203
1982	1527	204
1983	1528	212
1984	1528	202
1985	1529	203
1986	1530	203
1987	1531	203
1988	1532	192
1989	1532	185
1990	1533	203
1991	1533	204
1992	1534	203
1993	1535	203
1994	1536	203
1995	1537	203
1996	1537	204
1997	1538	203
1998	1538	204
1999	1539	203
2000	1540	203
2001	1541	203
2002	1542	203
2003	1543	203
2004	1544	203
2005	1545	203
2006	1546	212
2007	1546	202
2008	1547	203
2009	1548	203
2010	1548	189
2011	1549	203
2012	1550	203
2013	1551	203
2014	1552	203
2015	1552	185
2016	1553	203
2017	1553	185
2018	1554	203
2019	1554	188
2020	1554	191
2021	1555	203
2022	1556	203
2023	1556	204
2024	1557	203
2025	1557	204
2026	1558	203
2027	1559	203
2028	1559	185
2029	1560	203
2030	1560	185
2031	1561	192
2032	1561	185
2033	1562	203
2034	1563	203
2035	1564	203
2036	1565	187
2037	1565	203
2038	1566	203
2039	1567	203
2040	1567	188
2041	1568	203
2042	1569	203
2043	1571	203
2044	1572	203
2045	1573	203
2046	1573	194
2047	1573	204
2048	1574	203
2049	1574	193
2050	1574	204
2051	1575	203
2052	1576	203
2053	1577	203
2054	1578	203
2055	1579	203
2056	1580	203
2057	1581	203
2058	1581	189
2059	1582	203
2060	1582	204
2061	1583	203
2062	1583	204
2063	1584	203
2064	1585	203
2065	1585	204
2066	1586	203
2067	1587	203
2068	1587	204
2069	1588	203
2070	1589	203
2071	1589	204
2072	1590	203
2073	1591	203
2074	1592	203
2075	1593	203
2076	1593	204
2077	1594	203
2078	1594	204
2079	1595	203
2080	1596	203
2081	1597	203
2082	1597	204
2083	1598	203
2084	1599	203
2085	1600	203
2086	1600	204
2087	1601	203
2088	1601	185
2089	1602	203
2090	1602	204
2091	1603	203
2092	1603	204
2093	1604	203
2094	1605	203
2095	1606	203
2096	1607	203
2097	1608	203
2098	1608	204
2099	1609	203
2100	1609	213
2101	1610	187
2102	1610	203
2103	1611	203
2104	1612	203
2105	1612	188
2106	1613	203
2107	1613	185
2108	1614	203
2109	1614	185
2110	1615	192
2111	1615	203
2112	1615	187
2113	1616	203
2114	1616	185
2115	1617	203
2116	1617	211
2117	1618	203
2118	1619	203
2119	1619	204
2120	1620	203
2121	1621	203
2122	1622	203
2123	1622	204
2124	1623	203
2125	1623	211
2126	1624	192
2127	1624	203
2128	1624	195
2129	1625	203
2130	1625	185
2131	1626	203
2132	1627	203
2133	1628	203
2134	1628	211
2135	1629	203
2136	1630	203
2137	1630	183
2138	1631	203
2139	1631	204
2140	1632	203
2141	1632	204
2142	1633	203
2143	1634	212
2144	1635	203
2145	1635	208
2146	1636	212
2147	1636	202
2148	1637	203
2149	1637	204
2150	1638	203
2151	1638	204
2152	1639	203
2153	1640	203
2154	1641	203
2155	1641	204
2156	1642	203
2157	1643	203
2158	1643	204
2159	1644	203
2160	1645	203
2161	1646	203
2162	1647	203
2163	1648	203
2164	1648	213
2165	1649	203
2166	1650	203
2167	1650	204
2168	1651	203
2169	1652	203
2170	1653	203
2171	1653	204
2172	1654	203
2173	1654	208
2174	1655	212
2175	1656	203
2176	1656	197
2177	1657	192
2178	1657	203
2179	1658	203
2180	1659	203
2181	1660	203
2182	1661	203
2183	1662	203
2184	1663	203
2185	1664	203
2186	1665	192
2187	1665	203
2188	1667	188
2189	1668	203
2190	1668	204
2191	1669	203
2192	1669	204
2193	1670	203
2194	1672	203
2195	1673	203
2196	1674	203
2197	1675	203
2198	1676	203
2199	1677	203
2200	1678	203
2201	1678	204
2202	1679	203
2203	1679	200
2204	1679	204
2205	1680	203
2206	1681	203
2207	1681	204
2208	1682	203
2209	1682	204
2210	1683	203
2211	1684	203
2212	1685	203
2213	1686	204
2214	1687	204
2215	1688	203
2216	1689	203
2217	1690	203
2218	1692	203
2219	1693	203
2220	1693	204
2221	1694	203
2222	1695	203
2223	1696	203
2224	1697	203
2225	1697	204
2226	1698	203
2227	1699	203
2228	1700	203
2229	1701	203
2230	1701	204
2231	1702	203
2232	1703	203
2233	1703	204
2234	1704	203
2235	1704	204
2236	1705	203
2237	1706	203
2238	1707	203
2239	1707	204
2240	1708	203
2241	1708	204
2242	1709	203
2243	1710	203
2244	1711	203
2245	1712	203
2246	1713	203
2247	1713	207
2248	1714	203
2249	1715	203
2250	1715	185
2251	1716	203
2252	1717	203
2253	1717	184
2254	1718	203
2255	1719	203
2256	1720	192
2257	1720	203
2258	1720	187
2259	1720	196
2260	1721	203
2261	1722	203
2262	1722	184
2263	1723	203
2264	1724	203
2265	1726	195
2266	1727	203
2267	1728	195
2268	1728	185
2269	1729	185
2270	1730	203
2271	1730	201
2272	1731	204
2273	1732	203
2274	1734	211
2275	1735	203
2276	1735	204
2277	1736	203
2278	1738	203
2279	1739	203
2280	1740	203
2281	1741	203
2282	1742	203
2283	1743	203
2284	1743	204
2285	1744	203
2286	1745	203
2287	1745	185
2288	1745	204
2289	1746	203
2290	1746	204
2291	1747	203
2292	1748	203
2293	1748	211
2294	1749	203
2295	1750	203
2296	1751	212
2297	1751	202
2298	1752	195
2299	1752	203
2300	1753	203
2301	1753	184
2302	1754	203
2303	1755	203
2304	1756	203
2305	1757	184
2306	1758	203
2307	1759	191
2308	1759	188
2309	1760	185
2310	1761	203
2311	1762	203
2312	1763	203
2313	1764	203
2314	1765	209
2315	1766	209
2316	1767	203
2317	1768	203
2318	1769	203
2319	1769	185
2320	1770	203
2321	1771	203
2322	1772	203
2323	1773	203
2324	1774	203
2325	1775	186
2326	1776	186
2327	1777	203
2328	1778	204
2329	1780	203
2330	1781	203
2331	1782	203
2332	1783	187
2333	1783	203
2334	1784	187
2335	1784	203
2336	1785	203
2337	1787	204
2338	1788	204
2339	1789	203
2340	1789	204
2341	1790	204
2342	1791	203
2343	1791	198
2344	1795	204
2345	1796	203
2346	1797	204
2347	1798	203
2348	1799	205
2349	1799	206
2350	1800	203
2351	1801	203
2352	1801	204
2353	1802	203
2354	1803	205
2355	1803	206
2356	1804	184
2357	1805	203
2358	1805	204
2359	1806	203
2360	1807	185
2361	1808	185
2362	1810	208
2363	1811	203
2364	1812	203
2365	1813	203
2366	1814	204
2367	1815	203
2368	1815	204
2369	1816	192
2370	1816	187
2371	1816	195
2372	1818	207
2373	1819	204
2374	1820	203
2375	1820	185
2376	1821	185
2377	1822	204
2378	1823	185
2379	1824	203
2380	1825	203
2381	1826	203
2382	1828	187
2383	1829	203
2384	1830	203
2385	1831	204
2386	1832	204
2387	1833	203
2388	1833	204
2389	1834	203
2390	1834	201
2391	1835	203
2392	1836	203
2393	1836	204
2394	1837	190
2395	1838	204
2396	1839	203
2397	1840	204
2398	1841	204
2399	1842	203
2400	1843	203
2401	1846	184
2402	1848	203
2403	1850	203
2404	1851	203
2405	1851	204
2406	1852	203
2407	1853	204
2408	1854	210
2409	1854	185
2410	1855	203
2411	1855	204
2412	1856	204
2413	1857	203
2414	1858	192
2415	1858	203
2416	1858	187
2417	1859	203
2418	1860	203
2419	1860	204
2420	1861	203
2421	1862	203
2422	1863	203
2423	1864	203
2424	1865	203
2425	1865	204
2426	1866	203
2427	1867	203
2428	1868	187
2429	1869	203
2430	1870	187
2431	1870	203
2432	1871	203
2433	1873	185
2434	1874	212
2435	1875	203
2436	1875	204
2437	1876	203
2438	1877	203
2439	1878	203
2440	1878	213
2441	1879	203
2442	1880	212
2443	1881	203
2444	1881	204
2445	1882	192
2446	1883	203
2447	1884	203
2448	1885	203
2449	1886	203
2450	1887	203
2451	1889	203
2452	1890	203
2453	1890	204
2454	1891	192
2455	1891	203
2456	1891	185
2457	1891	195
2458	1892	203
2459	1892	189
2460	1893	203
2461	1893	188
2462	1894	199
2463	1894	212
2464	1895	203
2465	1895	204
2466	1896	212
2467	1897	211
2468	1898	203
2469	1899	203
2470	1900	185
2471	1901	203
2472	1901	204
2473	1902	203
2474	1903	203
2475	1903	204
\.


--
-- Name: tomatos_tomato_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('tomatos_tomato_types_id_seq', 2475, true);


--
-- Data for Name: tomatos_tomatocolor; Type: TABLE DATA; Schema: public; Owner: django
--

COPY tomatos_tomatocolor (id, name) FROM stdin;
87	braun
88	orange
89	rot
90	blau
91	purpur
92	bronze
93	weiß
94	grün
95	rosa
96	ocker
97	schwarz
98	lila
99	gelb
100	gold
\.


--
-- Name: tomatos_tomatocolor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('tomatos_tomatocolor_id_seq', 100, true);


--
-- Data for Name: tomatos_tomatotype; Type: TABLE DATA; Schema: public; Owner: django
--

COPY tomatos_tomatotype (id, name) FROM stdin;
183	Lagertomate
184	Flaschentomate
185	Obsttomate
186	Balkontomate
187	Wildtomate
188	Paprikatomate
189	Ketschuptomate
190	Ochsenherztomate
191	Fülltomate
192	Spaliertomate
193	Riesentomate
194	Kochtomate
195	Johannisbeertomate
196	Kulturtomate
197	Kirschstabtomate
198	Minitomate
199	Stocktomate
200	Delikatesstomate
201	Pfirsichtomate
202	Ampeltomate
203	Stabtomate
204	Fleischtomate
205	Naschtomate
206	Pflaumentomate
207	Marktomate
208	Cocktailtomate
209	Cherrytomate
210	Zuckertomate
211	Riesenfleischtomate
212	Buschtomate
213	Kirschtomate
\.


--
-- Name: tomatos_tomatotype_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('tomatos_tomatotype_id_seq', 213, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: tomatos_tomato_colors tomatos_tomato_colors_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY tomatos_tomato_colors
    ADD CONSTRAINT tomatos_tomato_colors_pkey PRIMARY KEY (id);


--
-- Name: tomatos_tomato tomatos_tomato_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY tomatos_tomato
    ADD CONSTRAINT tomatos_tomato_pkey PRIMARY KEY (id);


--
-- Name: tomatos_tomato_types tomatos_tomato_types_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY tomatos_tomato_types
    ADD CONSTRAINT tomatos_tomato_types_pkey PRIMARY KEY (id);


--
-- Name: tomatos_tomatocolor tomatos_tomatocolor_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY tomatos_tomatocolor
    ADD CONSTRAINT tomatos_tomatocolor_pkey PRIMARY KEY (id);


--
-- Name: tomatos_tomatotype tomatos_tomatotype_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY tomatos_tomatotype
    ADD CONSTRAINT tomatos_tomatotype_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX auth_group_name_a6ea08ec_like ON auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX auth_user_groups_group_id_97559544 ON auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX auth_user_username_6821ab7c_like ON auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX django_session_expire_date_a5c62663 ON django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX django_session_session_key_c0390e0f_like ON django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: tomatos_tomato_colors tomatos_tomato_colors_tomato_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY tomatos_tomato_colors
    ADD CONSTRAINT tomatos_tomato_colors_tomato_id_fkey FOREIGN KEY (tomato_id) REFERENCES tomatos_tomato(id);


--
-- Name: tomatos_tomato_colors tomatos_tomato_colors_tomatocolor_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY tomatos_tomato_colors
    ADD CONSTRAINT tomatos_tomato_colors_tomatocolor_id_fkey FOREIGN KEY (tomatocolor_id) REFERENCES tomatos_tomatocolor(id);


--
-- Name: tomatos_tomato_types tomatos_tomato_types_tomato_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY tomatos_tomato_types
    ADD CONSTRAINT tomatos_tomato_types_tomato_id_fkey FOREIGN KEY (tomato_id) REFERENCES tomatos_tomato(id);


--
-- Name: tomatos_tomato_types tomatos_tomato_types_tomatotype_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY tomatos_tomato_types
    ADD CONSTRAINT tomatos_tomato_types_tomatotype_id_fkey FOREIGN KEY (tomatotype_id) REFERENCES tomatos_tomatotype(id);


--
-- PostgreSQL database dump complete
--

