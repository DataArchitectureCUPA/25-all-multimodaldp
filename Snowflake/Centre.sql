CREATE or replace TABLE CENTRE (
    CENTRE_ID        STRING DEFAULT UUID_STRING() PRIMARY KEY,
    CENTRE_NUMBER    VARCHAR(5) NOT NULL UNIQUE,   -- Must be generated and checked for uniqueness in your app/API
    NAME             VARCHAR(255) NOT NULL,
    TYPE             VARCHAR(50) NOT NULL,         -- E.g. 'School', 'College', 'University', 'Other'
    ADDRESS_LINE1    VARCHAR(255) NOT NULL,
    ADDRESS_LINE2    VARCHAR(255),
    CITY             VARCHAR(100) NOT NULL,
    COUNTY           VARCHAR(100),
    POSTCODE         VARCHAR(12) NOT NULL,
    COUNTRY          VARCHAR(60) DEFAULT 'United Kingdom',
    EMAIL            VARCHAR(255) NOT NULL,
    PHONE            VARCHAR(30),
    WEBSITE          VARCHAR(255),
    STATUS           VARCHAR(20) NOT NULL DEFAULT 'Active',   -- E.g. 'Active', 'Closed', 'Pending'
    CREATED_AT       TIMESTAMP_NTZ NOT NULL DEFAULT CURRENT_TIMESTAMP(),
    UPDATED_AT       TIMESTAMP_NTZ NOT NULL DEFAULT CURRENT_TIMESTAMP()
);
