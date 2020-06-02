CREATE TABLE G7Schools(
    school_id       VARCHAR(10)     PRIMARY KEY,
    school_name     VARCHAR(30)     NOT NULL,
    school_type     VARCHAR(15)     NOT NULL
);
-----------------------------------------------------------------------------------------------------------------
CREATE TABLE G7Areas_info(
    area_id         VARCHAR(10)      PRIMARY KEY,
    area_name       VARCHAR(30)      NOT NULL,
    area_comment    VARCHAR2(300)
);
-----------------------------------------------------------------------------------------------------------------
CREATE TABLE G7School_list(
    area_id         VARCHAR(10),
    school_id       VARCHAR(10),
    CONSTRAINT School_list_pk PRIMARY KEY(area_id, school_id),
    CONSTRAINT list_area_fk
        FOREIGN KEY (area_id) REFERENCES G7Areas_info (area_id),
    CONSTRAINT list_school_fk
        FOREIGN KEY (school_id) REFERENCES G7Schools (school_id)
);
-----------------------------------------------------------------------------------------------------------------
CREATE TABLE G7Addresses (
    address_id      VARCHAR(10)     PRIMARY KEY,
    unit_no	        NUMERIC(6)	    NOT NULL,
    street          VARCHAR(30)     NOT NULL,
    city            VARCHAR(30)     NOT NULL,
    province        VARCHAR(20)     NOT NULL,
    postal_code     VARCHAR(10)     NOT NULL
);
--------------------------------------------------------------------------------------------------------------
CREATE TABLE G7Outlets(
    outlet_id           VARCHAR(10)     PRIMARY KEY,
    outlet_name         VARCHAR(30)     NOT NULL,
    outlet_phone_num    VARCHAR(15)     NOT NULL
);
-----------------------------------------------------------------------------------------------------------------
CREATE TABLE G7Properties_info(
    property_id             INT          PRIMARY KEY,
    address_id              VARCHAR(10),
    outlet_id               VARCHAR(10),
    area_id                 VARCHAR(10),
    num_of_bedrooms         NUMERIC(2)          NOT NULL,
    num_of_bathrooms        NUMERIC(2)          NOT NULL,
    square_area             INT             NOT NULL,
    property_price          INT             NOT NULL,
    property_status         VARCHAR(15)     NOT NULL,
    CONSTRAINT prop_address_fk
        FOREIGN KEY (address_id) REFERENCES G7Addresses (address_id),
    CONSTRAINT prop_area_fk
        FOREIGN KEY (area_id) REFERENCES G7Areas_info (area_id),
    CONSTRAINT prop_outlet_fk
        FOREIGN KEY (outlet_id) REFERENCES G7Outlets (outlet_id)
);
-----------------------------------------------------------------------------------------------------------------
CREATE TABLE G7Condo_type (
    con_type_id         VARCHAR(5)      PRIMARY KEY,
    property_id         INT,
    maintenance_fee     INT             NOT NULL,
     CONSTRAINT con_prop_fk
        FOREIGN KEY (property_id) REFERENCES G7Properties_info (property_id)
);
-----------------------------------------------------------------------------------------------------------------
CREATE TABLE G7Single_home_type (
    sh_type_id      VARCHAR(5)      PRIMARY KEY,
    property_id     INT,
    land_size       INT             NOT NULL,
    CONSTRAINT sh_prop_fk
        FOREIGN KEY (property_id) REFERENCES G7Properties_info (property_id)
);
-----------------------------------------------------------------------------------------------------------------
CREATE TABLE G7Advertising(
    ad_id           VARCHAR(10)         PRIMARY KEY,
    property_id     INT,
    outlet_id       VARCHAR(10),
    ad_date         DATE                NOT NULL,
    ad_price        INT                 NOT NULL,
    CONSTRAINT ad_prop_fk
        FOREIGN KEY (property_id) REFERENCES G7Properties_info (property_id),
    CONSTRAINT ad_outlet_fk
        FOREIGN KEY (outlet_id) REFERENCES G7Outlets (outlet_id)
);

-----------------------------------------------------------------------------------------------------------------
CREATE TABLE G7Agencies(
    agency_id           VARCHAR(10)     PRIMARY KEY,
    agency_name         VARCHAR(30)     NOT NULL,
    agency_phone_num    VARCHAR(15)     NOT NULL
);
-----------------------------------------------------------------------------------------------------------------
CREATE TABLE G7Agency_listing(
    agency_id           VARCHAR(10),
    property_id         INT,
    CONSTRAINT agency_listing_pk PRIMARY KEY(agency_id, property_id),
    CONSTRAINT al_agency_fk
        FOREIGN KEY (agency_id) REFERENCES G7Agencies (agency_id),
    CONSTRAINT al_prop_fk
        FOREIGN KEY (property_id) REFERENCES G7Properties_info (property_id)
);

-----------------------------------------------------------------------------------------------------------------
CREATE TABLE G7Clients_info (
    client_id       VARCHAR(10)         PRIMARY KEY,
    first_name      VARCHAR(20)         NOT NULL,
    last_name       VARCHAR(20)         NOT NULL,
    phone_num       VARCHAR(15)         NOT NULL,
    email           VARCHAR(30)         NOT NULL
);
-----------------------------------------------------------------------------------------------------------------
CREATE TABLE G7Intent (
    intent_id           VARCHAR(10)         PRIMARY KEY,
    intent_to_sell      CHAR(1)             NOT NULL,
    intent_to_buy       CHAR(1)             NOT NULL,
    client_id           VARCHAR(10),
    CONSTRAINT intent_client_fk
        FOREIGN KEY (client_id) REFERENCES G7Clients_info (client_id)
);
-----------------------------------------------------------------------------------------------------------------
CREATE TABLE G7Ownership (
    client_id                   VARCHAR(10), 
    property_id                 INT,
    ownership_percentage        DECIMAL(5,4)            NOT NULL,
    CONSTRAINT ownership_pk PRIMARY KEY(client_id, property_id),
    CONSTRAINT own_client_fk
        FOREIGN KEY (client_id) REFERENCES G7Clients_info (client_id),
    CONSTRAINT own_prop_fk
        FOREIGN KEY (property_id) REFERENCES G7Properties_info (property_id)
);

-----------------------------------------------------------------------------------------------------------------
CREATE TABLE G7Records (
    record_id       VARCHAR(10)         PRIMARY KEY,
    sold_price      INT                 NOT NULL,
    property_id     INT,
    client_id       VARCHAR(10),
    CONSTRAINT records_prop_pk
        FOREIGN KEY (property_id) REFERENCES G7Properties_info (property_id),
    CONSTRAINT records_client_pk
        FOREIGN KEY (client_id) REFERENCES G7Clients_info (client_id)
);
-----------------------------------------------------------------------------------------------------------------
CREATE TABLE G7References (
    reference_id        VARCHAR(10)         PRIMARY KEY,
    reference_fee       INT                 NOT NULL,
    client_id           VARCHAR(10),
    record_id           VARCHAR(10),
    CONSTRAINT reference_client_fk
        FOREIGN KEY (client_id) REFERENCES G7Clients_info (client_id),
    CONSTRAINT reference_record_fk
        FOREIGN KEY (record_id) REFERENCES G7Records (record_id)
);
------------------------------------------------------------------------------------------------------------------

--•	Produce Views to create a minimum of 4 reports that will enable John to see the state of his business, 
--the properties currently for sale, a client list and a report of his total sales for a year of his choosing. 
--(i.e. parameter input).

CREATE VIEW vwBusinessState AS (
    SELECT 


    );
    
CREATE VIEW vwPropForSale AS (
    SELECT 


    );
CREATE VIEW vwClientList AS (
    SELECT first_name || last_name AS "Client Name", phone_num AS "Client Phone", 
            intent_to_buy AS "Buying", intent_to_sell AS "Selling"
        FROM G7Intent i LEFT OUTER JOIN G7Clients c ON i.client_id = c.client_id 
    MINUS
    SELECT c.first_name || c.last_name AS "Client Name", c.phone_num AS "Client Phone", 
            i.intent_to_buy AS "Buying", i.intent_to_sell AS "Selling"
        FROM G7Intent i LEFT OUTER JOIN G7Clients c ON i.client_id = c.client_id 
            LEFT OUTER JOIN G7Ownership o ON c.client_id = o.client_id
            LEFT OUTER JOIN G7Properties_info p ON o.property_id = p.property_id
        WHERE upper(property_status)='SOLD'

    );  
