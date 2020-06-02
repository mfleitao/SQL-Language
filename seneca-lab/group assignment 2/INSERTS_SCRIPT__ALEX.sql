--Schools

INSERT INTO G7Schools VALUES (4729, 'Westbrook Elementary', 'Elementary'); 
INSERT INTO G7Schools VALUES (8431, 'Charlton Public School', 'Elementary');
INSERT INTO G7Schools VALUES (1344, 'Humberside Collegiate', 'Middle');
INSERT INTO G7Schools VALUES (8865, 'Don Cheadle Secondary School', 'High School');
INSERT INTO G7Schools VALUES (4430, 'St. Augustine Preparatory', 'Middle');
INSERT INTO G7Schools VALUES (5112, 'Cornerstone Montessori School', 'Middle');
INSERT INTO G7Schools VALUES (6674, 'Samuel Oster High School', 'High School');
INSERT INTO G7Schools VALUES (2719, 'Margaret Atwood Middle School', 'Middle');
INSERT INTO G7Schools VALUES (7522, 'Ayn Rand Academy', 'High School');
INSERT INTO G7Schools VALUES (9061, 'Morning Oaks Elementary', 'Elementary');

--Areas Info

INSERT INTO G7Areas_info VALUES ( 'JCN', 'JUNCTION', 'Family Friendly');
INSERT INTO G7Areas_info VALUES ('BELL', 'BELLWOODS', 'Night Life');
INSERT INTO G7Areas_info VALUES ('PARK', 'PARKVIEW', 'Picturesque');
INSERT INTO G7Areas_info VALUES ('OCN', 'OCEANSIDE', 'By the Water');
INSERT INTO G7Areas_info VALUES ('CTR', 'CENTRE', 'The heart of the city');
INSERT INTO G7Areas_info VALUES ('LKFNT', 'LAKEFRONT', 'Quiet life by the lake');
INSERT INTO G7Areas_info VALUES ('VAL', 'HIDDEN VALLEY', 'Trees and parks galore');
INSERT INTO G7Areas_info VALUES ('RVS', 'RIVERSIDE', 'Vibrant nightlife with all the amenities of urban living');
INSERT INTO G7Areas_info VALUES ('DT', 'DOWNTOWN', 'The busiest part of down. Close to the office');
INSERT INTO G7Areas_info VALUES ('APL', 'APPLERIDGE', 'Suburban Living at its finest');

--Property Address

INSERT INTO G7Addresses VALUES (011, 322, 'Westshore Drive', 'Tobermory', 'Ontario', 'F49 6P8');
INSERT INTO G7Addresses VALUES (012, 5612, 'Abramovich Way', 'Etobicoke', 'Ontario', 'M5T 2X9');
INSERT INTO G7Addresses VALUES (013, 88, 'Mill Arbour Lane', 'Tweed', 'Ontario', 'R1B 3T0');
INSERT INTO G7Addresses VALUES (014, 225, 'Crawford Road', 'Richmond Hill', 'Ontario', 'L2J 6E8');
INSERT INTO G7Addresses VALUES (015, 113, 'Sentinel Road', 'Oakville', 'Ontario', 'R7P 9E9');
INSERT INTO G7Addresses VALUES (016, 4561, 'Grant Place', 'Mississauga', 'Ontario', 'Z18 4T2');
INSERT INTO G7Addresses VALUES (017, 900, 'Birchmount Crescent', 'Oakville', 'Ontario', 'R2P 8G1');
INSERT INTO G7Addresses VALUES (018, 38, 'Langdon Gate', 'Toronto', 'Ontario', 'M2P 5X8');
INSERT INTO G7Addresses VALUES (019, 3, 'Lakeshore Blvd West', 'Toronto', 'Ontario', 'M18 4V3');
INSERT INTO G7Addresses VALUES (020, 188, 'Infinity Way', 'Mississauga', 'Ontario', '9V9 1G8');
INSERT INTO G7Addresses VALUES (021, 3261, 'Midichlorian Ave', 'Ancaster', 'Ontario', 'H5B 3U4');
INSERT INTO G7Addresses VALUES (022, 999, 'Bay Street', 'Toronto', 'Ontario', 'M52 4M6');

--Outlets

INSERT INTO G7Outlets VALUES (5, 'Newspaper', 'Toronto Sun', '416-828-8888');
INSERT INTO G7Outlets VALUES (8, 'Website', 'www.GTAHOME.ca', '416-333-1668');
INSERT INTO G7Outlets VALUES (72, 'Newspaper', 'Toronto Star', '416-282-6615');
INSERT INTO G7Outlets VALUES (59, 'Magazine', 'Realty Bites', '905-747-2210');
INSERT INTO G7Outlets VALUES (4, 'Magazine', 'Homes4Homies', '647-838-5959');
INSERT INTO G7Outlets VALUES (18, 'Magazine', 'Red Blazer Realty', '848-169-3417');
INSERT INTO G7Outlets VALUES (44, 'Newspaper', 'The Tribute', '416-344-4848');
INSERT INTO G7Outlets VALUES (99, 'Magazine', 'HomeGuide', '416-828-8888');
INSERT INTO G7Outlets VALUES (11, 'Website', 'www.BuyerHomes.com','422-459-1212');
INSERT INTO G7Outlets VALUES (12, 'Website', 'RealtorBase.ca', '647-991-6776');

--Property Info
        
INSERT INTO G7Properties_info VALUES (2210, 011, 11, 'LKFNT', 3, 2, 1400, 250000, 'FOR SALE');
INSERT INTO G7Properties_info VALUES (3018, 012, 12, 'VAL', 2, 1, 754, 198950, 'FOR SALE');
INSERT INTO G7Properties_info VALUES (6825, 013, 99, 'APL', 4, 3, 2200, 495000, 'SOLD');
INSERT INTO G7Properties_info VALUES (4005, 014, 12, 'LKFNT', 1, 1, 565, 150000, 'FOR SALE');
INSERT INTO G7Properties_info VALUES (6766, 015, 5, 'CTR', 5, 5, 4500, 962000, 'SOLD');
INSERT INTO G7Properties_info VALUES (4410, 016, 5, 'CTR', 1, 1, 980, 298900, 'SOLD');
INSERT INTO G7Properties_info VALUES (9887, 017, 72, 'VAL', 3, 1, 1100, 299000, 'FOR SALE');
INSERT INTO G7Properties_info VALUES (5633, 018, 4, 'BELL', 2, 1, 865, 210000, 'FOR SALE');
INSERT INTO G7Properties_info VALUES (7839, 019, 4, 'OCN', 4, 4, 2400, 599000, 'FOR SALE');
INSERT INTO G7Properties_info VALUES (6008, 020, 59, 'RVS', 3, 2, 1550, 495000, 'SOLD');
INSERT INTO G7Properties_info VALUES (7753, 021, 18, 'JCN', 4, 3, 2150, 449995, 'FOR SALE');
INSERT INTO G7Properties_info VALUES (4457, 022, 44, 'DT', 6, 5, 6000, 1595000, 'FOR SALE');

--Condo Type_

INSERT INTO G7Condo_type VALUES (401, 3018, 300);
INSERT INTO G7Condo_type VALUES (402, 4005, 200);
INSERT INTO G7Condo_type VALUES (403, 4410, 189);
INSERT INTO G7Condo_type VALUES (404, 5633, 210);

--G7Single_home_type

INSERT INTO G7Single_home_type VALUES (801, 2210, 3200);
INSERT INTO G7Single_home_type VALUES (802, 6825, 4500);
INSERT INTO G7Single_home_type VALUES (803, 6766, 15000);
INSERT INTO G7Single_home_type VALUES (804, 9887, 2500);
INSERT INTO G7Single_home_type VALUES (805, 7839, 4000);
INSERT INTO G7Single_home_type VALUES (806, 6008, 2000);
INSERT INTO G7Single_home_type VALUES (807, 4457, 43560);

--G7Advertising

INSERT INTO G7Advertising VALUES ('HomeGuide', 6825, 99, '2018-03-19', 250);
INSERT INTO G7Advertising VALUES ('TheStar', 9887, 72, '2019-02-05', 400);
INSERT INTO G7Advertising VALUES ('RB.ca', 3018, 12, '2019-02-11', 90);
INSERT INTO G7Advertising VALUES ('BH.com', 2210, 11, '2018-11-05',110);
INSERT INTO G7Advertising VALUES ('Tribute', 4457, 44, '2018-09-11', 200);
INSERT INTO G7Advertising VALUES ('Homies', 5633, 4, '2019-01-15', 100);
INSERT INTO G7Advertising VALUES ('Homies', 7839, 4, '2018-05-07', 100);
INSERT INTO G7Advertising VALUES ('RBites', 6008, 59, '2017-12-19', 50);
INSERT INTO G7Advertising VALUES ('TheSun', 6766, 5, '2018-12-02', 325);
INSERT INTO G7Advertising VALUES ('TheSun', 4410, 5, '2019-01-14', 325);

--G7Agencies

INSERT INTO G7Agencies VALUES ('BHILL','Boris Hill Realty', '905-555-6723');
INSERT INTO G7Agencies VALUES ('RFAX','ReFlax Realty', '647-101-2323');
INSERT INTO G7Agencies VALUES ('SLOTH','Slothabys', '416-222-1010');
INSERT INTO G7Agencies VALUES ('PARK','Park People', '647-999-6283');
INSERT INTO G7Agencies VALUES ('SHOME','Sherlock Homes', '416-123-8888');
INSERT INTO G7Agencies VALUES ('SKY','Sky High Realty', '905-282-8181');
INSERT INTO G7Agencies VALUES ('RED','Red Star Realtors', '717-289-4444');
INSERT INTO G7Agencies VALUES ('CIPI','City Pie Realty', '416-868-2424');
INSERT INTO G7Agencies VALUES ('PAPA','Pizza and Places', '439-207-1111');
INSERT INTO G7Agencies VALUES ('SPG','Spring Homes Realty', '416-345-7653');


------------ Mattieus Data -----------------
--G7Agency_listing
 
 --G7Clients_info
 
 --G7intent


--G7Ownership

INSERT INTO G7Ownership VALUES ();
INSERT INTO G7Ownership VALUES ();
INSERT INTO G7Ownership VALUES ();
INSERT INTO G7Ownership VALUES ();
INSERT INTO G7Ownership VALUES ();
INSERT INTO G7Ownership VALUES ();
INSERT INTO G7Ownership VALUES ();
INSERT INTO G7Ownership VALUES ();
INSERT INTO G7Ownership VALUES ();
INSERT INTO G7Ownership VALUES ();
INSERT INTO G7Ownership VALUES ();

--G7Records

INSERT INTO G7Records VALUES ();
INSERT INTO G7Records VALUES ();
INSERT INTO G7Records VALUES ();
INSERT INTO G7Records VALUES ();
INSERT INTO G7Records VALUES ();
INSERT INTO G7Records VALUES ();
INSERT INTO G7Records VALUES ();
INSERT INTO G7Records VALUES ();
INSERT INTO G7Records VALUES ();
INSERT INTO G7Records VALUES ();
INSERT INTO G7Records VALUES ();

--G7References

INSERT INTO G7References VALUES ();
INSERT INTO G7References VALUES ();
INSERT INTO G7References VALUES ();
INSERT INTO G7References VALUES ();
INSERT INTO G7References VALUES ();
INSERT INTO G7References VALUES ();
INSERT INTO G7References VALUES ();
INSERT INTO G7References VALUES ();
INSERT INTO G7References VALUES ();
INSERT INTO G7References VALUES ();
INSERT INTO G7References VALUES ();





