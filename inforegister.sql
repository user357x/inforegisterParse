--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.2
-- Dumped by pg_dump version 9.6.2

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
-- Name: orgs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE orgs (
    id bigint NOT NULL,
    body jsonb,
    file character varying,
    region character varying
);


ALTER TABLE orgs OWNER TO postgres;

--
-- Name: orgs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE orgs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE orgs_id_seq OWNER TO postgres;

--
-- Name: orgs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE orgs_id_seq OWNED BY orgs.id;


--
-- Name: orgs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY orgs ALTER COLUMN id SET DEFAULT nextval('orgs_id_seq'::regclass);


--
-- Data for Name: orgs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY orgs (id, body, file, region) FROM stdin;
16282	{"name": "KIVIÕLI KEEMIATÖÖSTUSE OÜ", "email": "info@keemiatoostus.ee", "phone": "(+372)6050337", "sphere": "Põlevkivi kaevandamine jm toornafta tootmine", "address": "Ida-Virumaa, Kiviõli, Turu 3, 43125"}	OU	all
16283	{"name": "EASTMAN SPECIALTIES OÜ", "email": "ggismatullin@eastman.com, jmishkins@eastman.com, jmishkins@velsicol.ee", "phone": "(+372)3325900, (+372)3325903, (+372)3375029, (+372)5097569", "sphere": "Muude orgaaniliste põhikemikaalide tootmine", "address": "Ida-Virumaa, Kohtla-Järve, Uus Tehase 8, 30328"}	OU	all
16284	{"name": "VKG ENERGIA OÜ", "email": "andres.veske@vkg.ee, janes@vkg.ee, kuznets@vkg.ee, vkgenergia@vkg.ee", "phone": "(+372)3324200, (+372)3342424, (+372)3342560, (+372)3347476", "sphere": "Tööstusgaaside tootmine", "address": "Ida-Virumaa, Kohtla-Järve, Järveküla tee 14, 30328"}	OU	all
16285	{"name": "KIVIÕLI KEEMIATÖÖSTUSE VARAD OÜ", "email": "info@keemiatoostus.ee, info@tammeauto.ee, sveta@tammeauto.ee", "phone": "(+372)3357365, (+372)3359623, (+372)3370384", "sphere": "Põlevkivi kaevandamine jm toornafta tootmine", "address": "Ida-Virumaa, Kiviõli, Turu 3, 43125"}	OU	all
16286	{"name": "SCANFIL OÜ", "email": "kadi.karula@scanfil.com, kadi.karula@scanfil.ee, scanfil@scanfil.ee", "phone": "(+372)4426800, (+372)4451257, (+372)56919670, (+372)6307800", "sphere": "Elektronkomponentide tootmine", "address": "Pärnumaa, Pärnu, Vana-Sauga 40, 80044"}	OU	all
16287	{"name": "APTEEKIDE KOOSTÖÖ HULGIMÜÜK OÜ", "email": "maikki.lemetti@apotheka.ee", "phone": "(+372)7371636, (+372)7371640", "sphere": "Muude kindlate kaupade vahendamine", "address": "Tartumaa, Tartu, Aardla 13, 50112"}	OU	all
16288	{"name": "VKG KAEVANDUSED OÜ", "email": "toomas.pold@vkg.ee, vkgkaevandused@vkg.ee", "phone": "(+372)3324200, (+372)3342776", "sphere": "Põlevkivi kaevandamine jm toornafta tootmine", "address": "Ida-Virumaa, Kohtla-Järve, Järveküla tee 14, 30328"}	OU	all
16289	{"name": "MARK OIL OÜ", "email": "info@markoil.ee", "phone": "(+372)3356113, (+372)4455212, (+372)6012785, (+372)6728068, (+372)7308200", "sphere": "Mootorikütuse hulgimüük", "address": "Tartumaa, Tartu, Anne 1-82, 50604"}	OU	all
16290	{"name": "EESTI VILJASALV OÜ", "email": "margit@eviljasalv.ee, viljasalv@eviljasalv.ee", "phone": "(+372)53493800, (+372)56643235, (+372)7402220, (+372)7766976", "sphere": "Teravilja, töötlemata tubaka, seemnete ja loomasööda hulgimüük", "address": "Tartumaa, Tartu, Väike-Kaar 33c, 50406"}	OU	all
16291	{"name": "AVENA NORDIC GRAIN OÜ", "email": "info@ang.ee", "phone": null, "sphere": "Teravilja, töötlemata tubaka, seemnete ja loomasööda hulgimüük", "address": "Järvamaa, Türi, Tehnika 3, 72213"}	OU	all
16292	{"name": "LÕUNAKESKUS OÜ", "email": "info@lounakeskus.com, infopunkt@lounakeskus.com", "phone": "(+372)7315500, (+372)7425122", "sphere": "Mitmesuguste erinevate kaupade vahendamine", "address": "Tartumaa, Tartu, Viljandi mnt 13, 50412"}	OU	all
16293	{"name": "REVAL-OIL OÜ", "email": "mare@markoil.ee", "phone": "(+372)7308205", "sphere": "Mootorikütuse hulgimüük", "address": "Harjumaa, Tallinn, Lõõtsa tn 8a, 11415"}	OU	all
16294	{"name": "SEVENOIL EST OÜ", "email": "info@premium-7.ee", "phone": "(+372)7308209", "sphere": "Mootorikütuse jaemüük, sh tanklate tegevus", "address": "Tartumaa, Tartu, Tähe 127A, 50113"}	OU	all
16295	{"name": "EESTI HÖÖVELLIIST OÜ", "email": "info@hoovelliist.ee", "phone": "(+372)4351050", "sphere": "Saematerjali tootmine", "address": "Viljandimaa, Suure-Jaani vald, Ruusi tee 12, Päraküla, 71504"}	OU	all
16296	{"name": "TARTU KAUBAMAJA KINNISVARA OÜ", "email": "tartu.kaubamaja@kaubamaja.ee", "phone": "(+372)7315050", "sphere": "Enda või renditud kinnisvara üürileandmine ja käitus", "address": "Tartumaa, Tartu, Riia 1, 51013"}	OU	all
16297	{"name": "SKANO GROUP AS", "email": "group@skano.com, mail@viisnurk.ee, olev.pait@skano.com, personal@skano.com", "phone": "(+372)4478318, (+372)4478323, (+372)5103685, (+372)55537773", "sphere": "Muu teenindus", "address": "Pärnumaa, Pärnu, Suur-Jõe 48, 80042"}	OU	all
16298	{"name": "AQ LASERTOOL OÜ", "email": "info-lte@aqg.se, lte-info@aqg.se", "phone": "(+372)4459580", "sphere": "Mehaaniline metallitöötlus", "address": "Lagre tee 2, 88311, Lemmetsa küla, Audru vald, Pärnu maakond, Eesti Vabariik, 88311"}	OU	all
16299	{"name": "CATWEES OÜ", "email": "alvar.orav@catwees.ee, kadi.sander@catwees.ee, parnu@catwees.ee, piret.pahk@catwees.ee", "phone": "(+372)4476176, (+372)6503300, (+372)6503304, (+372)7300385", "sphere": "Sõiduautode ja väikebusside (täismassiga alla 3,5 t) müük", "address": "Pärnumaa, Pärnu, Ehitajate tee 2, 80035"}	OU	all
16300	{"name": "VALGA PUU OÜ", "email": "andres@valgapuu.ee, info@valgapuu.ee", "phone": "(+372)7670370", "sphere": "Metsavarumine", "address": "Valgamaa, Hummuli vald, Kulli küla, Palu talu, 68401"}	OU	all
16301	{"name": "BELLUS FURNITUR OÜ", "email": "anti.lepp@bellus.com, info@bellus.com, personal@bellus.com, pille.talci@bellus.com", "phone": "(+372)3232130, (+372)3232142, (+372)53269119, (+372)56567686", "sphere": "Mujal liigitamata mööbli tootmine", "address": "Lääne-Virumaa, Haljala vald, Rakvere mnt 23a, 45301"}	OU	all
16302	{"name": "NOTE PÄRNU OÜ", "email": "erki.hirv@note.eu, nele.zaitsev@note.eu, noteparnu@note.eu, personal@note.ee", "phone": "(+372)4448500, (+372)4448516, (+372)4476450", "sphere": "Trükkplaatide tootmine", "address": "Pärnumaa, Pärnu, Laki 2, 80010"}	OU	all
16303	{"name": "SAAREMAA LIHATÖÖSTUS OÜ", "email": "slt@slt.ee, tellimus@slt.ee", "phone": "(+372)4524101, (+372)4524106, (+372)4524123, (+372)4524125, (+372)4524128, (+372)4524142, (+372)4524143, (+372)4524145, (+372)4524201, (+372)4524202, (+372)6052581", "sphere": "Liha töötlemine ja säilitamine, k.a tapamajade tegevus", "address": "Saaremaa, Kuressaare, Pikk tn 81, 93815"}	OU	all
16304	{"name": "CRONIMET EESTI METALL OÜ", "email": "andre@em.ee, eva@em.ee, info@em.ee", "phone": "(+372)7400510, (+372)7764180", "sphere": "Sorteeritud materjali taaskasutusele võtmine", "address": "Tartumaa, Tartu, Jalaka tn 60b, 50109"}	OU	all
16305	{"name": "BALTI TEENUSED OÜ", "email": "andres.uska@pohjakeskus.ee, info@pohjakeskus.ee", "phone": "(+372)3260572", "sphere": "Enda või renditud kinnisvara üürileandmine ja käitus", "address": "Harjumaa, Tallinn, Olevimägi 16, 10123"}	OU	all
16306	{"name": "LOOPEALSE ELAMU OÜ", "email": "indrek@vallikraavi.ee, maiken@rt.ee", "phone": "(+372)7413285, (+372)7447198", "sphere": "Enda või renditud kinnisvara üürileandmine ja käitus", "address": "Tartumaa, Tartu, Sõbra 54, 50106"}	OU	all
16307	{"name": "ORICA EESTI OÜ", "email": "info@orica-estonia.com, orica@estpak.ee", "phone": "(+372)3364611", "sphere": "Lõhkeaine tootmine", "address": "Ida-Virumaa, Jõhvi, Jaama 10, 41533"}	OU	all
16308	{"name": "ARMAS GRUPP OÜ", "email": null, "phone": "(+372)4756821, (+372)58090362", "sphere": "Paberi, kirjatarvete, raamatute ja ajakirjandusväljaannete hulgimüük", "address": "Läänemaa, Haapsalu, Tamme 19-72, 90508"}	OU	all
16309	{"name": "ALMORRA OÜ", "email": "egononpeekon@hotmail.com", "phone": null, "sphere": "Puidu ja puidu esmatöötlustoodete hulgimüük", "address": "Pärnumaa, Pärnu, Metsa 12-19, 80024"}	OU	all
16310	{"name": "RESTMEC OÜ", "email": "restmec@restmec.ee", "phone": "(+372)7400664", "sphere": "Köögimööbli tootmine", "address": "Tartumaa, Tartu vald, Tila küla, 60501"}	OU	all
16311	{"name": "VETTEL OÜ", "email": "aivar@vettel.ee, kristiina@vettel.ee, vettel@vettel.ee", "phone": "(+372)4511470, (+372)4521470, (+372)4521472, (+372)4531650", "sphere": "Kala, vähilaadsete ja limuste töötlemine ja säilitamine", "address": "Saaremaa, Pihtla vald, Vettel kalatööstus, 94129"}	OU	all
16312	{"name": "DELUX OÜ", "email": "delux@delux.ee, deluxdomotex@deluxdomotex.ee, helen.keedus@delux.ee, marje.pankesp@delux.ee", "phone": "(+372)4354270, (+372)4354279, (+372)4354292, (+372)5291147", "sphere": "Kodutekstiili tootmine, sh voodipesu, köögirätikud, kardinad, aknasisekatted jm eesriided", "address": "Viljandimaa, Viljandi, Raua tn 5"}	OU	all
16313	{"name": "INCAP ELECTRONICS ESTONIA OÜ", "email": "incap@ee.incap.eu, maire.pihel@ee.incap.eu, personal@ee.incap.eu, recruitment@incap.fi", "phone": "(+372)4521722, (+372)4521723, (+372)4521729, (+372)4538476", "sphere": "Mõõte-, katse- ja navigatsiooniseadmete tootmine", "address": "Saaremaa, Kuressaare, Tehnika 9, 93815"}	OU	all
16314	{"name": "ESTOVER PIIMATÖÖSTUS OÜ", "email": "poltsamaameierei@poltsamaameierei.ee", "phone": "(+372)6112610, (+372)7353802, (+372)7353831", "sphere": "Juustu- ja kohupiimatootmine", "address": "Tartumaa, Rannu vald, Kaarlijärve küla, 61101"}	OU	all
16315	{"name": "ESTONIA OÜ", "email": "info@oyestonia.ee", "phone": "(+372)3871416", "sphere": "Piimakarjakasvatus", "address": "Tehnika 1, 72301, Oisu alevik, Türi vald, Järva maakond, Eesti Vabariik, 72301"}	OU	all
16316	{"name": "KM ELEMENT OÜ", "email": "info@kodumaja.ee", "phone": "(+372)7385999", "sphere": "Elamute ja mitteeluhoonete ehitus", "address": "Tartumaa, Tartu, Ravila 61, 51014"}	OU	all
16317	{"name": "PÕLVA AGRO OÜ", "email": "heli.sadam@pou.ee, peeter.alep@pou.ee", "phone": "(+372)5077528, (+372)53431019, (+372)53453950, (+372)7999392", "sphere": "Piimakarjakasvatus", "address": "Vana Tartu tee 2 Mammaste küla Põlva vald Põlvamaa, 63211, Mammaste küla, Põlva vald, Põlva maakond, Eesti Vabariik, 63211"}	OU	all
16318	{"name": "CRISTELLA VT OÜ", "email": "cristella@cristella.ee, cristelle@cristelle.ee, margit.rahuoja@cristella.ee, merike.tenso@cristella.ee", "phone": "(+372)7866800", "sphere": "Leiva- ja saiatootmine, säilitusaineteta pagaritoodete tootmine", "address": "Võrumaa, Võru, Pikk 17, 65620"}	OU	all
16319	{"name": "UNITED LOGGERS OÜ", "email": "estonia@united-loggers.com, info@united-loggers.com, peeter.volke@united-loggers.com", "phone": "(+372)4890978", "sphere": "Puidu ja puidu esmatöötlustoodete hulgimüük", "address": "Raplamaa, Kehtna vald, Saksa küla, Rätsepa talu, 79005"}	OU	all
16320	{"name": "AQVA HOTELS OÜ", "email": "info@aqvahotels.ee, sales@aqvahotels.ee", "phone": "(+372)3260000, (+372)3260005, (+372)3260010, (+372)3260014, (+372)3260015, (+372)3260016, (+372)3260020, (+372)3260022, (+372)3264455", "sphere": "Hotellid", "address": "Lääne-Virumaa, Rakvere, Parkali 4, 44308"}	OU	all
16321	{"name": "COMBIWOOD OÜ", "email": "marju@combiwood.ee, virko@combiwood.ee", "phone": "(+372)7671083", "sphere": "Saematerjali tootmine", "address": "Liimi, 68608, Möldre küla, Helme vald, Valga maakond, Eesti Vabariik, 68608"}	OU	all
16322	{"name": "VÄRVIKESKUSTE GRUPP OÜ", "email": "kadaka@varvikeskus.ee , parnu@varvikeskus.ee, tallinn@varvikeskus.ee, tartu@varvikeskus.ee", "phone": "(+372)6062220, (+372)6062235, (+372)6507445, (+372)7300230", "sphere": "Muude üld- ja eriotstarbeliste masinate ja seadmete hulgimüük", "address": "Tartumaa, Tartu, Ringtee 4, 51013"}	OU	all
16323	{"name": "TRELLEBORG INDUSTRIAL PRODUCTS ESTONIA OÜ", "email": ", kalver.kirs@trelleborg.com, rena.kaup@trelleborg.com", "phone": ", (+372)4530400, (+372)4530404, (+372)5136396", "sphere": "Kummiplaatide, -lehtede, -torude, -voolikute jms tootmine", "address": "Saaremaa, Kuressaare, Pikk tn 62 e, 93815"}	OU	all
16324	{"name": "AGROCHEMA EESTI OÜ", "email": "agro@agrochemaeesti.ee", "phone": "(+372)7769410", "sphere": "Väetise ja agrokeemiatoodete hulgimüük", "address": "Jõgevamaa, Jõgeva, Turu 7a, 48303"}	OU	all
16325	{"name": "P-TRUCKS OÜ", "email": "p-trucks@p-trucks.ee, raimond.parn@p-trucks.ee", "phone": "(+372)4420107", "sphere": "Muude mootorsõidukite müük", "address": "Pärnumaa, Pärnu, Papiniidu 19, 80042"}	OU	all
16326	{"name": "VARA SAEVESKI OÜ", "email": "andres.hummal@varasaeveski.ee, anneli.kaseorg@varasaeveski.ee, info@varasaeveski.ee", "phone": "(+372)7315843, (+372)7315871", "sphere": "Saematerjali tootmine", "address": "Vara Saeveski, Vara küla, Vara vald, Tartumaa, 60426"}	OU	all
16327	{"name": "PAKPOORD OÜ", "email": "lifejackets@lade.ee", "phone": "(+372)4720450", "sphere": "Muude valmis tekstiiltoodete tootmine", "address": "Hiiumaa, Kärdla, Kõrgessaare mnt 43, 92413"}	OU	all
16328	{"name": "SAARIOINEN EESTI OÜ", "email": "angela.treimaa@saarioinen.ee, mart.vilbaum@saarioinen.fi, saarioinen@saarioinen.ee", "phone": "(+372)4841040, (+372)53304305, (+372)6408397, (+372)6593020", "sphere": "Valmistoitude tootmine", "address": "Rebastemäe tee 1, 79606, Kalevi küla, Rapla vald, Rapla maakond, Eesti Vabariik, 79606"}	OU	all
16329	{"name": "CHARLOT OÜ", "email": "info@charlot.ee, natalja@charlot.ee", "phone": "(+372)3220144, (+372)3223314, (+372)3260503, (+372)3322494, (+372)3346818, (+372)3846030, (+372)4333964, (+372)4435979, (+372)4464559, (+372)4522513, (+372)6034669, (+372)6091324, (+372)6101520, (+372)6550656, (+372)6555390, (+372)6555408, (+372)6631302, (+372)6661580, (+372)6661581, (+372)7314838, (+372)7381877, (+372)7384484, (+372)7456505, (+372)7669707, (+372)7828900, (+372)7976181", "sphere": "Mujal liigitamata kaupade jaemüük spetsialiseeritud kauplustes", "address": "Võrumaa, Võru, Eterniidi 3, 65605"}	OU	all
16330	{"name": "OUMAN ESTONIA OÜ", "email": "anu.hartikainen@enerpoint.ee, anu@enerpoint.ee, enerpoint@enerpoint.ee, erik.keerberg@enerpoint.fi", "phone": "(+372)4524405, (+372)4524415, (+372)4531497, (+372)6728389", "sphere": "Mõõte-, katse- ja navigatsiooniseadmete tootmine", "address": "Saaremaa, Kuressaare, Kalevi põik 7, 93815"}	OU	all
16331	{"name": "TARMETEC OÜ", "email": "leelo@metec.ee, tarmetec@metec.ee, teevi@metec.ee", "phone": "(+372)7385000", "sphere": "Mootorsõidukite muude osade ja lisaseadmete tootmine", "address": "Tartumaa, Tartu, Ringtee 6, 51013"}	OU	all
16332	{"name": "PALMSE MEHAANIKAKODA OÜ", "email": "info@palms.eu", "phone": "(+372)3255375", "sphere": "Põllu- ja metsamajandusmasinate tootmine", "address": "Lääne-Virumaa, Vihula vald, Võsupere küla, 45405"}	OU	all
16333	{"name": "SÄÄSTKE OÜ", "email": "jna@jna.ee, raul@jna.ee", "phone": "(+372)4474615, (+372)53479883", "sphere": "Puidust uste, akende, aknaluukide ja nende raamide tootmine (k.a väravad)", "address": "Riisa tee 10, 86802, Jõesuu küla, Tori vald, Pärnu maakond, Eesti Vabariik, 86802"}	OU	all
16334	{"name": "AGRILAND OÜ", "email": "info@agriland.ee, karin@agriland.ee", "phone": "(+372)6720500, (+372)7371422", "sphere": "Põllumajandusmasinate, -seadmete ja lisaseadmete hulgimüük", "address": "Tartumaa, Ülenurme vald, Tüki, 61715"}	OU	all
16335	{"name": "FORTACO ESTONIA OÜ", "email": "fortaco.estonia@fortacogroup.com, irina.kostina@fortacogroup.com, komas.estonia@komas.eu, tallinn@lawin.ee", "phone": "(+372)3569675, (+372)3569699, (+372)3569775, (+372)6306460", "sphere": "Muude metallkonstruktsioonide ja nende osade tootmine", "address": "Ida-Virumaa, Narva, Linda 20, 20309"}	OU	all
16336	{"name": "TAPA VESI OÜ", "email": "tapavesi@tapavesit.ee", "phone": "(+372)3220048, (+372)3293978", "sphere": "Veekogumine, -töötlus ja -varustus", "address": "Lääne-Virumaa, Tapa, Rakvere tee 1, 45106"}	OU	all
16337	{"name": "APTEEKIDE INFOTEHNOLOOGIA OÜ", "email": "siim@apotheka.ee", "phone": "(+372)7371644", "sphere": "Programmeerimine", "address": "Tartumaa, Tartu, Aardla 13, 50112"}	OU	all
16338	{"name": "COMBIMILL REOPALU OÜ", "email": "asmo.varis@finnforest.ee, mare.sepp@abms.ee, Timo.Kauppila@Finnforest.com, tonu@finnforest.ee", "phone": "(+372)3838150, (+372)3850213, (+372)5548229", "sphere": "Saematerjali tootmine", "address": "Saeveski, 72811, Reopalu küla, Väätsa vald, Järva maakond, Eesti Vabariik, 72811"}	OU	all
16339	{"name": "MERINVEST OÜ", "email": "merinvest@merinvest.ee", "phone": "(+372)4529680, (+372)4529682, (+372)4544121, (+372)4575225", "sphere": "Mujal liigitamata kummitoodete tootmine", "address": "Merinvesti, 93835, Mullutu küla, Lääne-Saare vald, Saare maakond, Eesti Vabariik, 93835"}	OU	all
16340	{"name": "KAARSILLA KINNISVARA OÜ", "email": "eve@kaarsilla.ee, info@kaarsilla.ee", "phone": "(+372)7338070, (+372)7338073", "sphere": "Enda või renditud kinnisvara üürileandmine ja käitus", "address": "Tartumaa, Tartu, Ülikooli tn 2a, 51003"}	OU	all
16341	{"name": "SYNLAB EESTI OÜ", "email": "konkurss@quattromed.ee, quattromed@quattromed.ee, rita.surva@laborid.ee", "phone": "(+372)6408210", "sphere": "Meditsiinilaborite, vere-, sperma- jms pankade tegevus", "address": "Harjumaa, Tallinn, Väike-Paala tn 1, 11415"}	OU	all
16342	{"name": "VIRU RMT OÜ", "email": "notar@tlnotar.com, rmt@vkg.ee, rmt@vkgrupp.ee, viru.rmt@vkg.ee", "phone": "(+372)3324200, (+372)3342249, (+372)3342577, (+372)3342760, 3342573, 3342700, 3342702, 3342703, 3342706, 3342711, 3342714, 3342736, 3342738, 3342740, 3342749, 3342755, 3342784, 3342810, 334403, 5232700", "sphere": "Masinate ja seadmete remont", "address": "Ida-Virumaa, Kohtla-Järve, Järveküla tee 14, 30328"}	OU	all
16343	{"name": "VÄINAMERE LIINID OÜ", "email": "marina@laevakompanii.ee, slk@laevakompanii.ee", "phone": "(+372)4524350, (+372)5288020", "sphere": "Muud veetransporti teenindavad tegevusalad", "address": "Saaremaa, Kuressaare, Kohtu 1, 93812"}	OU	all
16344	{"name": "GREIF OÜ", "email": "greif@online.ee, tootmine@greif.ee", "phone": "(+372)6971342, (+372)6971350, (+372)6971351, (+372)6971352, (+372)7309720, (+372)7309721, (+372)7420212, (+372)7420245, (+372)7420324, (+372)7420485, (+372)7423564, (+372)7427416", "sphere": "Raamatute trükkimine", "address": "Tartumaa, Tartu, Vallikraavi 4, 51003"}	OU	all
16345	{"name": "ASB GREENWORLD EESTI OÜ", "email": "asbgreen@hot.ee", "phone": "(+372)4459530, (+372)4459533", "sphere": "Turba tootmine", "address": "Pärnumaa, Sauga vald, Nurme küla, 85004"}	OU	all
16346	{"name": "NARVA GATE OÜ", "email": "info@narvagate.eu", "phone": "(+372)3565670", "sphere": "Enda või renditud kinnisvara üürileandmine ja käitus", "address": "Ida-Virumaa, Narva, Kose 12, 20103"}	OU	all
16347	{"name": "ARGO TRADING OÜ", "email": "argo@estpak.ee", "phone": "(+372)3560638, (+372)3592839", "sphere": "Spetsialiseerimata hulgikaubandus", "address": "Ida-Virumaa, Narva, Puškini 10-M3, 20308"}	OU	all
16348	{"name": "FAMA INVEST OÜ", "email": "astri@astri.ee, tarmo@astri.ee", "phone": "(+372)7425122", "sphere": "Enda või renditud kinnisvara üürileandmine ja käitus", "address": "Tartumaa, Tartu, Viljandi mnt 13, 50412"}	OU	all
16349	{"name": "TNC-COMPONENTS OÜ", "email": "info@tnc.ee, valentina@tnc.ee", "phone": "(+372)3372830, (+372)3373512, (+372)5247370, (+372)6400070", "sphere": "Mööbliosade tootmine", "address": "Ida-Virumaa, Kohtla-Järve, Ehitajate 130a, 30222"}	OU	all
16350	{"name": "WESICO PROJECT OÜ", "email": "info@wesico.ee, tiiu@wesico.ee", "phone": null, "sphere": "Vee-, gaasi- ja kanalisatsioonitrasside ehitus", "address": "Jõgevamaa, Puurmani vald, Puurmani alevik, Ülejõe 33-5, 49001"}	OU	all
16351	{"name": "PMT OÜ", "email": "jaan.meikup@pmt.ee", "phone": "(+372)3848780", "sphere": "Mujal liigitamata üldmasinate ja mehhanismide tootmine", "address": "Järvamaa, Paide, Tööstuse 7, 72720"}	OU	all
16352	{"name": "VALMOS OÜ", "email": "anti@valmos.ee, egle@valmos.ee, info@valmos.ee, kairi@valmos.ee", "phone": "(+372)4451700, (+372)4451705, (+372)53038345, (+372)53453209", "sphere": "Spooni ja vineeri tootmine", "address": "Pärnumaa, Audru vald, 88311"}	OU	all
16353	{"name": "MOBI SOLUTIONS OÜ", "email": "mobi@mobi.ee", "phone": "(+372)6988399", "sphere": "Muud mujal liigitamata äritegevust abistavad tegevused", "address": "Tartumaa, Tartu, Akadeemia 3, 51003"}	OU	all
16354	{"name": "KOHILA VINEER OÜ", "email": "andres@kohilavineer.ee, andres@kohilvaineer.ee, margo@kohilavineer.ee, ruth@kohilavineer.ee", "phone": "(+372)4820280, (+372)4820283, (+372)4820293, (+372)5055993", "sphere": "Spooni ja vineeri tootmine", "address": "Jõe 21, 79808, Kohila alev, Kohila vald, Rapla maakond, Eesti Vabariik, 79808"}	OU	all
16355	{"name": "MOREEN OÜ", "email": "moreen@moreen.ee", "phone": "(+372)5079387, (+372)7739231", "sphere": "Teede ja kiirteede ehitus", "address": "Jõgevamaa, Põltsamaa vald, Piiritoa, 48006"}	OU	all
16356	{"name": "PERI PÕLLUMAJANDUSLIK OÜ", "email": ", info@peripou.ee", "phone": "(+372)53431019, (+372)56600027, (+372)7926336, (+372)7926424", "sphere": "Piimakarjakasvatus", "address": "63218, Peri küla, Põlva vald, Põlva maakond, Eesti Vabariik, 63218"}	OU	all
16357	{"name": "WESTAQUA-INVEST OÜ", "email": "info@westaqua.eu, l.anufrijeva@westaqua.eu, sales@aguaphor.com, v.lavrov@westaqua.eu", "phone": "(+372)3924116, (+372)3926022", "sphere": "Muude plasttoodete tootmine", "address": "Ida-Virumaa, Sillamäe, L. Tolstoi 2A, 40231"}	OU	all
16358	{"name": "METECI VALDUSE OÜ", "email": "metec@metec.ee", "phone": "(+372)7385000", "sphere": "Enda või renditud kinnisvara üürileandmine ja käitus", "address": "Tartumaa, Tartu, Aru 6, 50303"}	OU	all
16359	{"name": "RETA PUIT OÜ", "email": "retapuit@retapuit.ee", "phone": "(+372)4538760, (+372)5038396", "sphere": "Puidu ja puidu esmatöötlustoodete hulgimüük", "address": "Saaremaa, Kuressaare, Ringtee 12, 93815"}	OU	all
16360	{"name": "RAKVERE PÕLLUMAJANDUSTEHNIKA OÜ", "email": "keskladu@rpmt.ee, kunnar.soon@neti.ee, rpmt@rpmt.ee", "phone": "(+372)3220825, (+372)3220827, (+372)3220829, (+372)3223391, (+372)3256264, (+372)3270860, (+372)3270861, (+372)3270864, (+372)3270866, (+372)3270867, (+372)3270868, (+372)3270870, (+372)3270871", "sphere": "Turba tootmine", "address": "Puiestee 2, 44201, Sõmeru alevik, Sõmeru vald, Lääne-Viru maakond, Eesti Vabariik, 44201"}	OU	all
16361	{"name": "KOHILA MAJA OÜ", "email": "kohilamaja@kohilamaja.ee", "phone": "(+372)4892685", "sphere": "Kanalisatsioon ja heitveekäitlus", "address": "Kuusiku 15, 79801, Kohila alev, Kohila vald, Rapla maakond, Eesti Vabariik, 79801"}	OU	all
16382	{"name": "AP OIL OÜ", "email": "info@apoil.ee, marianne@kunsttekkel.ee", "phone": "(+372)5160949, (+372)6010645, (+372)7362076, (+372)7474538", "sphere": "Mootorikütuse hulgimüük", "address": "Harjumaa, Tallinn, Pärnu mnt 130-7, Kesklinna linnaosa, 11317"}	OU	all
16383	{"name": "ARTISTON KINNISVARA OÜ", "email": "raul@artiston.ee", "phone": "3726098243; 3725056076", "sphere": "Metsavarumine", "address": "Töökoja tee 6, 46501, Laekvere alevik, Laekvere vald, Lääne-Viru maakond, Eesti Vabariik, 46501"}	OU	all
16384	{"name": "MAKRO TRADE BALTIC OÜ", "email": "heiki.post@makrotrade.ee, hilme.paara@makrotrade.ee, info@makrotrade.ee, ylle.poldoja@markotrade.ee", "phone": "(+372)4429490, (+372)4470886, (+372)56504633, (+372)7388041", "sphere": "Spetsialiseerimata hulgikaubandus", "address": "Pärnumaa, Pärnu, Lao 5, 80042"}	OU	all
16385	{"name": "LÕPE AGRO OÜ", "email": "lopeagro@lopeagro.ee", "phone": "(+372)4462210", "sphere": "Teravilja- (v.a riis) ja kaunviljakasvatus, õlitaimeseemnete kasvatus", "address": "Lõpe,Lõpe küla,Koonga vald,Pärnumaa,88402"}	OU	all
16386	{"name": "MANGENI PM OÜ", "email": "raamatupidamine@k-agro.ee", "phone": "(+372)4351474", "sphere": "Teravilja- (v.a riis) ja kaunviljakasvatus, õlitaimeseemnete kasvatus", "address": "Aini, Kõo küla, Kõo vald, Viljandi maakond, 70501"}	OU	all
16387	{"name": "PURUTULI OÜ", "email": "brikett@purutuli.ee, olari@purutuli.ee", "phone": "(+372)7425696", "sphere": "Muude puidutöötlemissaaduste tootmine, sh hakkepuit, puitvill jms", "address": "Magasini 3-4, , Tartu, Tartumaa, 51005"}	OU	all
16388	{"name": "TAVA METS OÜ", "email": "info@tavamets.ee", "phone": "(+372)7366030", "sphere": "Metsavarumine", "address": "Tartumaa, Elva, Tartu mnt 29a, 61506"}	OU	all
16389	{"name": "RAJA KT OÜ", "email": "info@rajakt.ee", "phone": "(+372)5027849, (+372)5208980", "sphere": "Muude puidutöötlemissaaduste tootmine, sh hakkepuit, puitvill jms", "address": "Kaido kinnistu, 87604, Allikõnnu küla, Vändra vald, Pärnu maakond, Eesti Vabariik, 87604"}	OU	all
16390	{"name": "TAPA MILL OÜ", "email": "kalle@tapamill.ee", "phone": "(+372)3255900", "sphere": "Saematerjali tootmine", "address": "Lääne-Virumaa, Tapa, Paide mnt 86, 45110"}	OU	all
16391	{"name": "BALTIC LOG CABINS OÜ", "email": "blc@neti.ee", "phone": "(+372)3223947, (+372)3242390", "sphere": "Puidust tarbe- ja dekoratiivesemete jm puittoodete tootmine", "address": "Lääne-Virumaa, Väike-Maarja vald, Ebavere küla, 46202"}	OU	all
16392	{"name": "VIOLANTE MÖÖBEL OÜ", "email": "info@violante.ee", "phone": "(+372)4890760, (+372)6308218", "sphere": "Mujal liigitamata mööbli tootmine", "address": "78403, Tamme küla, Raikküla vald, Rapla maakond, Eesti Vabariik, 78403"}	OU	all
16362	{"name": "MOROBELL OÜ", "email": "morobell@hot.ee", "phone": "(+372)4725515, (+372)4757255, (+372)4775405", "sphere": "Merekalapüük", "address": "Läänemaa, Haapsalu, Oja 6, 90506"}	OU	all
16363	{"name": "LÕUNA-EESTI HAIGLA AS", "email": "haigla@leh.ee, helle.kiik@leh.ee, kylli.hiovein@leh.ee, kylli.raup@leh.ee", "phone": "(+372)5212414, (+372)7868500, (+372)7868505, (+372)7868506", "sphere": "Eriarstiabi osutamine", "address": "Meegomäe küla, 65526, Meegomäe küla, Võru vald, Võru maakond, Eesti Vabariik, 65526"}	OU	all
16364	{"name": "MAREPLEKS OÜ", "email": "anneli@marepleks.ee, info@autofer.ee, info@marepleks.ee", "phone": "(+372)6616200, (+372)7303350", "sphere": "Klaaspaketi jm klaasist ehitusmaterjali tootmine", "address": "Tartumaa, Elva, Pikk 19a, 61505"}	OU	all
16365	{"name": "TRIPLE INVEST OÜ", "email": "info@portartur.ee, kersti@portartur.ee, ylle@portartur.ee", "phone": "(+372)4425590, (+372)4478881, (+372)4478882, (+372)4478886, (+372)4478887, (+372)4478888, (+372)4478889", "sphere": "Enda või renditud kinnisvara üürileandmine ja käitus", "address": "Pärnumaa, Pärnu, Hommiku 2, 80010"}	OU	all
16366	{"name": "PUIDUKODA OÜ", "email": "aino@puidukoda.eu, info@puidukoda.eu", "phone": "(+372)4338690, (+372)4338692, (+372)4338693, (+372)4338694, (+372)4338695, (+372)4338696, (+372)4338698, (+372)4338699", "sphere": "Saematerjali tootmine", "address": "Viljandimaa, Karksi vald, Karksi küla, 69104"}	OU	all
16367	{"name": "ML HALDUSE OÜ", "email": "info@auriga.ee", "phone": "(+372)4521665, (+372)4522500", "sphere": "Enda või renditud kinnisvara üürileandmine ja käitus", "address": "Saaremaa, Kuressaare, Pikk 74, 93815"}	OU	all
16368	{"name": "ALPTER GRUPP OÜ", "email": "alar@alpter.ee, erki@alpter.ee, info@alpter.ee, kristina@alpter.ee", "phone": "(+372)5029299, (+372)56670140, (+372)7300050, (+372)7300053", "sphere": "Killustiku tootmine", "address": "Tartumaa, Tartu, Tähe 106C, 51013"}	OU	all
16369	{"name": "PALMSE METALL OÜ", "email": "info@palmsetrailer.eu", "phone": ", (+372)3260290", "sphere": "Põllu- ja metsamajandusmasinate tootmine", "address": "Lääne-Virumaa, Vihula vald, Võsupere küla, 45202"}	OU	all
16370	{"name": "SW ENERGIA OÜ", "email": "info@swenergia.ee, sulev@swenergia.ee, tarmo@swenergia.ee", "phone": "(+372)4477860, (+372)4477862, (+372)5061787, (+372)56640892", "sphere": "Auru ja konditsioneeritud õhuga varustamine", "address": "Tehnika tn 1, 86602, Paikuse alev, Paikuse vald, Pärnu maakond, Eesti Vabariik, 86602"}	OU	all
16371	{"name": "ALDAR EESTI OÜ", "email": "info@aldarmarket.ee", "phone": "(+372)6667365", "sphere": "Jaemüük spetsialiseerimata kauplustes, kus on ülekaalus toidukaubad, joogid ja tubakatooted", "address": "F.G.Adoffi 11, Rakvere, Lääne-Virumaa, 44310"}	OU	all
16372	{"name": "REINPAUL OÜ", "email": "reinpaul@reinpaul.ee", "phone": "(+372)3255651, (+372)5050349", "sphere": "Metsamajandust abistavad tegevused", "address": "Pikk 16, 46202, Väike-Maarja alevik, Väike-Maarja vald, Lääne-Viru maakond, Eesti Vabariik, 46202"}	OU	all
16373	{"name": "EREMKA OÜ", "email": "eremka@eremka.ee", "phone": null, "sphere": "Metsavarumine", "address": "Pärnumaa, Pärnu, Niidu 17, 80044"}	OU	all
16374	{"name": "PAIKRE OÜ", "email": "anne@paikre.ee, info@paikre.ee, kati@paikre.ee, teet@lv.parnu.ee", "phone": "(+372)4427936, (+372)4427959, (+372)4455760, (+372)5104259", "sphere": "Tavajäätmete töötlus ja kõrvaldus", "address": "Pärnumaa, Paikuse vald, Pärnade pst 11, 80046"}	OU	all
16375	{"name": "PEETRI PUIT OÜ", "email": "info@peetripuit.ee, peeter@arcwoodbeams.eu, peeter@peetripuit.ee, peetripuit@neti.ee", "phone": "(+372)5050339, (+372)7991200", "sphere": "Puidu kuivatus, immutamine ja keemiline töötlus", "address": "Põlvamaa, Põlva, Pärnaõie tn 32, 63308"}	OU	all
16376	{"name": "PAE FARMER OÜ", "email": "paetalu@hot.ee", "phone": "(+372)4844105", "sphere": "Piimakarjakasvatus", "address": "Aidamäe, 79009, Pae küla, Kehtna vald, Rapla maakond, Eesti Vabariik, 79009"}	OU	all
16377	{"name": "SPA VARAD OÜ", "email": "info@tesman.ee", "phone": null, "sphere": "Enda või renditud kinnisvara üürileandmine ja käitus", "address": "Saaremaa, Kuressaare, Tallinna 15, 93811"}	OU	all
16378	{"name": "TERVISE PARADIIS OÜ", "email": "info@spa.ee, jaan.ratnik@spa.ee, sirje.lulla@spa.ee", "phone": "(+372)4450126, (+372)4451614, (+372)4451616, (+372)4451622, (+372)4451625, (+372)4451627, (+372)4451654", "sphere": "Jaemüük spetsialiseerimata kauplustes, kus on ülekaalus toidukaubad, joogid ja tubakatooted", "address": "Pärnumaa, Pärnu, Side 14, 80010"}	OU	all
16379	{"name": "JÄRVA PM OÜ", "email": "jarvapm@hot.ee", "phone": "(+372)3854322", "sphere": "Piimakarjakasvatus", "address": "Tralka, 73012, Visusti küla, Koeru vald, Järva maakond, Eesti Vabariik, 73012"}	OU	all
16380	{"name": "RAIKKÜLA FARMER OÜ", "email": "info@raikfarm.ee", "phone": "(+372)4864421", "sphere": "Piimakarjakasvatus", "address": "Raplamaa, Raikküla vald, Kontori, Raikküla, 78402"}	OU	all
16381	{"name": "TORMA PÕLLUMAJANDUSOSAÜHING OÜ", "email": "tormapou@hot.ee", "phone": "(+372)7760308", "sphere": "Piimakarjakasvatus", "address": "Kesk tn 6, 48502, Torma alevik, Torma vald, Jõgeva maakond, Eesti Vabariik, 48502"}	OU	all
16393	{"name": "TALLINNA PESUMAJA OÜ", "email": "anu@tallinnapesumaja.ee, eve@tallinnapesumaja.ee, katrin@tallinnapesumaja.ee, tallinnapesumaja@tallinnapesumaja.ee", "phone": "(+372)4820200, (+372)53007183, (+372)53303434, (+372)6563184", "sphere": "Tekstiil- ja karusnahatoodete pesu ja keemiline puhastus", "address": "Raplamaa, Kohila vald, Vetuka tee 7, 79801"}	OU	all
16394	{"name": "TRUCK TRADING ESTONIA OÜ", "email": "andrus@tte.ee, info@tte.ee, raimond@tte.ee, sulev@tte.ee", "phone": "(+372)5020122, (+372)5063687, (+372)6064242, (+372)7366003", "sphere": "Muude mootorsõidukite müük", "address": "Tartumaa, Tartu, Tähe 106C, 51013"}	OU	all
16395	{"name": "MS BALTI TRAFO OÜ", "email": "info@msbaltitrafo.ee", "phone": "(+372)4471660", "sphere": "Elektrimootorite, -generaatorite ja trafode tootmine", "address": "Pärnumaa, Vändra alevi vald, Vihtra tee 3a, 87701"}	OU	all
16396	{"name": "AGROVARUSTUS OÜ", "email": "agrotorva@hot.ee, info@agrovarustus.ee, karen@agrovarustus.ee", "phone": "(+372)56600701, (+372)7330345, (+372)7366889, (+372)7633586", "sphere": "Valmissööda tootmine loomakasvatusele", "address": "Vabriku 6, 60534, Vahi küla, Tartu vald, Tartu maakond, Eesti Vabariik, 60534"}	OU	all
16397	{"name": "SAKRET OÜ", "email": "info@sakret.ee, sakret@sakret.ee", "phone": "(+372)3846600, (+372)6585068, (+372)6667231", "sphere": "Valmis betoonisegu tootmine", "address": "72751, Mäo küla, Paide vald, Järva maakond, Eesti Vabariik, 72751"}	OU	all
16398	{"name": "ATRIA FARMID OÜ", "email": "farmid@atria.ee, malle.puusepp@atria.ee, tarmo.niine@atria.ee, triin.ramp@atria.ee", "phone": "(+372)5152630, (+372)53414481", "sphere": "Seakasvatus", "address": "Valgamaa, Valga, Metsa 19, 68206"}	OU	all
16399	{"name": "PÕLTSAMAA VALLAVARA OÜ", "email": "info@vallavara.ee", "phone": "(+372)7759116, (+372)7759174", "sphere": "Veekogumine, -töötlus ja -varustus", "address": "Esku, 48005, Esku küla, Põltsamaa vald, Jõgeva maakond, Eesti Vabariik, 48005"}	OU	all
16400	{"name": "TERMAK REAL ESTATE OÜ", "email": "info@termakre.ee", "phone": "(+372)3566538, (+372)53359319", "sphere": "Enda või renditud kinnisvara üürileandmine ja käitus", "address": "Ida-Virumaa, Narva-Jõesuu, L. Koidula tn 19, 29023"}	OU	all
16401	{"name": "PÕLTSAMAA VARAHALDUSE OÜ", "email": "info@poltsamaavh.ee, kuldar@poltsamaa.ee", "phone": "(+372)7762260", "sphere": "Kanalisatsioon ja heitveekäitlus", "address": "Jõgevamaa, Põltsamaa, Pärna tn 1, 48105"}	OU	all
16402	{"name": "SELGE TALU OÜ", "email": "enn.kinnas@neti.ee", "phone": "(+372)4359195", "sphere": "Muu mujal liigitamata masinate, seadmete jm materiaalse vara rentimine ja kasutusrent", "address": "Selge talu, 69411, Atika küla, Abja vald, Viljandi maakond, Eesti Vabariik, 69411"}	OU	all
16403	{"name": "FEIN-ELAST ESTONIA OÜ", "email": "info@fein-elast.ee", "phone": "(+372)4459940", "sphere": "Tekstiilkiudude ettevalmistamine ja ketramine", "address": "Pärnumaa, Sindi, Pärnu mnt. 52, 86703"}	OU	all
16404	{"name": "AIU PÕLLUMAJANDUS OÜ", "email": "aiu@aiu.ee", "phone": "(+372)7312013, (+372)7498318", "sphere": "Teravilja- (v.a riis) ja kaunviljakasvatus, õlitaimeseemnete kasvatus", "address": "Tartumaa, Laeva vald, Laeva küla, 60608"}	OU	all
16405	{"name": "SILINDIA EHITUS OÜ", "email": "silindia@silindia.eu, toomas@silindia.eu", "phone": "(+372)4349568, (+372)5087938", "sphere": "Elamute ja mitteeluhoonete ehitus", "address": "Viljandimaa, Viljandi, Puiestee 18, 71012"}	OU	all
16406	{"name": "METEK OÜ", "email": "metek@metek.ee", "phone": "(+372)6096897", "sphere": "Elamute ja mitteeluhoonete ehitus", "address": "Valgamaa, Otepää, Pikk tn 10, 68206"}	OU	all
16407	{"name": "FORTUMO OÜ", "email": "support@fortumo.com", "phone": "(+372)7309500", "sphere": "Muu telekommunikatsioon", "address": "Tartumaa, Tartu, Ülikooli 6A, 51003"}	OU	all
16408	{"name": "SAVEKATE OÜ", "email": "savekate@savekate.ee", "phone": "(+372)7309830", "sphere": "Elamute ja mitteeluhoonete ehitus", "address": "Tartumaa, Tartu, Teguri 47B, 51013"}	OU	all
16409	{"name": "VÄNDRA MP OÜ", "email": "info@vandramp.ee", "phone": "(+372)4467053", "sphere": "Ehitusplatside ettevalmistus ja puhastus", "address": "Pärnumaa, Vändra alevi vald, Vändra alev, Jannseni 2, 87701"}	OU	all
16410	{"name": "AUTOLOGISTIKA OÜ", "email": "aarne.saarevali@ba.ee", "phone": "(+372)6309466, (+372)7403266", "sphere": "Kaubavedu maanteel", "address": "Tartumaa, Tartu, Tähe 98-5, 50107"}	OU	all
16411	{"name": "TAFRIX OÜ", "email": "info@tafrix.ee, marge@tafrix.ee", "phone": "(+372)3853664, (+372)5293324", "sphere": "Elamute ja mitteeluhoonete ehitus", "address": "Järvamaa, Paide, Mündi tn 8, 72720"}	OU	all
16412	{"name": "BIRGER OÜ", "email": "info@birger.ee, oubirger@gmail.com", "phone": "(+372)3344865, (+372)5183014", "sphere": "Terasvaatide jms mahutite tootmine", "address": "Ida-Virumaa, Avinurme vald, ---, 42112"}	OU	all
16413	{"name": "VÕRU VALLA VEEVÄRK OÜ", "email": "vald@voruvald.ee", "phone": null, "sphere": "Veekogumine, -töötlus ja -varustus", "address": "Võrumaa, Võru, Võrumõisa tee 4a, 65605"}	OU	all
16414	{"name": "POGI OÜ", "email": "ou.pogi@neti.ee", "phone": "(+372)3838500", "sphere": "Auru ja konditsioneeritud õhuga varustamine", "address": "Järvamaa, Paide, Ruubassaare tee 3, 72720"}	OU	all
16415	{"name": "DOMEX GROUP AS", "email": "toomas.hage@mail.ee", "phone": "(+372)6300950", "sphere": "Muu ehitiste viimistlus ja lõpetamine", "address": "Tartumaa, Tartu, Vaba tn 19a, 50114"}	OU	all
16416	{"name": "HÄRJANURME MÕIS OÜ", "email": "lahaverepiimafarm@gmail.com, laheverepiimafarm@gmail.com", "phone": "(+372)5220927, (+372)53472136, (+372)5520927, (+372)7723237", "sphere": "Piimakarjakasvatus", "address": "49011, Saduküla küla, Puurmani vald, Jõgeva maakond, Eesti Vabariik, 49011"}	OU	all
16417	{"name": "ORGITA PÕLD OÜ", "email": "orgitapold@hot.ee", "phone": "(+372)4826781", "sphere": "Teravilja- (v.a riis) ja kaunviljakasvatus, õlitaimeseemnete kasvatus", "address": "Raplamaa, Märjamaa vald, Kasti küla, 78221"}	OU	all
16418	{"name": "E.T.V.A. VARUOSAD OÜ", "email": "annika@etva.ee, info@etva.ee, sekretar@etva.ee, tiiu@etva.ee", "phone": "(+372)56211079, (+372)56640853, (+372)7302050, (+372)7377840, +372 730 2050", "sphere": "Mootorsõidukite osade ja lisaseadmete hulgimüük", "address": "Tartumaa, Tartu, Riia 136, 51014"}	OU	all
16419	{"name": "LOGOWEST OÜ", "email": "info@logowest.ee, jelena.hripunova@logowest.ee, natalja.kashirina@logowest.ee, valentina.rjazanova@logowest.ee", "phone": "(+372)3560123, (+372)3572672, (+372)3576900, (+372)3576901, (+372)3576902, (+372)3576903, (+372)3576908, (+372)3576909", "sphere": "Puidu ja ehitusmaterjalide vahendamine", "address": "Ida-Virumaa, Narva, Puškini 20-81, 20307"}	OU	all
16420	{"name": "TEEARU GRUPP OÜ", "email": "info@teearugrupp.ee", "phone": "(+372)7424522", "sphere": "Teede ja kiirteede ehitus", "address": "Tartumaa, Tartu, Ilmatsalu 3b, 51014"}	OU	all
16421	{"name": "SILBET OÜ", "email": "andres@silbet.ee, assan@silbet.ee, olga.marhel@silbet.ee, silbet@silbet.ee", "phone": "(+372)3366100, (+372)3366104, (+372)5063980, (+372)5108791", "sphere": "Kruusa- ja liivakarjääride tegevus, savi ja kaoliini kaevandamine", "address": "Ida-Virumaa, Kohtla-Järve, Ritsika vkt 36, 31027"}	OU	all
16442	{"name": "LAEKVERE PM OÜ", "email": "laek.vere@mail.ee", "phone": "(+372)3220892", "sphere": "Segapõllumajandus", "address": "Töökoja tee 4, 46501, Laekvere alevik, Laekvere vald, Lääne-Viru maakond, Eesti Vabariik, 46501"}	OU	all
16443	{"name": "STAKO DILER OÜ", "email": "info@stakodiler.ee", "phone": "(+372)3350776, (+372)3350777, (+372)3350799, (+372)3375514", "sphere": "Muude metallkonstruktsioonide ja nende osade tootmine", "address": "Ida-Virumaa, Jõhvi, Jaani 4, 41536"}	OU	all
16444	{"name": "SAIMRE SEAKASVATUSE OÜ", "email": "rostla@mail.ee", "phone": "(+372)4333137, (+372)7765137", "sphere": "Seakasvatus", "address": "Viljandimaa, Paistu vald, Aidu küla, Saimre Talu, 69601"}	OU	all
16445	{"name": "TRENDSETTER EUROPE OÜ", "email": "info@balticfibres.ee", "phone": "(+372)3259640, (+372)3295680", "sphere": "Kodutekstiili tootmine, sh voodipesu, köögirätikud, kardinad, aknasisekatted jm eesriided", "address": "Lääne tn 10, 45301, Haljala alevik, Haljala vald, Lääne-Viru maakond, Eesti Vabariik, 45301"}	OU	all
16446	{"name": "HANSA MEDICAL OÜ", "email": "peep@hansamedical.ee, siiri@hansamedical.ee, valli@hansamedical.ee", "phone": "(+372)6260064, (+372)6260065, (+372)7409450", "sphere": "Meditsiiniseadmete ja kirurgiriistade ning ortopeediliste abivahendite hulgimüük", "address": "Harjumaa, Tallinn, Mustamäe tee 46, 10621"}	OU	all
16447	{"name": "2 G BALTIC COMPANY OÜ", "email": "info@2gbc.ee, rula@2gbc.ee", "phone": "+372 742 8403", "sphere": "Mootorsõidukite osade ja lisaseadmete hulgimüük", "address": "Tartumaa, Ülenurme vald, Tõrvandi alevik, Tööstuse tee 1, 61715"}	OU	all
16448	{"name": "FLINT KAUBANDUS OÜ", "email": "info@flint.ee", "phone": "4355111, 4355113", "sphere": "Mootorsõidukite hooldus ja remont", "address": "Viljandimaa, Kõo vald, Kõo küla, 70501"}	OU	all
16449	{"name": "KAAVERE AGRO OÜ", "email": "kaavereagro@hot.ee", "phone": "(+372)7762010", "sphere": "Segapõllumajandus", "address": "Tootmiskompleksi, 48032, Lustivere küla, Põltsamaa vald, Jõgeva maakond, Eesti Vabariik, 48032"}	OU	all
16450	{"name": "BONG EESTI OÜ", "email": "bongeesti@bong.com, erle.raidma@bong.com, info@bongeesti.ee, peep.pira@bongeesti.ee", "phone": "(+372)4890146, (+372)5030789, (+372)6309170, (+372)6562770", "sphere": "Paberist kirjatarvete tootmine", "address": "Jõe tn 17, 79808, Kohila alev, Kohila vald, Rapla maakond, Eesti Vabariik, 79808"}	OU	all
16451	{"name": "AGOREK OÜ", "email": "vello.agorek@neti.ee", "phone": "(+372)3898221", "sphere": "Elamute ja mitteeluhoonete ehitus", "address": "Lääne-Virumaa, Tapa vald, Jäneda küla, 73602"}	OU	all
16452	{"name": "BIOLAN BALTIC OÜ", "email": "erkki.altrov@biolan.com, myyk@biolan.com", "phone": "(+372)4463381, (+372)4463394", "sphere": "Turba tootmine", "address": "Pärnumaa, Lavassaare vald, Mäe 17, 87001"}	OU	all
16453	{"name": "METSAGRUPP OÜ", "email": "info@metsagrupp.ee", "phone": "(+372)4477900", "sphere": "Söödakultuuri- ja heintaimekasvatus jm üheaastaste põllukultuuride kasvatus", "address": "Pärnumaa, Pärnu, Büroomaja 1, Papiniidu 5, 80010"}	OU	all
16454	{"name": "PIISTAOJA KATSETALU OÜ", "email": "piistaoja@hot.ee", "phone": "(+372)4466744", "sphere": "Piimakarjakasvatus", "address": "Pärnumaa, Tori vald, Piistaoja küla, 86813"}	OU	all
16455	{"name": "E-FARMER OÜ", "email": "cv@efarmer.ee, efarmer@hot.ee, info@efarmer.ee, jyri@efarmer.ee", "phone": "(+372)5043021, (+372)56262702, (+372)7964817", "sphere": "Teravilja, töötlemata tubaka, seemnete ja loomasööda hulgimüük", "address": "Põlvamaa, Põlva, Jaama tn 83, 63308"}	OU	all
16456	{"name": "SAIMRE VILJAKASVATUSE OÜ", "email": "tribus@hot.ee", "phone": "(+372)4394350", "sphere": "Teravilja- (v.a riis) ja kaunviljakasvatus, õlitaimeseemnete kasvatus", "address": "Viljandimaa, Viljandi, Riia mnt. 89/6, 71009"}	OU	all
16457	{"name": "ART LINK BALTIC OÜ", "email": "artlink@artlink.ee, marti@artlink.ee", "phone": "(+372)4890679, (+372)4892823", "sphere": "Mujal liigitamata kodutarvete hulgimüük", "address": "Raplamaa, Rapla, Koidu 22, 79513"}	OU	all
16458	{"name": "TAMMSAARE OÜ", "email": "michel@agropiim.ee, tammsaareou@hot.ee", "phone": "(+372)3837718, (+372)3837724, (+372)5115809, (+372)53478707", "sphere": "Teravilja- (v.a riis) ja kaunviljakasvatus, õlitaimeseemnete kasvatus", "address": "Järvamaa, Albu vald, 73402"}	OU	all
16459	{"name": "RAKVERE ÄRIKESKUS OÜ", "email": "tanel@bvl.ee", "phone": "(+372)53025650, (+372)5527030", "sphere": "Enda või renditud kinnisvara üürileandmine ja käitus", "address": "Lääne-Virumaa, Rakvere, Lõõtspilli 2, 44313"}	OU	all
16460	{"name": "ASERI KOMMUNAAL OÜ", "email": "kommunaal@aserivv.ee", "phone": "(+372)3351580, (+372)53423397", "sphere": "Auru ja konditsioneeritud õhuga varustamine", "address": "Kesktänav 5, 43401, Aseri alevik, Aseri vald, Ida-Viru maakond, Eesti Vabariik, 43401"}	OU	all
16461	{"name": "PIIBELEHT ARENDUS OÜ", "email": "madis.soodla@vestman.ee, piibeleht@vestman.ee, tuuli.tattar@vestman.ee", "phone": ", (+372)7301020", "sphere": "Mujal liigitamata rajatiste ehitus", "address": "Tartumaa, Tartu, Võru 47E, 50111"}	OU	all
16422	{"name": "ONIAR OÜ", "email": "info@oniar.ee, marko.saar@oniar.eu, ott.bauman@oniar.eu, raido.loel@oniar.eu, rein.loel@oniar.eu", "phone": "(+372)4822206", "sphere": "Põllu- ja metsamajandusmasinate tootmine", "address": "Raplamaa, Märjamaa vald, Märjamaa alev, Pargi 16, 78301"}	OU	all
16423	{"name": "ARTEKNO EESTI OÜ", "email": "kimmo.korhonen@artekno.fi", "phone": "(+372)3850006", "sphere": "Plasttaara tootmine", "address": "Ida-Virumaa, Sillamäe, Ehitajate 5/1, 40202"}	OU	all
16424	{"name": "KAIU LT OÜ", "email": "kaiult@trigondairy.com", "phone": null, "sphere": "Piimakarjakasvatus", "address": "Kasvandu tee 5, 79301, Kaiu alevik, Kaiu vald, Rapla maakond, Eesti Vabariik, 79301"}	OU	all
16425	{"name": "SKARABEUS JULGESTUSTEENISTUS OÜ", "email": "info@skarabeus.ee", "phone": "+372 686 2001", "sphere": "Turvatöö, v.a avalik korrakaitse", "address": "Tartumaa, Tartu, Turu 47, 50106"}	OU	all
16426	{"name": "SINDI VESI OÜ", "email": "info@sindivesi.ee, sindivesi@hot.ee", "phone": "(+372)4451461", "sphere": "Veekogumine, -töötlus ja -varustus", "address": "Pärnumaa, Sindi, Hariduse 14, 86703"}	OU	all
16427	{"name": "SELJA OÜ", "email": "oyselja@hot.ee", "phone": "(+372)4427625, (+372)4443817, (+372)4466640", "sphere": "Söödakultuuri- ja heintaimekasvatus jm üheaastaste põllukultuuride kasvatus", "address": "Pärnumaa, Tori vald, Rakvere mnt 17, 86817"}	OU	all
16428	{"name": "TB WORKS OÜ", "email": "heti@heti.ee, info@heti.ee, paul@heti.ee", "phone": "(+372)3258700, (+372)3258705, (+372)5022941, (+372)5142362", "sphere": "Tõste- ja teisaldusseadmete tootmine", "address": "Lääne-Virumaa, Kadrina vald, Raua 1, 45201"}	OU	all
16429	{"name": "DATA PRINT OÜ", "email": "info@dataprint.ee", "phone": "(+372)6674806, (+372)7409111", "sphere": "Mujal liigitamata trükkimine, k.a siiditrükk", "address": "Tartumaa, Tartu, Vaksali 53, 51014"}	OU	all
16430	{"name": "FORMET GRUPP OÜ", "email": "formet@formet.ee, maksim@danilov.ee, oksa.est@mail.ru", "phone": "(+372)3377110, (+372)5051149, (+372)5269191, (+372)53466046", "sphere": "Lammutamine", "address": "Ida-Virumaa, Kiviõli, Sonda tee 3a, 43125"}	OU	all
16431	{"name": "POLVEN OÜ", "email": "larissa@polven.ee, polven@polven.ee, tatjana@polvenauto.ee", "phone": "(+372)3322224, (+372)3325727, (+372)3372030, (+372)3372036, (+372)3395880, (+372)3395881, (+372)3395897", "sphere": "Mootorsõidukite hooldus ja remont", "address": "Ida-Virumaa, Jõhvi, Tartu mnt 30a, 41538"}	OU	all
16432	{"name": "TENE KAUBANDUS OÜ", "email": "info@tene.ee, riho@tene.ee", "phone": "(+372)4722000, (+372)5022758", "sphere": "Kokkupandavate puitehitiste (saunad, suvilad, majad) ja nende elementide tootmine", "address": "Läänemaa, Haapsalu, Lihula mnt 22B, 90510"}	OU	all
16433	{"name": "CONECTRA OÜ", "email": "conectra@conectra.ee", "phone": "7351933", "sphere": "Kodutekstiili tootmine, sh voodipesu, köögirätikud, kardinad, aknasisekatted jm eesriided", "address": "Parve tee 3, 62202, Kavastu küla, Luunja vald, Tartu maakond, Eesti Vabariik, 62202"}	OU	all
16434	{"name": "IONIX SYSTEMS OÜ", "email": "jaan.rahnel@ionix-systems.com, margus.tang@ionix-systems.com, viiu.ounpuu@ionix-systems.com, viiu.ounpuu@volex.com", "phone": "(+372)4521780, (+372)5093048, (+372)5114194, (+372)5156272", "sphere": "Mootorsõidukite elektri- ja elektroonikaseadmete tootmine", "address": "Saaremaa, Kuressaare, Pikk tn 59b, 93815"}	OU	all
16435	{"name": "T.R. TAMME AUTO OÜ", "email": "info@tammeauto.ee", "phone": "(+372)3325342, (+372)3370384, (+372)55533302", "sphere": "Kaubavedu maanteel", "address": "Tammiku, 41541, Tammiku alevik, Jõhvi vald, Ida-Viru maakond, Eesti Vabariik, 41541"}	OU	all
16436	{"name": "TOLMETEX OÜ", "email": "tolmetex@hot.ee, varjetugim@gmail.com", "phone": "(+372)4437637, (+372)53448604", "sphere": "Jäätmete ja jääkide hulgikaubandus, taara ja pakendite kokkuost", "address": "Pärnumaa, Pärnu, Savi 34a, 80010"}	OU	all
16437	{"name": "MAPRI EHITUS OÜ", "email": "lilit@mapri.eu, mapri@mapri.eu, priit@mapri.eu", "phone": "(+372)5066432, (+372)5184662, (+372)6830115", "sphere": "Elamute ja mitteeluhoonete ehitus", "address": "Joosti talu, 67303, Tõutsi küla, Otepää vald, Valga maakond, Eesti Vabariik, 67303"}	OU	all
16438	{"name": "KURE MÕIS OÜ", "email": "kure.mois@mail.ee", "phone": "(+372)5118071, (+372)5209710, (+372)7362365, (+372)7454847", "sphere": "Teravilja- (v.a riis) ja kaunviljakasvatus, õlitaimeseemnete kasvatus", "address": "Tartumaa, Rannu vald, Kure Mõis, 61108"}	OU	all
16439	{"name": "SURJU PM OÜ", "email": "surjupm@hot.ee", "phone": "(+372)4460810", "sphere": "Piimakarjakasvatus", "address": "Pärnumaa, Surju vald, Surju küla, 86401"}	OU	all
16440	{"name": "SAKALA PÕLDUR OÜ", "email": "riina@lemeks.ee", "phone": "(+372)4342330", "sphere": "Teravilja- (v.a riis) ja kaunviljakasvatus, õlitaimeseemnete kasvatus", "address": "Viljandimaa, Viljandi, Arkaadia aed 5, 71004"}	OU	all
16441	{"name": "KEHTNA MÕISA OÜ", "email": "sekretar@kmoy.ee", "phone": "(+372)4875298, (+372)4875330, (+372)4875480, (+372)4892560, (+372)4892561, (+372)4892562", "sphere": "Piimakarjakasvatus", "address": "Raplamaa, Kehtna vald, Kehtna alevik, Pargi 6, 79001"}	OU	all
16462	{"name": "POMEMET OÜ", "email": "pomemet@pomemet.ee", "phone": "(+372)3252141, (+372)5092970", "sphere": "Tõste- ja teisaldusseadmete tootmine", "address": "Kadapiku küla, Kadrina vald, Lääne-Viru maakond, 45212, Kadapiku küla, Kadrina vald, Lääne-Viru maakond, Eesti Vabariik, 45212"}	OU	all
16463	{"name": "LAMIPAP OÜ", "email": "lamipap@papservice.com", "phone": "+372 668 13 56", "sphere": "Lainepaberi ja -papi ning paber- ja papptaara tootmine", "address": "Raplamaa, Kohila vald, Vetuka tee 16, Vilivere küla, 79744"}	OU	all
16464	{"name": "TOOMEMAA OÜ", "email": "mare@markoil.ee", "phone": "(+372)7308205", "sphere": "Enda või renditud kinnisvara üürileandmine ja käitus", "address": "Tartumaa, Tartu, Jannseni 19, 51006"}	OU	all
16465	{"name": "WEISS OÜ", "email": "info@weiss.ee, weiss.oy@mail.ee", "phone": "(+372)4426920, (+372)4460132", "sphere": "Teravilja- (v.a riis) ja kaunviljakasvatus, õlitaimeseemnete kasvatus", "address": "Allika, Võiste alevik, Tahkuranna vald, Pärnumaa, 86501"}	OU	all
16466	{"name": "KAARLI FARM OÜ", "email": "kaarli.farm@mail.ee", "phone": "(+372)3256490, (+372)3270862", "sphere": "Piimakarjakasvatus", "address": "Lääne-Virumaa, Sõmeru vald, Sõmeru alevik, Puiestee 2, 44201"}	OU	all
16467	{"name": "ARU PÕLLUMAJANDUSE OÜ", "email": "andres.lindam@arugrupp.ee, info@arugrupp.ee", "phone": "(+372)3295640, (+372)3295643, (+372)5100143, (+372)5117950", "sphere": "Teravilja- (v.a riis) ja kaunviljakasvatus, õlitaimeseemnete kasvatus", "address": "Hulja alevik, Kadrina vald, Lääne-Viru maakond, 45203, Hulja alevik, Kadrina vald, Lääne-Viru maakond, Eesti Vabariik, 45203"}	OU	all
16468	{"name": "PORT ARTUR OÜ", "email": "eha@portartur.ee, info@portartur.ee, ylle@portartur.ee", "phone": "(+372)4425590, (+372)4478881, (+372)4478883, (+372)4478887, (+372)4478888, (+372)4478889", "sphere": "Muu telekommunikatsioon", "address": "Pärnumaa, Pärnu, Hommiku 2, 80010"}	OU	all
16469	{"name": "ÕLIPLUS OÜ", "email": "info@oliplus.ee, olitaht@hot.ee", "phone": "(+372)3850219", "sphere": "Mootorikütuse jaemüük, sh tanklate tegevus", "address": "J.Kuperjanovi 18 A-5,Tartu,Tartumaa,50409"}	OU	all
16470	{"name": "HUMMULI AGRO OÜ", "email": "eero@agron.ee", "phone": "(+372)7690131", "sphere": "Piimakarjakasvatus", "address": "Hummuli alevik, Hummuli vald, Valga maakond, 68410, Hummuli alevik, Hummuli vald, Valga maakond, Eesti Vabariik, 68410"}	OU	all
16471	{"name": "PRENTON OÜ", "email": "maila77@hot.ee", "phone": null, "sphere": "Metsamajandust abistavad tegevused", "address": "Viljandimaa, Võhma, Koidu 7, 70602"}	OU	all
16472	{"name": "RAKA KOGUMISKESKUS OÜ", "email": "jaanus@raka.ee", "phone": "(+372)3820246", "sphere": "Elusloomade hulgimüük", "address": "Järvamaa, Ambla vald, Raka küla, Noorkariloomade kogumiskeskus, 73502"}	OU	all
16473	{"name": "TTK INVESTEERINGUD OÜ", "email": "kaire@tartutk.ee", "phone": "(+372)7302995, (+372)7305364", "sphere": "Enda või renditud kinnisvara üürileandmine ja käitus", "address": "Tartumaa, Tartu, Ujula 2, 51008"}	OU	all
16474	{"name": "RAKVERE BETOON OÜ", "email": "rakverebetoon@rakverebetoon.ee, valdur@rakverebetoon.ee", "phone": "(+372)3255946", "sphere": "Kokkupandavate betoonehitiste ja nende elementide tootmine", "address": "Lääne-Virumaa, Sõmeru vald, Näpi alevik, Näpi tee 10, 44305"}	OU	all
16475	{"name": "WIRU AUTO OÜ", "email": "info@wiruauto.ee, sekretar@iruauto.ee, sekretar@wiruauto.ee, tonu.paju@wiruauto.ee", "phone": "(+372)3295560", "sphere": "Sõiduautode ja väikebusside (täismassiga alla 3,5 t) müük", "address": "Lääne-Virumaa, Rakvere, Kreutzwaldi tn 7, 44314"}	OU	all
16476	{"name": "HELMETAL IMS OÜ", "email": "info@hims.ee", "phone": "(+372)4491130", "sphere": "Tööstuslike masinate ja seadmete paigaldus", "address": "Pärnumaa, Saarde vald, Tihemetsa alevik, Autotroomi tee 6, 86201"}	OU	all
16477	{"name": "VAO AGRO OÜ", "email": "vao.agro@neti.ee", "phone": "(+372)3220214, (+372)3222254, (+372)5172214, (+372)5278395", "sphere": "Piimakarjakasvatus", "address": "Lääne-Virumaa, Väike-Maarja vald, Vao küla, 46230"}	OU	all
16478	{"name": "JÄRVAKANDI KOMMUNAAL OÜ", "email": "kommunaal@hot.ee", "phone": "(+372)4877274", "sphere": "Veekogumine, -töötlus ja -varustus", "address": "Raplamaa, Järvakandi vald, Järvakandi alev, Energia 1, 79101"}	OU	all
16479	{"name": "HORECA SERVICE OÜ", "email": "info@horeca-service.ee", "phone": "(+372)6112740, (+372)6112741, (+372)7407554", "sphere": "Puu- ja köögivilja hulgimüük", "address": "Pärnumaa, Pärnu, Kirsi 48, 80041"}	OU	all
16480	{"name": "EESTI TÕULOOMAKASVATAJATE ÜHISTU TÜH", "email": null, "phone": "(+372)4873181, (+372)4890680", "sphere": "Loomakasvatuse abitegevused", "address": "Koogimäe 4, 79005, Keava alevik, Kehtna vald, Rapla maakond, Eesti Vabariik, 79005"}	OU	all
16481	{"name": "SAKALA TEED OÜ", "email": "abja@sakalateed.ee, sakalateed@sakalateed.ee, viljandi@sakalateed.ee", "phone": "(+372)4351348, (+372)4355648, (+372)4355650, (+372)4355654, (+372)4377352", "sphere": "Teede ja kiirteede ehitus", "address": "Viljandimaa, Viljandi, Riia mnt 1, 71011"}	OU	all
16482	{"name": "SEGERS EESTI OÜ", "email": "info@segers.ee, viivi@segers.ee", "phone": "(+372)3258900, (+372)53484868", "sphere": "Töörõivaste tootmine", "address": "Lääne-Virumaa, Tapa, Lai 12, 45109"}	OU	all
16483	{"name": "NARVA LOGISTICS OÜ", "email": "julia.kulikova@febparts.ee, sales@febparts.ee", "phone": "(+372)3370170, (+372)55681419", "sphere": "Kaubaladude töö", "address": "Ida-Virumaa, Narva, Kadastiku tn 23a, 21004"}	OU	all
16484	{"name": "HANSURA OÜ", "email": "andreas@hansura.ee, hansura@hansura.ee, info@hansura.ee", "phone": "(+372)3397510, (+372)5155222, (+372)5155333", "sphere": "Metsavarumine", "address": "Ida-Virumaa, Avinurme vald, Võidu 14, EE2055"}	OU	all
16485	{"name": "ANU AIT OÜ", "email": "anu@anuait.ee, anuait@anuait.ee", "phone": "(+372)7425254", "sphere": "Valmissööda tootmine loomakasvatusele", "address": "Tartumaa, Tartu, Betooni 2a, 51014"}	OU	all
16486	{"name": "SLAVIL OIL OÜ", "email": "info@evailoil.ee, slavil@hot.ee", "phone": "(+372)3924334", "sphere": "Mootorikütuse hulgimüük", "address": "Ida-Virumaa, Narva, Rakvere 20-a/6, 20306"}	OU	all
16487	{"name": "FRIENDSLAND OÜ", "email": "friendsland@friendsland.ee", "phone": "(+372)5033376, (+372)7453818", "sphere": "Seakasvatus", "address": "Tartumaa, Alatskivi vald, Päiksi tee 4, 60201"}	OU	all
16488	{"name": "ROVERTO OÜ", "email": "roverto@roverto.ee", "phone": "(+372)4476460, (+372)4476461, (+372)4476462, (+372)4476465, (+372)4476466", "sphere": "Liha ja lihatoodete hulgimüük", "address": "Pärnumaa, Pärnu, Lao 17, 80010"}	OU	all
16489	{"name": "TURU ÄRIMAJA OÜ", "email": "indrek@vallikraavi.ee", "phone": "(+372)7413285", "sphere": "Enda või renditud kinnisvara üürileandmine ja käitus", "address": "Tartumaa, Tartu, Sõbra 54, 50106"}	OU	all
16490	{"name": "JÕGEVA VEEVÄRK OÜ", "email": "aare@jogevalv.ee, info@jvv.ee, kalle.pint@jvv.ee", "phone": "(+372)5267925, (+372)7722720", "sphere": "Kanalisatsioon ja heitveekäitlus", "address": "Jõgevamaa, Jõgeva, Toominga 34, 48303"}	OU	all
16491	{"name": "CHEF FOODS OÜ", "email": "priit@cheffoods.ee", "phone": "(+372)6034426", "sphere": "Liha töötlemine ja säilitamine, k.a tapamajade tegevus", "address": "Harjumaa, Tallinn, Narva mnt 31, 10120"}	OU	all
16492	{"name": "FERDMASTER OÜ", "email": "info@ferdmaster.ee", "phone": "(+372)3325055, (+372)3359700, (+372)3359702, (+372)3359703, (+372)3359705, (+372)3359706, (+372)3359707, (+372)3359708, (+372)3359709, (+372)6259786", "sphere": "Elamute ja mitteeluhoonete ehitus", "address": "Ida-Virumaa, Jõhvi vald, Sompa 36/10, 41553"}	OU	all
16493	{"name": "TARBUS KINNISVARA OÜ", "email": "info@tarbuskinnisvara.ee, mati@automen.ee", "phone": "(+372)7362424, (+372)7362494, (+372)7362527", "sphere": "Enda või renditud kinnisvara üürileandmine ja käitus", "address": "Tartumaa, Tartu, Ringtee 25, 50105"}	OU	all
16494	{"name": "UUSARENDUSE OÜ", "email": "info@lvm.ee", "phone": "(+372)4477000", "sphere": "Enda või renditud kinnisvara üürileandmine ja käitus", "address": "Pärnumaa, Pärnu, Rüütli 41, 80011"}	OU	all
16495	{"name": "HULGI OIL OÜ", "email": "texor@texor.ee", "phone": "(+372)4351886, (+372)4351888", "sphere": "Toidukaupade, jookide ja tubakatoodete spetsialiseerimata hulgimüük", "address": "Viljandimaa, Viljandi, Reinu tee 18, 71020"}	OU	all
16496	{"name": "KÕPU PM OÜ", "email": "kopupm@hot.ee", "phone": "(+372)4396635, (+372)4396739", "sphere": "Teravilja- (v.a riis) ja kaunviljakasvatus, õlitaimeseemnete kasvatus", "address": "Mäe 1, Kõpu alevik, Kõpu vald, Viljandimaa, 71201"}	OU	all
16497	{"name": "HALINGA OÜ", "email": "halinga@halinga.ee,", "phone": ", (+372)4439999", "sphere": "Teravilja- (v.a riis) ja kaunviljakasvatus, õlitaimeseemnete kasvatus", "address": "Pärnumaa, Halinga vald, Tehnokeskuse, 87222"}	OU	all
16498	{"name": "KUNREX OÜ", "email": "jaak@kunrex.ee, kunrex@kunrex.ee", "phone": "(+372)3260740, (+372)5067331, (+372)5160384, (+372)53405768", "sphere": "Masinate ja seadmete remont", "address": "Selja tee 17, 44105, Kunda linn, Lääne-Viru maakond, Eesti Vabariik, 44105"}	OU	all
16499	{"name": "PLEKSOR OÜ", "email": "info@pleksor.ee, margit@pleksor.ee", "phone": "(+372)4355910, (+372)4355913, (+372)4355914, (+372)4355916, (+372)4355917, (+372)4355918", "sphere": "Puidu ja puidu esmatöötlustoodete hulgimüük", "address": "Viljandimaa, Viljandi, Planeedi 8, 71020"}	OU	all
16500	{"name": "VIDEOB OÜ", "email": "info@videobet.ee", "phone": "(+372)6976597, (+372)6976598", "sphere": "Programmeerimine", "address": "Tartumaa, Tartu, Soola 8, 51014"}	OU	all
16501	{"name": "SIGWAR OÜ", "email": "ivi@sigwar.ee, janneaesma@gmail.com, nommesigwar@gmail.com, sigwar@sigwar.ee", "phone": "(+372)3374298, (+372)5296878, (+372)56256371, (+372)56285776", "sphere": "Liha- ja linnulihatoodete tootmine", "address": "Ida-Virumaa, Lüganuse vald, 43309"}	OU	all
16522	{"name": "KT TRANS OÜ", "email": "indrek@kttrans.ee", "phone": "+372 5030156", "sphere": "Kaubavedu maanteel", "address": "Valgamaa, Valga, Tartu tn 6, 68206"}	OU	all
16523	{"name": "BOARDIC EESTI OÜ", "email": "libatse@boardic.com", "phone": "(+372)4427923", "sphere": "Puittaara ja puitaluste tootmine", "address": "Pärnumaa, Halinga vald, Valgu tee 3, Libatse küla, 87202"}	OU	all
16524	{"name": "PAUNVERE AGRO OÜ", "email": "paunvere.agro@gmail.com", "phone": "(+372)5251144, (+372)5287941, (+372)7760586", "sphere": "Teravilja- (v.a riis) ja kaunviljakasvatus, õlitaimeseemnete kasvatus", "address": "Jõgevamaa, Palamuse vald, O. Lutsu 7, 49202"}	OU	all
16525	{"name": "VIRU RAND OÜ", "email": "info@virurand.ee", "phone": "(+372)3372010", "sphere": "Kala, vähilaadsete ja limuste töötlemine ja säilitamine", "address": "Ida-Virumaa, Toila vald, Toila alevik, Jõe 12, 41702"}	OU	all
16526	{"name": "TAVT OÜ", "email": "ivar@tavt.ee, tavt@tavt.ee, toivo@tavt.ee", "phone": "(+372)5286205, (+372)53421502, (+372)55633602, (+372)7404154", "sphere": "Teede ja kiirteede ehitus", "address": "Tartumaa, Tartu, Vitamiini 4, 51014"}	OU	all
16527	{"name": "ERINMETS OÜ", "email": "fest-forest@fest-forest.ee", "phone": "(+372)7303535", "sphere": "Enda või renditud kinnisvara üürileandmine ja käitus", "address": "Tartumaa, Tartu, Oru tn 2-4, 51005"}	OU	all
16528	{"name": "KARINU PM OÜ", "email": "karinu@kreedo.ee", "phone": "(+372)3863142, (+372)3865543", "sphere": "Teravilja- (v.a riis) ja kaunviljakasvatus, õlitaimeseemnete kasvatus", "address": "Järve tee 4, Karinu küla, Järva-Jaani vald, Järva maakond, 73302"}	OU	all
16529	{"name": "WESTWARD OÜ", "email": "westward@westward.ee", "phone": "(+372)3599550, (+372)6380860, (+372)6780760, (+372)7367140", "sphere": "Muude üld- ja eriotstarbeliste masinate ja seadmete hulgimüük", "address": "Ida-Virumaa, Narva, Raudsilla 5, 20308"}	OU	all
16530	{"name": "BENEXON OÜ", "email": "silver@benexon.ee", "phone": "(+372)4333130", "sphere": "Saematerjali tootmine", "address": "Pärnu mnt. 30, Viljandi, Viljandimaa, 71020"}	OU	all
16531	{"name": "KÕO AGRO OÜ", "email": "raamatupidamine@k-agro.ee", "phone": "(+372)4351474", "sphere": "Teravilja- (v.a riis) ja kaunviljakasvatus, õlitaimeseemnete kasvatus", "address": "Aini, Kõo küla, Kõo vald, Viljandi maakond, 70501"}	OU	all
16532	{"name": "TEAMWOOD OÜ", "email": "olle@teamwoodtimber.com, tarmo@teamwoodtimber.com", "phone": "(+372)4346611", "sphere": "Saematerjali tootmine", "address": "Ida-Virumaa, Sonda vald, Sonda alevik, Sepa 18a, 43001"}	OU	all
16533	{"name": "UPONOR INFRA OÜ", "email": "info@kwhpipe.ee", "phone": "(+372)7362039, (+372)7362041", "sphere": "Puidu ja ehitusmaterjalide vahendamine", "address": "Tartumaa, Tartu, Ringtee tn 26, 51013"}	OU	all
16534	{"name": "JAVICAR OÜ", "email": "anu@javicar.ee, info@javicar.ee, taimi@javicar.ee", "phone": "(+372)4536610, (+372)4536612", "sphere": "Puidu ja puidu esmatöötlustoodete hulgimüük", "address": "Saaremaa, Kuressaare, Pikk 62h, 93815"}	OU	all
16535	{"name": "KAUBI FARMID OÜ", "email": "kaubi@kaubi.ee", "phone": "(+372)7303527, (+372)7312013", "sphere": "Seakasvatus", "address": "Altnurga küla, 49002, Altnurga küla, Puurmani vald, Jõgeva maakond, Eesti Vabariik, 49002"}	OU	all
16536	{"name": "ÕNNE PIIMAKARJATALU OÜ", "email": "onnemati@hot.ee, opkttu@hot.ee", "phone": "(+372)7759183", "sphere": "Piimakarjakasvatus", "address": "Võhma tee 9, 48131, Esku küla, Põltsamaa vald, Jõgeva maakond, Eesti Vabariik, 48131"}	OU	all
16537	{"name": "LADE OÜ", "email": "lifejackets@lade.ee", "phone": "(+372)4720450", "sphere": "Muude valmis tekstiiltoodete tootmine", "address": "Hiiumaa, Kärdla, Kõrgessaare mnt 43, 92412"}	OU	all
16538	{"name": "FLEXOIL OÜ", "email": "flexoil@flexoil.ee", "phone": "(+372)4477877", "sphere": "Mootorsõidukite osade ja lisaseadmete hulgimüük", "address": "Pärnumaa, Pärnu, Savi 14, 80041"}	OU	all
16539	{"name": "POLVEN FOODS OÜ", "email": "info@polvenfoods.ee", "phone": "(+372)3372030", "sphere": "Maitseainete ja -kastmete tootmine", "address": "Ida-Virumaa, Kohtla-Järve, Altserva tn 31, 31026"}	OU	all
16540	{"name": "AUTOSPIRIT TARTU OÜ", "email": "tartu@autospirit.ee", "phone": "(+372)7301367", "sphere": "Sõiduautode ja väikebusside (täismassiga alla 3,5 t) müük", "address": "Tartumaa, Tartu, Turu 47, 51013"}	OU	all
16541	{"name": "OPTIMA TÖÖSTUS OÜ", "email": "info@optima.ee", "phone": "(+372)4892474, (+372)4892475", "sphere": "Elektriliste valgustusseadmete tootmine", "address": "Raplamaa, Rapla, Savi 8, 79514"}	OU	all
16502	{"name": "EESTI KILLUSTIK OÜ", "email": "info@eestikillustik.ee", "phone": "(+372)5030983, (+372)5177913, (+372)7755207, (+372)7755264, +372 503 0983, +372 5303 9898, +372 776 5069", "sphere": "Killustiku tootmine", "address": "Rõstla karjäär, 48022, Rõstla küla, Põltsamaa vald, Jõgeva maakond, Eesti Vabariik, 48022"}	OU	all
16503	{"name": "VOORE MÕIS OÜ", "email": "voorefarm@voorefarm.ee", "phone": "(+372)3278120, (+372)3278122", "sphere": "Piimakarjakasvatus", "address": "Lääne-Virumaa, Vinni vald, Viru-Jaagupi alevik, Rahu 4, 46604"}	OU	all
16504	{"name": "E-PIIM TRANSPORT OÜ", "email": "epiim@epiim.ee, indrek@epiimtransport.ee, tiina.aas@epiim.ee", "phone": "(+372)3838300, (+372)6217245, (+372)7752082, (+372)7762200, (+372)7762203, (+372)7762217", "sphere": "Kaubavedu maanteel", "address": "Jõgevamaa, Põltsamaa, Pajusi mnt 18k, 48106"}	OU	all
16505	{"name": "BALTIC CONNEXIONS OÜ", "email": "arvo@balcon.ee, balcon@balcom.ee, balcon@balcon.ee", "phone": "(+372)5076027, (+372)7766966", "sphere": "Saematerjali tootmine", "address": "Tabivere puidutööstus, 49127, Tabivere alevik, Tabivere vald, Jõgeva maakond, Eesti Vabariik, 49127"}	OU	all
16506	{"name": "PRINT BEST OÜ", "email": "info@printbest.ee, tanel@printbest.ee", "phone": "(+372)4354666, (+372)5035251", "sphere": "Tavajäätmete kogumine", "address": "Viljandimaa, Viljandi, Männimäe tee 4, 71020"}	OU	all
16507	{"name": "RAAM TRANSPORT OÜ", "email": "meelisraam@gmail.com, raamtransport@gmail.com", "phone": "(+372)5037040, (+372)7822002", "sphere": "Kaubavedu maanteel", "address": "Võrumaa, Võru, Vilja 14 B, 65605"}	OU	all
16508	{"name": "SELECT SERVICE OÜ", "email": "info@selecservice.ee, info@selectservice.ee", "phone": "(+372)3374970", "sphere": "Muu vedel- ja gaaskütuse jms hulgimüük", "address": "Ida-Virumaa, Kohtla vald, Järve küla, 30331"}	OU	all
16509	{"name": "LATTER NT OÜ", "email": "info@latter.ee", "phone": "+372 5128391", "sphere": "Mujal liigitamata metalltoodete tootmine", "address": "Pikk 37b,Ambla alevik,Ambla vald,Järvamaa,73502"}	OU	all
16510	{"name": "RAUM OÜ", "email": "priit@raum.ee, rainis@raum.ee, raum@raum.ee", "phone": "(+372)3255671, (+372)3255672, (+372)5156342, (+372)53444989", "sphere": "Puidust uste, akende, aknaluukide ja nende raamide tootmine (k.a väravad)", "address": "Lääne-Virumaa, Rakvere, Tootmise tn 6, 44317"}	OU	all
16511	{"name": "SANDLA PUIT OÜ", "email": "info@sandlapuit.ee, kalmer@javicar.ee, kalmer@sandlapuit.ee", "phone": "(+372)4536612, (+372)4595288", "sphere": "Kokkupandavate puitehitiste (saunad, suvilad, majad) ja nende elementide tootmine", "address": "Sandla, 94101, Sandla küla, Pihtla vald, Saare maakond, Eesti Vabariik, 94101"}	OU	all
16512	{"name": "AIGREN OÜ", "email": "info@aigren.ee", "phone": "(+372)5110054, (+372)7868077", "sphere": "Kruusa- ja liivakarjääride tegevus, savi ja kaoliini kaevandamine", "address": "Võrumaa, Võru, Räpina mnt 22B, 65606"}	OU	all
16513	{"name": "PINTMANN GRUPP OÜ", "email": "info@kubija.ee, info@pintmann.ee, keithi.valli@kubija.ee, ruth.hoole@kubija.ee", "phone": "(+372)51928116, (+372)7866000, (+372)7866035, (+372)7866043", "sphere": "Hotellid", "address": "Võrumaa, Võru, Männiku tn 43A, 65603"}	OU	all
16514	{"name": "AGOMER REHVID OÜ", "email": "info@agomer.ee", "phone": "(+372)4896332, (+372)6237890, (+372)6664230", "sphere": "Muude mootorsõidukite müük", "address": "Raplamaa, Rapla, Viljandi mnt 67, 79511"}	OU	all
16515	{"name": "ARCTIC FINLAND HOUSE OÜ", "email": ", info@arctic.ee", "phone": ", (+372)3846360", "sphere": "Kokkupandavate puitehitiste (saunad, suvilad, majad) ja nende elementide tootmine", "address": "Järvamaa, Järva-Jaani vald, Järva-Jaani alev, Koeru tee 17A, 73301"}	OU	all
16516	{"name": "PRESTONE OÜ", "email": "allan@prestone.ee", "phone": "(+372)3325522", "sphere": "Enda kinnisvara ost ja müük", "address": "Ida-Virumaa, Kohtla-Järve, Järveküla tee 87, 30322"}	OU	all
16517	{"name": "VENNAD EHITUS OÜ", "email": "vennad@vennad.ee", "phone": "(+372)7367535", "sphere": "Elamute ja mitteeluhoonete ehitus", "address": "Tartumaa, Tartu, Teguri 37, 51013"}	OU	all
16518	{"name": "ALVISTRA OÜ", "email": "alvistra1@hot.ee, alvistra@hot.ee", "phone": "(+372)5143109, (+372)7484404, (+372)7484606, (+372)7484800", "sphere": "Autopesu jms teenindus", "address": "Tartumaa, Tartu, Jaama tn 173A, 50705"}	OU	all
16519	{"name": "VÕRU TRANS OÜ", "email": "vorutrans@vorutrans.ee", "phone": "(+372)7828277", "sphere": "Kaubavedu maanteel", "address": "Võrumaa, Võru, Pikk 6, 65604"}	OU	all
16520	{"name": "BALTECO MÖÖBEL OÜ", "email": "baltecomoobel@baltecomoobel.ee", "phone": "(+372)4892479, (+372)4892481", "sphere": "Plastist sanitaarseadmete tootmine (vannid, kraanikausid jne)", "address": "Raplamaa, Märjamaa vald, Mööblitööstuse, 78203"}	OU	all
16521	{"name": "DEMITOL OÜ", "email": "demitol@hot.ee", "phone": "(+372)3560209", "sphere": "Jaemüük muudes spetsialiseerimata kauplustes", "address": "Ida-Virumaa, Narva, Kangelaste prospekt 3a, 20305"}	OU	all
16542	{"name": "KABALA AGRO OÜ", "email": "kabalaagrooy@hot.ee, oyest@estpak.ee", "phone": "(+372)3871416, (+372)3877817", "sphere": "Teravilja- (v.a riis) ja kaunviljakasvatus, õlitaimeseemnete kasvatus", "address": "Järvamaa, Türi vald, Tehnika 1, Oisu alevik, 72301"}	OU	all
16543	{"name": "MCC GROUP AS", "email": "kadi.jaanson@hansacandle.com, sekretar@hansacandle.com", "phone": "(+372)4330222, (+372)4330901", "sphere": "Enda või renditud kinnisvara üürileandmine ja käitus", "address": "Viljandimaa, Viljandi, Vabriku 2, 71011"}	OU	all
16544	{"name": "ESTELAXE OÜ", "email": "info@estelaxe.ee, kalev@estelaxe.ee, kalev@lapimetall.ee", "phone": "(+372)5052877, (+372)5063294, (+372)7825037", "sphere": "Muude plasttoodete tootmine", "address": "Võrumaa, Võru vald, Tehnika tn 2, 65509"}	OU	all
16545	{"name": "ENSTO LIGHTING OÜ", "email": "alppilux@alppilux.fi, lighting.paide@ensto.com", "phone": null, "sphere": "Elektriliste valgustusseadmete tootmine", "address": "Järvamaa, Paide, Pärnuvälja 9, 72720"}	OU	all
16546	{"name": "KYYRIX OÜ", "email": "kyyrix@kyyrix.ee, toomas@kyyrix.ee", "phone": "(+372)7346606", "sphere": "Hoonete üldpuhastus", "address": "Tartumaa, Tartu, Teguri 45a, 51013"}	OU	all
16547	{"name": "A & K HOLDING OÜ", "email": "kairi@haserv.ee, kristiina@haserv.ee, marko@haserv.ee, sire@haserv.ee", "phone": "(+372)6011200, (+372)7301810, (+372)7301812, (+372)7301813, (+372)7301817, (+372)7304862", "sphere": "Enda või renditud kinnisvara üürileandmine ja käitus", "address": "Reola, 61701, Reola küla, Ülenurme vald, Tartu maakond, Eesti Vabariik, 61701"}	OU	all
16548	{"name": "KÕLJALA PÕLLUMAJANDUSLIK OÜ", "email": "koljala.poy@mail.ee", "phone": "(+372)4591160, (+372)4591172", "sphere": "Teravilja- (v.a riis) ja kaunviljakasvatus, õlitaimeseemnete kasvatus", "address": "Töökoja, Kõljala küla, Pihtla vald, Saare maakond, 94102"}	OU	all
16549	{"name": "VIRMA M.T. OÜ", "email": "virmamt@hot.ee", "phone": "(+372)3223907, (+372)3223908, (+372)3225275", "sphere": "Jaemüük spetsialiseerimata kauplustes, kus on ülekaalus toidukaubad, joogid ja tubakatooted", "address": "Lääne-Virumaa, Rakvere, Tallinna 8, EE2100"}	OU	all
16550	{"name": "VESSET OÜ", "email": "info@vesset.ee", "phone": "(+372)4622450, (+372)4622452, (+372)4622456, (+372)4633042, (+372)6806252", "sphere": "Saematerjali tootmine", "address": "Hiiumaa, Kärdla, Põllu tn 33, 92414"}	OU	all
16551	{"name": "ALUOJA OÜ", "email": "info@aluoja.ee", "phone": "(+372)7330200, (+372)7366751", "sphere": "Mujal liigitamata kodutarvete hulgimüük", "address": "Tartumaa, Tartu, Mõisavahe 29-26, 50707"}	OU	all
16552	{"name": "ARENSBURG OÜ", "email": "arensburg@arensburg.ee, info@arensburg.ee, terje@arensburg.ee, veski@veskitrahter.ee", "phone": "(+372)4524701, (+372)4524722, (+372)4533540, (+372)5082861", "sphere": "Hotellid", "address": "Saaremaa, Kuressaare, Lossi 15, 93816"}	OU	all
16553	{"name": "DORPAT OÜ", "email": "dorpat@dorpat.ee, info@dorpat.ee, raili@dorbat.ee", "phone": "(+372)7337180, (+372)7337187, (+372)7337190", "sphere": "Hotellid", "address": "Tartumaa, Tartu, Soola 6, 51014"}	OU	all
16554	{"name": "VILJANDI ÕHUMEISTER OÜ", "email": "ago@vom.ee", "phone": "(+372)4355200", "sphere": "Kütte-, ventilatsiooni- ja kliimaseadmete paigaldus", "address": "Kase tee 12, 71024, Jämejala küla, Viljandi vald, Viljandi maakond, Eesti Vabariik, 71024"}	OU	all
16555	{"name": "LARMEK OÜ", "email": "info@larmek.ee, urmas.reinaste@larmek.ee", "phone": ", (+372)4420049, (+372)5064246", "sphere": "Mujal liigitamata metalltoodete tootmine", "address": "Pärnumaa, Pärnu, Raba 19A, 80041"}	OU	all
16556	{"name": "JÄRVAKANDI PUIDUTEHAS OÜ", "email": "jpt@hot.ee", "phone": "(+372)4890603, (+372)4890605", "sphere": "Puidu saagimine ja hööveldamine", "address": "Raplamaa, Järvakandi vald, Järvakandi alev, Tehaste 14, 79101"}	OU	all
16557	{"name": "REINU-EINARI OÜ", "email": "einar@reinueinari.ee, info@reinueinari.ee, linda@reinueinari.ee", "phone": "(+372)4729137", "sphere": "Teravilja- (v.a riis) ja kaunviljakasvatus, õlitaimeseemnete kasvatus", "address": "Üdruma töökoja, 90720, Üdruma küla, Kullamaa vald, Lääne maakond, Eesti Vabariik, 90720"}	OU	all
16558	{"name": "RAADIO KADI OÜ", "email": "gunnar@kadi.ee, kadi@kadi.ee", "phone": "(+372)4524367, (+372)4524440, (+372)56504440", "sphere": "Ajalehtede kirjastamine", "address": "Saaremaa, Kuressaare, Kohtu 1, 93812"}	OU	all
16559	{"name": "KAARSILLA GRUPP OÜ", "email": "eve@kaarsilla.ee, toomas@kaarsilla.ee", "phone": "(+372)7339070", "sphere": "Juuksuri- ja muu iluteenindus", "address": "Tartumaa, Tartu, Ülikooli tn 2a, 51003"}	OU	all
16560	{"name": "VALLEY OÜ", "email": "info@valleytal.ee", "phone": "(+372)4447780, (+372)4447788", "sphere": "Vaipade ja vaipkatete tootmine", "address": "Pärnumaa, Vändra alevi vald, Vändra alev, Vihtra tee 1A, 87701"}	OU	all
16561	{"name": "\\"VEA\\" OÜ", "email": "tallinn@vea.ee, tartu@vea.ee", "phone": "(+372)6720440, (+372)6720461, (+372)7380254, (+372)7380381, (+372)7381309", "sphere": "Kaubavedu maanteel", "address": "Tartumaa, Tartu, Riia 136, 51014"}	OU	all
16562	{"name": "ROTAKS-R OÜ", "email": "info@rotaks.ee", "phone": "(+372)3220260, (+372)3220261, (+372)3220460, (+372)3220470, (+372)7497167", "sphere": "Teravilja, töötlemata tubaka, seemnete ja loomasööda hulgimüük", "address": "Pikk 30, Väike-Maarja alevik, Väike-Maarja vald, Lääne-Virumaa,"}	OU	all
16563	{"name": "NIGULA PIIM OÜ", "email": "nigula.nigula@mail.ee, vaino.narusk@maag.ee", "phone": ", (+372)4796467, (+372)5133676, (+372)53412122", "sphere": "Piimakarjakasvatus", "address": "90807, Nigula küla, Lääne-Nigula vald, Lääne maakond, Eesti Vabariik, 90807"}	OU	all
16564	{"name": "LANLAB OÜ", "email": "ain@lanlab.ee, langel@ut.ee", "phone": "(+372)5165830, (+372)7383330", "sphere": "Meditsiiniseadmete ja kirurgiriistade ning ortopeediliste abivahendite hulgimüük", "address": "Tartumaa, Tartu, Riia 181A, 51014"}	OU	all
16565	{"name": "TÜRI BEL-EST OÜ", "email": "turibelest@gmail.com", "phone": "(+372)3857013, (+372)3857015, (+372)5279768", "sphere": "Põllumajandusmasinate, -seadmete ja lisaseadmete hulgimüük", "address": "Järvamaa, Türi, Kalevi 9a, 72213"}	OU	all
16566	{"name": "HMPK OÜ", "email": "info@hmpk.ee, oliver@hmpk.ee, urmas@hmpk.ee", "phone": "(+372)4592412, (+372)4631522, (+372)51973900", "sphere": "Puidu ja puidu esmatöötlustoodete hulgimüük", "address": "Hiiumaa, Kärdla, Lubjaahju 3, 92411"}	OU	all
16567	{"name": "SW KÜTUS OÜ", "email": "tarmo@swenergia.ee", "phone": "(+372)56640892", "sphere": "Muu vedel- ja gaaskütuse jms hulgimüük", "address": "Pärnumaa, Paikuse vald, Tehnika 1, 86602"}	OU	all
16568	{"name": "PT MIKRO OÜ", "email": "fama@itshop.ee, info@itshop.ee, ingrid@itshop, johvi@itshop.ee, krooni@itshop.ee, parnu@itshop.ee, rakvere@itshop.ee, tallinn@itshop.ee, tartulk@itshop.ee, viljandi@itshop.ee", "phone": "(+372)3223456, (+372)3225011, (+372)3225410, (+372)3356253, (+372)3566414, (+372)4333122, (+372)4433141, (+372)6010000", "sphere": "Arvutite, arvuti välisseadmete ja tarkvara jaemüük spetsialiseeritud kauplustes", "address": "Lääne-Virumaa, Rakvere, Rägavere tee 37, 44312"}	OU	all
16569	{"name": "FAASION OÜ", "email": "info@faasion.ee, tiina@faasion.ee", "phone": "(+372)4622500, (+372)4622503, (+372)4622504, (+372)4622505, (+372)4622506, (+372)4622507, (+372)4622508, (+372)4622509, (+372)4622621, (+372)4622622", "sphere": "Sanitaarseadmete jm ehitusmaterjalide hulgimüük", "address": "Hiiumaa, Kärdla, Põllu tn 32, 92414"}	OU	all
16570	{"name": "GREENFEED OÜ", "email": "greenfeed@greenfeed.ee", "phone": null, "sphere": "Teravilja, töötlemata tubaka, seemnete ja loomasööda hulgimüük", "address": "Külaotsa, 61207, Külaaseme küla, Konguta vald, Tartu maakond, Eesti Vabariik, 61207"}	OU	all
16571	{"name": "PAISTEVÄLJA OÜ", "email": "jalgsema@kreedo.ee", "phone": "(+372)3863436", "sphere": "Segapõllumajandus", "address": "Töökoja, 73304, Jalgsema küla, Järva-Jaani vald, Järva maakond, Eesti Vabariik, 73304"}	OU	all
16572	{"name": "VAROLA OÜ", "email": "info@varola.ee", "phone": "(+372)7951475", "sphere": "Kokkupandavate puitehitiste (saunad, suvilad, majad) ja nende elementide tootmine", "address": "Põlvamaa, Räpina vald, Linte küla, 64402"}	OU	all
16573	{"name": "KALDA MAJAD OÜ", "email": "info@kaldamajad.ee", "phone": "(+372)4431899", "sphere": "Enda kinnisvara ost ja müük", "address": "Pärnumaa, Pärnu, Tallinna mnt 70, 80034"}	OU	all
16574	{"name": "LÕUNA PAGARID AS", "email": "eda@lounapagarid.ee, irja@lounapagarid.ee, lounapagarid@lounapagarid.ee", "phone": "(+372)5032987, (+372)55674895, (+372)7976172, (+372)7976175", "sphere": "Leiva- ja saiatootmine, säilitusaineteta pagaritoodete tootmine", "address": "Põlvamaa, Põlva, Vabriku 41, 63306"}	OU	all
16575	{"name": "TARKON KINNISVARA OÜ", "email": "maritliiva@hotmail.com, raivo.kiivit@gmail.com", "phone": "(+372)5162157", "sphere": "Enda või renditud kinnisvara üürileandmine ja käitus", "address": "Tartumaa, Tartu, Puiestee tn 2, 50303"}	OU	all
16576	{"name": "CEDO KAUBANDUS OÜ", "email": ", info@cedo.ee", "phone": "(+372)4429411, (+372)7311712", "sphere": "Muude mootorsõidukite müük", "address": "Tartumaa, Tartu, Vasara 52D, 50113"}	OU	all
16577	{"name": "SAARE FISHEXPORT OÜ", "email": "info@saarefishexport.ee", "phone": "(+372)4545888, (+372)5054560", "sphere": "Kala, vähilaadsete ja limuste töötlemine ja säilitamine", "address": "Harjumaa, Tallinn, Lootuse pst 80a, 11618"}	OU	all
16578	{"name": "AUTOESINDUS OÜ", "email": "info@autoesindus.ee", "phone": "(+372)3396201", "sphere": "Sõiduautode ja väikebusside (täismassiga alla 3,5 t) müük", "address": "Ida-Virumaa, Jõhvi, Lääne 1b, 41533"}	OU	all
16579	{"name": "FINEST METALLID OÜ", "email": "andrus@finestmetallid.ee, info@finestmetallid.ee, kaido@finestmetallid.ee", "phone": "(+372)4429240, (+372)5245984, (+372)58611859", "sphere": "Kütuste, maakide, metallide ja tööstuskemikaalide vahendamine", "address": "Pärnumaa, Pärnu, Turba 29, 80010"}	OU	all
16580	{"name": "SEPA REHV OÜ", "email": "separehv@hot.ee", "phone": "(+372)7303786, (+372)7311157", "sphere": "Kummirehvide ja sisekummide tootmine, kummirehvide protekteerimine ja taastamine", "address": "Tartumaa, Tartu, Sepa 22, 50113"}	OU	all
16581	{"name": "ARRIERUM OÜ", "email": "arri@hot.ee, arrierum@hot.ee, arrierum@silink.ee, info@arrierum.com, office@arrierum.com", "phone": "(+372)3929393, (+372)3929458, (+372)6062465, (+372)6062466", "sphere": "Tõste- ja teisaldusseadmete ja -masinate ning nende varuosade hulgimüük, (k.a konteinerid)", "address": "Kesk 2/11,Sillamäe,Ida-Virumaa,40231"}	OU	all
16582	{"name": "PACKDALE LOGISTIC OÜ", "email": "onneratas@hot.ee", "phone": "(+372)3560484, (+372)3566550, (+372)3566551, (+372)3566554", "sphere": "Puidu ja puidu esmatöötlustoodete hulgimüük", "address": "Ida-Virumaa, Narva, Rahu 4a-201, 21003"}	OU	all
16583	{"name": "AKVEDUKT OÜ", "email": "info@akvedukt.ee, janne@akvedukt.ee, kauri@akvedukt.ee, ladu@akvedukt.ee, leho@akvedukt.ee, parnu@akvedukt.ee, tiit@akvedukt.ee, tln@akvedukt.ee, vallo@akvedukt.ee", "phone": "(+372)4478430, (+372)4492208, (+372)6016977, (+372)6075061, (+372)6075275, (+372)6267878", "sphere": "Veevarustus- ja kütteseadmete ning nende koosteosade hulgimüük", "address": "Pärnumaa, Pärnu, Lao 8, 80042"}	OU	all
16584	{"name": "VOORE FARM OÜ", "email": ", voorefarm@voorefarm.ee", "phone": ", (+372)3278120", "sphere": "Teravilja- (v.a riis) ja kaunviljakasvatus, õlitaimeseemnete kasvatus", "address": "Rahu 4, 46604, Viru-Jaagupi alevik, Vinni vald, Lääne-Viru maakond, Eesti Vabariik, 46604"}	OU	all
16585	{"name": "SELISTA EHITUS OÜ", "email": "indrek@selista.ee, ott@selista.ee, selista@hot.ee, terje@selista.ee", "phone": "(+372)5238334, (+372)53304363, (+372)7828625, (+372)7828626", "sphere": "Elamute ja mitteeluhoonete ehitus", "address": "Võrumaa, Võru, Vilja 14B, 65605"}	OU	all
16586	{"name": "VILJANDI NAFTABAAS OÜ", "email": "viljandi@naftabaas.ee", "phone": "(+372)4351881, (+372)56657300", "sphere": "Mootorikütuse hulgimüük", "address": "Viljandimaa, Viljandi, Reinu tee 18, 71020"}	OU	all
\.


--
-- Name: orgs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('orgs_id_seq', 16586, true);


--
-- Name: orgs orgs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY orgs
    ADD CONSTRAINT orgs_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

