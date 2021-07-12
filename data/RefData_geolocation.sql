DROP TABLE if exists sensors;
CREATE TABLE sensors (
 sensor_id INT,
 sensor_ts TIMESTAMP,
 sensor_0 DOUBLE,
 sensor_1 DOUBLE,
 sensor_2 DOUBLE,
 sensor_3 DOUBLE,
 sensor_4 DOUBLE,
 sensor_5 DOUBLE,
 sensor_6 DOUBLE,
 sensor_7 DOUBLE,
 sensor_8 DOUBLE,
 sensor_9 DOUBLE,
 sensor_10 DOUBLE,
 sensor_11 DOUBLE,
 is_healthy INT,
 PRIMARY KEY (sensor_ID, sensor_ts)
)
PARTITION BY HASH PARTITIONS 16
STORED AS KUDU
TBLPROPERTIES ('kudu.num_tablet_replicas' = '1');


DROP TABLE if exists RefData_GeoLocation;
CREATE TABLE if not exists RefData_GeoLocation (
 sensor_id INT,
 city STRING,
 lat DOUBLE,
 lon DOUBLE,
 PRIMARY KEY (sensor_ID)
)
PARTITION BY HASH PARTITIONS 16
STORED AS KUDU
TBLPROPERTIES ('kudu.num_tablet_replicas' = '1');


INSERT INTO RefData_GeoLocation VALUES (1,"Geneva",46.195602,6.148113);
INSERT INTO RefData_GeoLocation VALUES (2,"Zürich",47.366667,8.55);
INSERT INTO RefData_GeoLocation VALUES (3,"Basel",47.558395,7.573271);
INSERT INTO RefData_GeoLocation VALUES (4,"Bern",46.916667,7.466667);
INSERT INTO RefData_GeoLocation VALUES (5,"Lausanne",46.533333,6.666667);
INSERT INTO RefData_GeoLocation VALUES (6,"Lucerne",47.083333,8.266667);
INSERT INTO RefData_GeoLocation VALUES (7,"Lugano",46.009279,8.955576);
INSERT INTO RefData_GeoLocation VALUES (8,"Sankt Fiden",47.43162,9.39845);
INSERT INTO RefData_GeoLocation VALUES (9,"Chur",46.856753,9.526918);
INSERT INTO RefData_GeoLocation VALUES (10,"Schaffhausen",47.697316,8.634929);
INSERT INTO RefData_GeoLocation VALUES (11,"Fribourg",46.79572,7.154748);
INSERT INTO RefData_GeoLocation VALUES (12,"Neuchâtel",46.993089,6.93005);
INSERT INTO RefData_GeoLocation VALUES (13,"Tripon",46.270839,7.317785);
INSERT INTO RefData_GeoLocation VALUES (14,"Zug",47.172421,8.517445);
INSERT INTO RefData_GeoLocation VALUES (15,"Frauenfeld",47.55993,8.8998);
INSERT INTO RefData_GeoLocation VALUES (16,"Bellinzona",46.194902,9.024729);
INSERT INTO RefData_GeoLocation VALUES (17,"Aarau",47.389616,8.052354);
INSERT INTO RefData_GeoLocation VALUES (18,"Herisau",47.38271,9.27186);
INSERT INTO RefData_GeoLocation VALUES (19,"Solothurn",47.206649,7.516605);
INSERT INTO RefData_GeoLocation VALUES (20,"Schwyz",47.027858,8.656112);
INSERT INTO RefData_GeoLocation VALUES (21,"Liestal",47.482779,7.742975);
INSERT INTO RefData_GeoLocation VALUES (22,"Delémont",47.366429,7.329005);
INSERT INTO RefData_GeoLocation VALUES (23,"Sarnen",46.898509,8.250681);
INSERT INTO RefData_GeoLocation VALUES (24,"Altdorf",46.880422,8.644409);
INSERT INTO RefData_GeoLocation VALUES (25,"Stansstad",46.97731,8.34005);
INSERT INTO RefData_GeoLocation VALUES (26,"Glarus",47.04057,9.068036);
INSERT INTO RefData_GeoLocation VALUES (27,"Appenzell",47.328414,9.409647);
INSERT INTO RefData_GeoLocation VALUES (28,"Saignelégier",47.255435,6.994608);
INSERT INTO RefData_GeoLocation VALUES (29,"Affoltern am Albis",47.281224,8.45346);
INSERT INTO RefData_GeoLocation VALUES (30,"Cully",46.488301,6.730109);
INSERT INTO RefData_GeoLocation VALUES (31,"Romont",46.696483,6.918037);
INSERT INTO RefData_GeoLocation VALUES (32,"Aarberg",47.043835,7.27357);
INSERT INTO RefData_GeoLocation VALUES (33,"Scuol",46.796756,10.305946);
INSERT INTO RefData_GeoLocation VALUES (34,"Fleurier",46.903265,6.582135);
INSERT INTO RefData_GeoLocation VALUES (35,"Unterkulm",47.30998,8.11371);
INSERT INTO RefData_GeoLocation VALUES (36,"Stans",46.95805,8.36609);
INSERT INTO RefData_GeoLocation VALUES (37,"Lichtensteig",47.337551,9.084078);
INSERT INTO RefData_GeoLocation VALUES (38,"Yverdon-les-Bains",46.777908,6.635502);
INSERT INTO RefData_GeoLocation VALUES (39,"Boudry",46.953019,6.83897);
INSERT INTO RefData_GeoLocation VALUES (40,"Balsthal",47.31591,7.693047);
INSERT INTO RefData_GeoLocation VALUES (41,"Dornach",47.478042,7.616417);
INSERT INTO RefData_GeoLocation VALUES (42,"Lachen",47.19927,8.85432);
INSERT INTO RefData_GeoLocation VALUES (43,"Payerne",46.82201,6.93608);
INSERT INTO RefData_GeoLocation VALUES (44,"Baden",47.478029,8.302764);
INSERT INTO RefData_GeoLocation VALUES (45,"Bad Zurzach",47.589169,8.289621);
INSERT INTO RefData_GeoLocation VALUES (46,"Tafers",46.814829,7.218519);
INSERT INTO RefData_GeoLocation VALUES (47,"Haslen",47.369308,9.367519);
INSERT INTO RefData_GeoLocation VALUES (48,"Echallens",46.642498,6.637324);
INSERT INTO RefData_GeoLocation VALUES (49,"Rapperswil-Jona",47.228942,8.833889);
INSERT INTO RefData_GeoLocation VALUES (50,"Bulle",46.619499,7.056743);
INSERT INTO RefData_GeoLocation VALUES (51,"Bülach",47.518898,8.536967);
INSERT INTO RefData_GeoLocation VALUES (52,"Sankt Gallen",47.43639,9.388615);
INSERT INTO RefData_GeoLocation VALUES (53,"Wil",47.460507,9.04389);
INSERT INTO RefData_GeoLocation VALUES (54,"Zofingen",47.289945,7.947274);
INSERT INTO RefData_GeoLocation VALUES (55,"Vevey",46.465264,6.841168);
INSERT INTO RefData_GeoLocation VALUES (56,"Renens",46.539894,6.588096);
INSERT INTO RefData_GeoLocation VALUES (57,"Brugg",47.481527,8.203014);
INSERT INTO RefData_GeoLocation VALUES (58,"Laufenburg",47.559248,8.060446);
INSERT INTO RefData_GeoLocation VALUES (59,"La Chaux-de-Fonds",47.104417,6.828892);
INSERT INTO RefData_GeoLocation VALUES (60,"Andelfingen",47.594829,8.679678);
INSERT INTO RefData_GeoLocation VALUES (61,"Dietikon",47.404446,8.394984);
INSERT INTO RefData_GeoLocation VALUES (62,"Winterthur",47.50564,8.72413);
INSERT INTO RefData_GeoLocation VALUES (63,"Thun",46.751176,7.621663);
INSERT INTO RefData_GeoLocation VALUES (64,"Le Locle",47.059533,6.752278);
INSERT INTO RefData_GeoLocation VALUES (65,"Bremgarten",47.352604,8.329955);
INSERT INTO RefData_GeoLocation VALUES (66,"Tiefencastel",46.660138,9.57883);
INSERT INTO RefData_GeoLocation VALUES (67,"Saint-Maurice",46.218257,7.003196);
INSERT INTO RefData_GeoLocation VALUES (68,"Cernier",47.057356,6.894757);
INSERT INTO RefData_GeoLocation VALUES (69,"Ostermundigen",46.956112,7.487187);
INSERT INTO RefData_GeoLocation VALUES (70,"Estavayer-le-Lac",46.849125,6.845805);
INSERT INTO RefData_GeoLocation VALUES (71,"Frutigen",46.58782,7.64751);
INSERT INTO RefData_GeoLocation VALUES (72,"Muri",47.270428,8.3382);
INSERT INTO RefData_GeoLocation VALUES (73,"Murten",46.92684,7.110343);
INSERT INTO RefData_GeoLocation VALUES (74,"Rheinfelden",47.553587,7.793839);
INSERT INTO RefData_GeoLocation VALUES (75,"Gersau",46.994189,8.524996);
INSERT INTO RefData_GeoLocation VALUES (76,"Schüpfheim",46.951613,8.017235);
INSERT INTO RefData_GeoLocation VALUES (77,"Saanen",46.489557,7.259609);
INSERT INTO RefData_GeoLocation VALUES (78,"Olten",47.357058,7.909101);
INSERT INTO RefData_GeoLocation VALUES (79,"Domat/Ems",46.834827,9.450752);
INSERT INTO RefData_GeoLocation VALUES (80,"Münchwilen",47.47788,8.99569);
INSERT INTO RefData_GeoLocation VALUES (81,"Horgen",47.255924,8.598672);
INSERT INTO RefData_GeoLocation VALUES (82,"Willisau",47.119362,7.991459);
INSERT INTO RefData_GeoLocation VALUES (83,"Rorschach",47.477166,9.485434);
INSERT INTO RefData_GeoLocation VALUES (84,"Morges",46.511255,6.495693);
INSERT INTO RefData_GeoLocation VALUES (85,"Interlaken",46.683872,7.866376);
INSERT INTO RefData_GeoLocation VALUES (86,"Sursee",47.170881,8.111132);
INSERT INTO RefData_GeoLocation VALUES (87,"Küssnacht",47.085571,8.442057);
INSERT INTO RefData_GeoLocation VALUES (88,"Weinfelden",47.56571,9.10701);
INSERT INTO RefData_GeoLocation VALUES (89,"Pfäffikon",47.365728,8.78595);
INSERT INTO RefData_GeoLocation VALUES (90,"Meilen",47.270429,8.643675);
INSERT INTO RefData_GeoLocation VALUES (91,"Langnau",46.93936,7.78738);
INSERT INTO RefData_GeoLocation VALUES (92,"Kreuzlingen",47.650512,9.175038);
INSERT INTO RefData_GeoLocation VALUES (93,"Nidau",47.129167,7.238464);
INSERT INTO RefData_GeoLocation VALUES (94,"Igis",46.945308,9.57218);
INSERT INTO RefData_GeoLocation VALUES (95,"Ilanz",46.773071,9.204486);
INSERT INTO RefData_GeoLocation VALUES (96,"Einsiedeln",47.12802,8.74319);
INSERT INTO RefData_GeoLocation VALUES (97,"Wangen",47.231995,7.654479);
INSERT INTO RefData_GeoLocation VALUES (98,"Hinwil",47.29702,8.84348);
INSERT INTO RefData_GeoLocation VALUES (99,"Hochdorf",47.168408,8.291788);
INSERT INTO RefData_GeoLocation VALUES (100,"Thusis",46.697524,9.440202);
INSERT INTO RefData_GeoLocation VALUES (101,"Lenzburg",47.384048,8.181798);
INSERT INTO RefData_GeoLocation VALUES (102,"Dielsdorf",47.480247,8.45628);
INSERT INTO RefData_GeoLocation VALUES (103,"Mörel-Filet",46.355548,8.044112);
INSERT INTO RefData_GeoLocation VALUES (104,"Münster-Geschinen",46.491704,8.272063);
INSERT INTO RefData_GeoLocation VALUES (105,"Martigny",46.101915,7.073989);
INSERT INTO RefData_GeoLocation VALUES (106,"Brig-Glis",46.3145,7.985796);
INSERT INTO RefData_GeoLocation VALUES (107,"Davos",46.797752,9.82702);
INSERT INTO RefData_GeoLocation VALUES (108,"Uster",47.352097,8.716687);
INSERT INTO RefData_GeoLocation VALUES (109,"Altstätten",47.376433,9.554989);
INSERT INTO RefData_GeoLocation VALUES (110,"Courtelary",47.179369,7.072954);
INSERT INTO RefData_GeoLocation VALUES (111,"Porrentruy",47.415327,7.075221);