--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

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
-- Name: sffilms; Type: TABLE; Schema: public; Owner: vagrant; Tablespace: 
--

CREATE TABLE sffilms (
    id integer NOT NULL,
    title text,
    release_year integer,
    director text,
    genre text
);


ALTER TABLE public.sffilms OWNER TO vagrant;

--
-- Name: sffilms_id_seq; Type: SEQUENCE; Schema: public; Owner: vagrant
--

CREATE SEQUENCE sffilms_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sffilms_id_seq OWNER TO vagrant;

--
-- Name: sffilms_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: vagrant
--

ALTER SEQUENCE sffilms_id_seq OWNED BY sffilms.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: vagrant
--

ALTER TABLE ONLY sffilms ALTER COLUMN id SET DEFAULT nextval('sffilms_id_seq'::regclass);


--
-- Data for Name: sffilms; Type: TABLE DATA; Schema: public; Owner: vagrant
--

COPY sffilms (id, title, release_year, director, genre) FROM stdin;
1	180	2011	Jayendra	Drama
2	24 Hours on Craigslist	2005	Michael Ferris Gibson	Documentary
3	48 Hours	1982	Walter Hill	Action
4	50 First Dates	2004	Peter Segal	Comedy
5	About a Boy	2014	Mark J. Kunerth	Comedy
6	After the Thin Man	1936	W.S. Van Dyke	Comedy
7	A Jitney Elopement	1915	Charles Chaplin	Short/Comedy
8	Alcatraz	2012	J.J. Abrams	Action
9	Alexander's Ragtime Band	1938	Henry King	Drama
10	All About Eve	1950	Joseph L. Mankiewicz	Drama
11	American Graffiti	1973	George Lucas	Comedy
12	American Yearbook	2004	Brian Ging	Romance
13	A Night Full of Rain	1978	Lina Wertmuller	Drama
14	Another 48 Hours	1990	Walter Hill	Action
15	Around the Fire	1998	John Jacobsen	Drama
16	A Smile Like Yours	1997	Keith Samples	Comedy
17	Attack of the Killer Tomatoes	1978	John DeBello	Comedy
18	A View to a Kill	1985	John Glen	Action
19	Babies	2010	Thomas Balmes	Documentary
20	Barbary Coast	1935	Howard Hawks	Adventure
21	Basic Instinct	1992	Paul Verhoeven	Mystery
22	Beaches	1988	Garry Marshall	Comedy
23	Bedazzled	2000	Harold Ramis	Comedy
24	Bee Season	2005	Scott McGehee	Drama
25	Bicentennial Man	1999	Chris Columbus	Drama
26	Big Eyes	2014	Tim Burton	Biography
27	Big Sur	2012	Micael Polish	Drama
28	Big Touble in Little China	1986	John Carpenter	Action
29	Birdman of Alcatraz	1962	John Frankenheimer	Biography
30	Blue Jasmine	2013	Woody Allen	Comedy
31	Boys and Girls	2000	Robert Iscove	Comedy
32	Broken-A Modern Love Story	2010	Ryan K. Whiting	Unknown
33	Bullitt	1968	Peter Yates	Action
34	Burglar	1987	Hugh Wilson	Comedy
35	By Hook or By Crook	2001	Harriet Dodge & Silas Howard	Crime
36	Can't Stop the Music	1980	Nancy Walker	Comedy
37	Casualties of War	1989	Brian DePalma	Drama
38	Chan is Missing	1982	Wayne Wang	Drama
39	Cherish	2002	Finn Taylor	Comedy
40	Chu Chu and the Philly Flash	1981	David Lowell Rich	Comedy
41	City of Angels	1998	Brad Silberling	Drama
42	Class Action	1991	Michael Apted	Drama
43	Common Threads: Stories From the Quilt	1989	Rob Epstein	Documentary
44	Confessions of a Burning Man	2003	Paul Barnett	Documentary
45	Copycat	1995	Jon Amiel	Crime
46	Crackers	1984	Louis Malle	Adventure
47	CSI: NY- episode 903	2012	Vikki Williams	Short
48	Dark Passage	1947	Delmer Daves	Film-Noir
49	Dawn of the Planet of the Apes	2014	Matt Reeves	Action
50	Days of Wine and Roses	1962	Blake Edwards	Drama
51	Desperate Measures	1998	Barbet Schroeder	Action
52	Dim Sum: A Little Bit of Heart	1986	Wayne Wang	Comedy
53	Dirty Harry	1971	Don Siegel	Action
54	D.O.A	1950	Rudolph Mate	Film-Noir
55	Doctor Doolittle	1998	Betty Thomas	Comedy
56	Dopamine	2003	Mark Decena	Comedy
57	Down Periscope	1996	David S. Ward	Comedy
58	Dr. Doolittle 2	2001	Steve Carr	Crime
59	Dream for an Insomniac	1998	Tiffanie DeBartolo	Romance
60	Dream with the Fishes	1997	Finn Taylor	Comedy
61	Dying Young	1991	Joel Schumacher	Drama
62	Edtv	1999	Ron Howard	Comedy
63	Escape From Alcatraz	1979	Donald Siegel	Action
64	Experiment in Terror	1962	Blake Edwards	Crime
65	Faces of Death	1978	Conan Le Cilaire	Documentary
66	Family Plot	1976	Alfred Hitchcock	Comedy
67	Fandom	2004	Nicholas Tucker	Comedy
68	Fathers' Day	1997	Ivan Reitman	Comedy
69	Fat Man and Little Boy	1989	Roland Joffe	Biography
70	Fearless	1993	Peter Weir	Drama
71	Final Analysis	1992	Phil Joanou	Drama
72	Flower Drum Song	1961	Henry Koster	Comedy
73	Flubber	1997	Les Mayfield	Comedy
74	Forrest Gump	1994	Robert Zemeckis	Drama
75	Forty Days and Forty Nights	2002	Michael Lehmann	Comedy
76	Foul Play	1978	Colin Higgins	Comedy
77	Freebie and the Bean	1974	Richard Rush	Action
78	Gentleman Jim	1942	Raoul Walsh	Biography
79	George of the Jungle	1997	Sam Weisman	Action
80	Getting Even with Dad	1994	Howard Deutch	Comedy
81	God is a Communist?* (show me heart universe)	2010	Jon Poznanter	Comedy
82	Godzilla	2014	Gareth Edwards	Action
83	Golden Gate	1994	John Madden	Crime
84	Golden Gate	1994	Howard Deutch	Crime
85	Greed	1924	Eric von Stroheim 	Drama
86	Groove	2000	Greg Harrison	Drama
87	Guess Who's Coming to Dinner	1967	Stanley Kramer	Drama
88	Haiku Tunnel	2001	Jakob Kornbluth & Josh Kornbluth	Comedy
89	Happy Gilmore	1996	Dennis Dugan	Comedy
90	Hard to Hold	1984	Larry Peerce	Drama
91	Harold and Maude	1971	Hal Ashby	Comedy
92	Heart and Souls	1994	Tomas Gislason	Comedy
93	Heart Beat	1980	John Byrum	Drama
94	Hello Frisco, Hello	1943	Bruce Humberstone	Comedy
95	Hemingway & Gelhorn	2011	Philip Kaufman	Biography
96	Herbie Rides Again	1974	Robert Stevenson	Comedy
97	Hereafter	2009	Clint Eastwood	Drama
98	High Anxiety	1977	Mel Brooks	Comedy
99	High Crimes	1977	Mel Brooks	Unknown
100	High Crimes	2002	Carl Franklin	Unknown
101	Homeward Bound II: Lost in San Francisco	1996	David R. Ellis	Adventure
102	House of Sand and Fog	2003	Vadim Perelman	Drama
103	How Stella Got Her Groove Back	1998	Kevin Rodney Sullivan	Drama
104	Hulk	2003	Ang Lee	Action
105	Indiana Jones and the Last Crusade	1989	Steven Spielberg	Action
106	Innerspace	1987	Joe Dante	Adventure
107	Interview With The Vampire	1994	Neil Jordan	Horror
108	Invasion of the Body Snatchers	1978	Philip Kaufman	Horror
109	I Remember Mama	1948	George Stevens	Drama
110	I's	2011	Chris Edgette	Adventure
111	It Came From Beneath the Sea	1955	Robert Gordon	Fantasy 
112	Jack	1996	Francis Ford Coppola	Comedy
113	Jade	1995	William Friedkin	Action
114	Jagged Edge	1985	Richard Marquand	Crime
115	James and the Giant Peach	1996	Henry Selick	Animation
116	Joy Luck Club	1993	Wayne Wang	Drama
117	Julie and Jack	2003	James Nguyen	Romance
118	Junior	1994	Ivan Reitman	Comedy
119	Just Like Heaven	2005	Mark Waters	Comedy
120	Just One Night	2000	Alan Jacobs	Comedy
121	Kamikaze Hearts	1986	Juliet Bashore	Drama
122	Knife Fight	2012	Bill Guttentag	Drama
123	Live Nude Girls Unite	2000	Vicky Funari	Documentary
124	Looking	2014	Andrew Haigh	Comedy
125	Love & Taxes	2011	Jacob Kornbluth	Unknown
126	Magnum Force	1973	Ted Post	Action
127	Marnie	1964	Alfred Hitchcock	Drama
128	Maxie	1985	Paul Aaron	Comedy
129	Memoirs of an Invisible Man	1992	John Carpenter	Comedy
130	Metro	1997	Thomas Carter	Action
131	Midnight Lace	1960	David Miller	Thriller
132	Milk	2008	Gus Van Sant	Biography
133	Mission (aka City of Bars)	2001	Loren Marsh	Unknown
134	Mona Lisa Smile	2003	Mike Newell	Drama
135	Mother	1996	Albert Brooks	Comedy
136	Mrs. Doubtfire	1993	Chris Columbus	Comedy
137	Murder in the First	1995	Marc Rocco	Unknown
138	Murder in the First	2014	Steven Bochco	Crime
139	My Reality	2011	Marcia Kimpton	Documentary
140	Need For Speed	2014	Scott Waugh	Action
141	Never Die Twice	2001	Sean A.F. Scott	Sci-Fi
142	Night of Henna	2005	Hassan Zee	Comedy
143	Nina Takes a Lover	1994	Alan Jacobs	Comedy
144	Nine Months	1995	Chris Columbus	Comedy
145	Nine to Five	1980	Colin Higgins	Comedy
146	Nora Prentiss	1947	Vincent Sherman	Drama
147	On the Beach	1959	Stanley Kramer	Drama
148	On the Road	2010	Walter Salles	Unknown
149	Pacific Heights	1990	John Schlesinger	Mystery
150	Pal Joey	1957	George Sidney	Drama
151	Panther	1995	Mario Van Peebles	Drama
152	Parks and Recreation	2014	Dean Holland	Comedy
153	Patch Adams	1998	Tom Shadyac	Biography
154	Patty Hearst	1988	Paul Schrader	Biography
155	Petulia	1968	Richard Lester	Drama
156	Phenomenon	1996	Jon Turteltaub	Drama
157	Playing Mona Lisa	2000	Matthew Huffman	Comedy
158	Play it Again, Sam	1972	Herbert Ross	Comedy
159	Pleasure of His Company	1961	George Seaton	Comedy
160	Point Blank	1967	John Boorman	Crime
161	Pretty Woman	1990	Garry Marshall	Comedy
162	Psych-Out	1968	Richard Rush	Drama
163	Quicksilver	1986	Thomas Michael Donnelly	Crime
164	Quitters	2014	Noah Pritzker	Comedy
165	Raising Cain	1992	Brian DePalma	Crime
166	Red Diaper Baby	2004	Doug Pray	Comedy
167	Red Widow	2013	Alon Aranya	Drama
168	Rent	2005	Chris Columbus	Drama
169	Rollerball	2002	John McTiernan	Action
170	Romeo Must Die	2000	Andrzej Bartkowiak	Action
171	San Francisco	1936	W.S. Van Dyke	Drama
172	Sausalito	2000	Andrew Lau	Romance
173	Serendipity	2001	Peter Chelsom	Comedy
174	Serial	1980	Bill Persky	Comedy
175	Seven Girlfriends	1999	Paul Lazarus	Comedy
176	Shadow of the Thin Man	1941	W.S. Van Dyke	Comedy
177	Shattered	1991	Wolfgang Petersen	Crime
178	Shoot the Moon	1982	Alan Parker	Drama
179	Sister Act	1992	Emile Ardolino	Comedy
180	Sister Act 2: Back in the Habit	1993	Bill Duke	Comedy
181	Sneakers	1992	Phil Alden Robinson	Comedy
182	So I Married an Axe Murderer	1993	Thomas Schlamme	Comedy
183	Sphere	1998	Barry Levinson	Drama
184	Star Trek II : The Wrath of Khan	1982	Nicholas Meyer	Action
185	Star Trek IV: The Voyage Home	1986	Leonard Nimoy	Adventure
186	Star Trek VI: The Undiscovered County	1991	Nicholas Meyer	Action
187	Stigmata	1999	Rupert Wainwright	Horror
188	Street Music	1981	Jenny Bowen	Drama
189	Sudden Fear	1952	David Miller	Film-Noir
190	Sudden Impact	1983	Clint Eastwood	Action
191	Superman	1978	Richard Donner	Action
192	Susan Slade	1961	Delmer Daves	Drama
193	Sweet November	2001	Pat O'Connor	Drama
194	Swing	2003	Martin Guigui	Comedy
195	Swingin' Along	1961	Charles Barton	Comedy
196	Take the Money and Run	1969	Woody Allen	Comedy
197	The Assassination of Richard Nixon	2004	Niels Mueller	Biography
198	The Bachelor	1999	Gary Sinyor	Comedy
199	The Birds	1963	Alfred Hitchcock	Horror
200	The Bridge	2006	Eric Steel	Documentary
201	The Caine Mutiny	1954	Edward Dmytryk	Drama
202	The Californians	2005	Jonathan Parker	Drama
203	The Candidate	1972	Michael Ritchie	Comedy
204	The Competiton	1980	Joel Oliansky	Drama
205	The Conversation	1974	Francis Ford Coppola	Drama
206	The Core	2003	John Amiel	Action
207	The Dead Pool	1988	Buddy Van Horn	Action
208	The Diary of a Teenage Girl	2015	Marielle Heller	Drama
209	The Doctor	1991	Randa Haines	Drama
210	The Doors	1991	Oliver Stone	Biography
211	The Enforcer	1976	James Fargo	Action
212	The Fan	1996	Tony Scott	Action
213	The Fog of War	2003	Errol Morris	Documentary
214	The Game	1997	David Fincher	Drama
215	The Graduate	1967	Mike Nichols	Comedy
216	The House on Telegraph Hill	1951	Robert Wise	Crime
217	The Internship	2013	Shawn Levy	Comedy
218	The Jazz Singer	1927	Alan Crosland	Drama
219	The Lady from Shanghai	1947	Orson Welles	Crime
220	The Last of the Gladiators	1988	Martin Jay Sadoff	Documentary
221	The Laughing Policeman	1973	Stuart Rosenberg	Crime
222	The Lineup	1958	Don Siegel	Crime
223	The Love Bug	1968	Robert Stevenson	Comedy
224	The Maltese Falcon	1941	John Huston	Drama
225	The Master	2012	Paul Thomas Anderson	Drama
226	The Matrix	1999	The Wachowski Brothers	Action
227	The Net	1995	Irwin Winkler	Action
228	The Nightmare Before Christmas	1993	Henry Selick	Animation
229	The Organization	1971	Don Medford	Action
230	The Other Sister	1999	Garry Marshall	Comedy
231	The Parent Trap	1998	Nancy Meyers	Adventure
232	The Presidio	1988	Peter Hyams	Action
233	The Princess Diaries	2001	Garry Marshall	Comedy
234	The Pursuit of Happyness	2006	Steven Conrad	Biography
235	The Right Stuff	1983	Philip Kaufman	Adventure
236	The Rock	1996	Michael Bay	Action
237	The Sweetest Thing	2002	Roger Kumble	Comedy
238	The Ten Commandments	1923	Cecil B. DeMille	Adventure
239	The Times of Harvey Milk	1984	Rob Epstein	Documentary
240	The Towering Inferno	1974	John Guillermin	Action
241	The Wedding Planner	2001	Adam Shankman	Comedy
242	The Woman In Red	1984	Gene Wilder	Comedy
243	They Call Me MISTER Tibbs	1970	Gordon Douglas	Crime
244	The Zodiac	2005	Alexander Bulkley	Crime
245	Thief of Hearts	1984	Douglas Day Stewart	Drama
246	Time After Time	1979	Nicholas Meyer	Adventure
247	Tin Cup	1996	Ron Shelton	Comedy
248	To the Ends of the Earth	1948	Robert Stevenson	Crime
249	True Believer	1989	Joseph Ruben	Drama
250	Tucker: The Man and His Dreams	1988	Francis Ford Coppola	Biography
251	Tweek City	2005	Eric G. Johnson	Drama
252	Twisted	2004	Philip Kaufman	Crime
253	Under the Tuscan Sun	2003	Audrey Wells	Comedy
254	Until the End of the World	1991	Wim Wenders	Drama
255	Vegas in Space	1991	Phillip R. Ford	Sci-Fi
256	Vertigo	1958	Alfred Hitchcock	Mystery
257	What Dreams May Come	1998	Vincent Ward	Drama
258	What's Up Doc?	1972	Peter Bogdanovich	Comedy
259	What the Bleep Do We Know	2004	William Arntz	Documentary
260	When a Man Loves a Woman	1994	Luis Mandoki	Drama
261	Woman on the Run	1950	Norman Foster	Film-Noir
262	Woman on Top	2000	Fina Torres	Comedy
263	Yours, Mine and Ours	1968	Melville Shavelson	Comedy
264	Zodiac	2007	David Fincher	Crime
\.


--
-- Name: sffilms_id_seq; Type: SEQUENCE SET; Schema: public; Owner: vagrant
--

SELECT pg_catalog.setval('sffilms_id_seq', 1, false);


--
-- Name: sffilms_pkey; Type: CONSTRAINT; Schema: public; Owner: vagrant; Tablespace: 
--

ALTER TABLE ONLY sffilms
    ADD CONSTRAINT sffilms_pkey PRIMARY KEY (id);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

