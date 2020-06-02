-- G7Schools
-----------------------------------------------------------------------------------------------------------------
INSERT INTO G7Schools VALUES ('4729', 'Westbrook Elementary', 'Elementary'); 
INSERT INTO G7Schools VALUES ('8431', 'Charlton Public School', 'Elementary');
INSERT INTO G7Schools VALUES ('1344', 'Humberside Collegiate', 'Middle');
INSERT INTO G7Schools VALUES ('8865', 'Don Cheadle Secondary School', 'High School');
INSERT INTO G7Schools VALUES ('4430', 'St. Augustine Preparatory', 'Middle');
INSERT INTO G7Schools VALUES ('5112', 'Cornerstone Montessori School', 'Middle');
INSERT INTO G7Schools VALUES ('6674', 'Samuel Oster High School', 'High School');
INSERT INTO G7Schools VALUES ('2719', 'Margaret Atwood Middle School', 'Middle');
INSERT INTO G7Schools VALUES ('7522', 'Ayn Rand Academy', 'High School');
INSERT INTO G7Schools VALUES ('9061', 'Morning Oaks Elementary', 'Elementary');

-- G7Areas_info
-----------------------------------------------------------------------------------------------------------------
INSERT INTO G7Areas_info VALUES ('JCN', 'JUNCTION', 'Family Friendly');
INSERT INTO G7Areas_info VALUES ('BELL', 'BELLWOODS', 'Night Life');
INSERT INTO G7Areas_info VALUES ('PARK', 'PARKVIEW', 'Picturesque');
INSERT INTO G7Areas_info VALUES ('OCN', 'OCEANSIDE', 'By the Water');
INSERT INTO G7Areas_info VALUES ('CTR', 'CENTRE', 'The heart of the city');
INSERT INTO G7Areas_info VALUES ('LKFNT', 'LAKEFRONT', 'Quiet life by the lake');
INSERT INTO G7Areas_info VALUES ('VAL', 'HIDDEN VALLEY', 'Trees and parks galore');
INSERT INTO G7Areas_info VALUES ('RVS', 'RIVERSIDE', 'Vibrant nightlife with all the amenities of urban living');
INSERT INTO G7Areas_info VALUES ('DT', 'DOWNTOWN', 'The busiest part of down. Close to the office');
INSERT INTO G7Areas_info VALUES ('APL', 'APPLERIDGE', 'Suburban Living at its finest');

-- G7School_list
-----------------------------------------------------------------------------------------------------------------
INSERT INTO G7School_list VALUES('JCN'	, '4729');
INSERT INTO G7School_list VALUES('BELL'	, '8431');
INSERT INTO G7School_list VALUES('PARK'	, '1344');
INSERT INTO G7School_list VALUES('OCN'	, '8865');
INSERT INTO G7School_list VALUES('CTR'	, '4430');
INSERT INTO G7School_list VALUES('LKFNT', '5112');
INSERT INTO G7School_list VALUES('VAL'	, '6674');
INSERT INTO G7School_list VALUES('RVS'	, '2719');
INSERT INTO G7School_list VALUES('DT'	, '7522');
INSERT INTO G7School_list VALUES('APL'	, '9061');

-- G7Addresses
-----------------------------------------------------------------------------------------------------------------
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

-- G7Outlets
-----------------------------------------------------------------------------------------------------------------
INSERT INTO G7Outlets VALUES ('MO001', 'Newspaper', '416-828-8888');
INSERT INTO G7Outlets VALUES ('MO002', 'Website', '416-333-1668');
INSERT INTO G7Outlets VALUES ('MO003', 'Newspaper', '416-282-6615');
INSERT INTO G7Outlets VALUES ('MO004', 'Magazine', '905-747-2210');
INSERT INTO G7Outlets VALUES ('MO005', 'Magazine', '647-838-5959');
INSERT INTO G7Outlets VALUES ('MO006', 'Magazine', '848-169-3417');
INSERT INTO G7Outlets VALUES ('MO007', 'Newspaper', '416-344-4848');
INSERT INTO G7Outlets VALUES ('MO008', 'Magazine', '416-828-8888');
INSERT INTO G7Outlets VALUES ('MO009', 'Website', '422-459-1212');
INSERT INTO G7Outlets VALUES ('MO010', 'Website', '647-991-6776');

-- G7Properties_info
-----------------------------------------------------------------------------------------------------------------
INSERT INTO G7Properties_info VALUES (2210, 011, 'MO001',  'LKFNT', 3, 2, 1400, 250000, 'FOR SALE');
INSERT INTO G7Properties_info VALUES (3018, 012, 'MO002',  'VAL', 2, 1, 754, 198950, 'FOR SALE');
INSERT INTO G7Properties_info VALUES (6825, 013, 'MO003',  'APL', 4, 3, 2200, 495000, 'SOLD');
INSERT INTO G7Properties_info VALUES (4005, 014, 'MO004',  'LKFNT', 1, 1, 565, 150000, 'FOR SALE');
INSERT INTO G7Properties_info VALUES (6766, 015, 'MO005', 'CTR', 5, 5, 4500, 962000, 'SOLD');
INSERT INTO G7Properties_info VALUES (4410, 016, 'MO006', 'CTR', 1, 1, 980, 298900, 'SOLD');
INSERT INTO G7Properties_info VALUES (9887, 017, 'MO007',  'VAL', 3, 1, 1100, 299000, 'FOR SALE');
INSERT INTO G7Properties_info VALUES (5633, 018, 'MO008', 'BELL', 2, 1, 865, 210000, 'FOR SALE');
INSERT INTO G7Properties_info VALUES (7839, 019, 'MO009', 'OCN', 4, 4, 2400, 599000, 'FOR SALE');
INSERT INTO G7Properties_info VALUES (6008, 020, 'MO010',  'RVS', 3, 2, 1550, 495000, 'SOLD');
INSERT INTO G7Properties_info VALUES (7753, 021, 'MO009',  'JCN', 4, 3, 2150, 449995, 'FOR SALE');
INSERT INTO G7Properties_info VALUES (4457, 022, 'MO009',  'DT', 6, 5, 6000, 1595000, 'FOR SALE');

-- G7Condo_type
-----------------------------------------------------------------------------------------------------------------
INSERT INTO G7Condo_type VALUES (401, 3018, 300);
INSERT INTO G7Condo_type VALUES (402, 4005, 200);
INSERT INTO G7Condo_type VALUES (403, 4410, 189);
INSERT INTO G7Condo_type VALUES (404, 5633, 210);

-- G7Single_home_type
-----------------------------------------------------------------------------------------------------------------
INSERT INTO G7Single_home_type VALUES (801, 2210, 3200);
INSERT INTO G7Single_home_type VALUES (802, 6825, 4500);
INSERT INTO G7Single_home_type VALUES (803, 6766, 15000);
INSERT INTO G7Single_home_type VALUES (804, 9887, 2500);
INSERT INTO G7Single_home_type VALUES (805, 7839, 4000);
INSERT INTO G7Single_home_type VALUES (806, 6008, 2000);
INSERT INTO G7Single_home_type VALUES (807, 4457, 43560);

-- G7Advertising
-----------------------------------------------------------------------------------------------------------------
INSERT INTO G7Advertising VALUES ('HomeGuide', 6825, 'MO003', to_date('2018-03-19', 'YYYY-MM-DD'), 250);
INSERT INTO G7Advertising VALUES ('TheStar', 9887, 'MO007', to_date('2019-02-05', 'YYYY-MM-DD'), 400);
INSERT INTO G7Advertising VALUES ('RB.ca', 3018, 'MO002', to_date('2019-02-11', 'YYYY-MM-DD'), 90);
INSERT INTO G7Advertising VALUES ('BH.com', 2210, 'MO001', to_date('2018-11-05', 'YYYY-MM-DD'), 110);
INSERT INTO G7Advertising VALUES ('Tribute', 4457, 'MO009', to_date('2018-09-11', 'YYYY-MM-DD'), 200);
INSERT INTO G7Advertising VALUES ('Homies1', 5633, 'MO008', to_date('2019-01-15', 'YYYY-MM-DD'), 100);
INSERT INTO G7Advertising VALUES ('Homies2', 7839, 'MO008', to_date('2018-05-07', 'YYYY-MM-DD'), 100);
INSERT INTO G7Advertising VALUES ('RBites', 6008, 'MO010', to_date('2017-12-19', 'YYYY-MM-DD'), 50);
INSERT INTO G7Advertising VALUES ('TheSun1', 6766, 'MO005', to_date('2018-12-02', 'YYYY-MM-DD'), 325);
INSERT INTO G7Advertising VALUES ('TheSun2', 4410, 'MO005', to_date('2019-01-14', 'YYYY-MM-DD'), 325);

-- G7Agencies
-----------------------------------------------------------------------------------------------------------------
INSERT INTO G7Agencies VALUES ('BHILL', 'Boris Hill Realty', '905-555-6723');
INSERT INTO G7Agencies VALUES ('RFAX', 'ReFlax Realty', '647-101-2323');
INSERT INTO G7Agencies VALUES ('SLOTH', 'Slothabys', '416-222-1010');
INSERT INTO G7Agencies VALUES ('PARK', 'Park People', '647-999-6283');
INSERT INTO G7Agencies VALUES ('SHOME', 'Sherlock Homes', '416-123-8888');
INSERT INTO G7Agencies VALUES ('SKY', 'Sky High Realty', '905-282-8181');
INSERT INTO G7Agencies VALUES ('RED', 'Red Star Realtors', '717-289-4444');
INSERT INTO G7Agencies VALUES ('CIPI', 'City Pie Realty', '416-868-2424');
INSERT INTO G7Agencies VALUES ('PAPA', 'Pizza and Places', '439-207-1111');
INSERT INTO G7Agencies VALUES ('SPG', 'Spring Homes Realty', '416-345-7653');

-- G7Agency_listing
-----------------------------------------------------------------------------------------------------------------
INSERT INTO G7Agency_listing VALUES('BHILL', 2210);
INSERT INTO G7Agency_listing VALUES('RFAX',	 3018);
INSERT INTO G7Agency_listing VALUES('SLOTH', 6825);
INSERT INTO G7Agency_listing VALUES('PARK',	 4005);
INSERT INTO G7Agency_listing VALUES('SHOME', 6766);
INSERT INTO G7Agency_listing VALUES('SKY',	 4410);
INSERT INTO G7Agency_listing VALUES('RED',	 9887);
INSERT INTO G7Agency_listing VALUES('CIPI',	 5633);
INSERT INTO G7Agency_listing VALUES('PAPA',	 7839);
INSERT INTO G7Agency_listing VALUES('SPG',	 6008);
INSERT INTO G7Agency_listing VALUES('SHOME', 7753);
INSERT INTO G7Agency_listing VALUES('RFAX',  4457);

-- G7Clients_info
-----------------------------------------------------------------------------------------------------------------
INSERT INTO G7Clients_info VALUES('1001', 'Steven', 'King', '437.345.2039', 'stking@gmail.com');
INSERT INTO G7Clients_info VALUES('1002', 'Alexander', 'Hunold', '437.345.2838', 'alexdunfo@gmail.com');
INSERT INTO G7Clients_info VALUES('1003', 'Diana', 'Morales', '590.345.2039', 'ddmora@gmail.com');
INSERT INTO G7Clients_info VALUES('1004', 'Glacy', 'Leitao', '437.534.9382', 'glaglalei@gmail.com');
INSERT INTO G7Clients_info VALUES('1005', 'Samuel', 'Marsola', '437.345.2342', 'samucadotio@gmail.com');
INSERT INTO G7Clients_info VALUES('1006', 'Sarah', 'Grant', '437.345.9938', 'gsarah3@gmail.com');
INSERT INTO G7Clients_info VALUES('1007', 'Taylor', 'Davies', '437.332.0203', 'dtylro4@gmail.com');
INSERT INTO G7Clients_info VALUES('1008', 'Jennifer', 'Whalen', '590.345.2039', 'jeninhawh@gmail.com');
INSERT INTO G7Clients_info VALUES('1009', 'Bruce', 'Mourgos', '437.423.2034', 'morbruce@gmail.com');
INSERT INTO G7Clients_info VALUES('1010', 'Roger', 'Curtis', '437.343.5244', 'curtisrog@gmail.com');

-- G7Intent
-----------------------------------------------------------------------------------------------------------------
INSERT INTO G7Intent VALUES('100', 'Y', 'N', '1001');
INSERT INTO G7Intent VALUES('110', 'N', 'Y', '1002');
INSERT INTO G7Intent VALUES('120', 'Y', 'Y', '1007');
INSERT INTO G7Intent VALUES('130', 'Y', 'N', '1003');
INSERT INTO G7Intent VALUES('140', 'Y', 'Y', '1005');
INSERT INTO G7Intent VALUES('150', 'N', 'Y', '1009');
INSERT INTO G7Intent VALUES('160', 'Y', 'N', '1004');
INSERT INTO G7Intent VALUES('170', 'Y', 'N', '1007');
INSERT INTO G7Intent VALUES('180', 'Y', 'N', '1008');

-- G7Ownership
-----------------------------------------------------------------------------------------------------------------
INSERT INTO G7Ownership VALUES ('1001', 2210, 3.00);
INSERT INTO G7Ownership VALUES ('1002', 3018, 3.00);
INSERT INTO G7Ownership VALUES ('1004', 4005, 7.00);
INSERT INTO G7Ownership VALUES ('1005', 6825, 4.50);
INSERT INTO G7Ownership VALUES ('1003', 6766, 9.00);
INSERT INTO G7Ownership VALUES ('1008', 4410, 4.00);
INSERT INTO G7Ownership VALUES ('1006', 9887, 6.20);
INSERT INTO G7Ownership VALUES ('1009', 5633, 8.00);
INSERT INTO G7Ownership VALUES ('1006', 7839, 7.00);
INSERT INTO G7Ownership VALUES ('1003', 6008, 7.00);
INSERT INTO G7Ownership VALUES ('1007', 7753, 5.00);

-- G7Records
-----------------------------------------------------------------------------------------------------------------
INSERT INTO G7Records VALUES ('RC001', 250000, 2210, '1002');
INSERT INTO G7Records VALUES ('RC002', 198950, 3018, '1003');
INSERT INTO G7Records VALUES ('RC003', 495000, 6825, '1004');
INSERT INTO G7Records VALUES ('RC004', 150000, 4005, '1005');
INSERT INTO G7Records VALUES ('RC005', 962000, 6766, '1006');
INSERT INTO G7Records VALUES ('RC006', 298900, 4410, '1007');
INSERT INTO G7Records VALUES ('RC007', 299000, 9887, '1008');
INSERT INTO G7Records VALUES ('RC008', 210000, 5633, '1009');
INSERT INTO G7Records VALUES ('RC009', 599000, 7839, '1001');
INSERT INTO G7Records VALUES ('RC010', 495000, 6008, '1010');

-- G7References
-----------------------------------------------------------------------------------------------------------------
INSERT INTO G7References VALUES ('RF001', 0.5, '1002', 'RC001');
INSERT INTO G7References VALUES ('RF002', 0.4, '1003', 'RC002');
INSERT INTO G7References VALUES ('RF003', 0.5, '1004', 'RC003');
INSERT INTO G7References VALUES ('RF004', 0.5, '1005', 'RC004');
INSERT INTO G7References VALUES ('RF005', 0.3, '1006', 'RC005');
INSERT INTO G7References VALUES ('RF006', 0.5, '1007', 'RC006');
INSERT INTO G7References VALUES ('RF007', 0.7, '1008', 'RC007');
INSERT INTO G7References VALUES ('RF008', 0.5, '1009', 'RC008');
INSERT INTO G7References VALUES ('RF009', 0.6, '1001', 'RC009');
INSERT INTO G7References VALUES ('RF010', 0.5, '1010', 'RC010');



