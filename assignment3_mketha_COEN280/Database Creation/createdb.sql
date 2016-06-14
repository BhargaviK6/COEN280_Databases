
CREATE TABLE BUSINESS(
BUSINESS_ID VARCHAR(100) PRIMARY KEY,
FULL_ADDRESS VARCHAR(300) NOT NULL,
OPEN VARCHAR(5),
CITY VARCHAR(25)NOT NULL,
REVIEW_COUNT NUMBER(5),
BUSINESS_NAME  VARCHAR(300) NOT NULL,
LONGITUDE NUMBER NOT NULL,
STATE VARCHAR(50) NOT NULL,
STARS NUMBER(5),
LATITUDE NUMBER NOT NULL,
TYPE VARCHAR(25),
ATRRIBUTES VARCHAR2(4000)
);
create table sub(
cat varchar(75) 
);
create TABLE BUSINESS_CATEGORY2(
main_name varchar(50));
CREATE TABLE BUSINESS_HOURS(
BUSINESS_ID VARCHAR(50),
BUSINESS_DAY VARCHAR(25),
BUSINESS_OPEN_TIME TIMESTAMP (6),
BUSINESS_CLOSE_TIME TIMESTAMP (6),
PRIMARY KEY (BUSINESS_ID , BUSINESS_DAY),
FOREIGN KEY (BUSINESS_ID) REFERENCES BUSINESS(BUSINESS_ID)
);

CREATE TABLE BUSINESS_CATEGORY(
BUSINESS_ID VARCHAR(50),
BUSINESS_CATEGORY_NAME VARCHAR(100),
FOREIGN KEY (BUSINESS_ID) REFERENCES BUSINESS(BUSINESS_ID)
);

CREATE TABLE NEIGHBOURHOOD(
BUSINESS_ID VARCHAR(50),
NEIGHBOUR_NAME VARCHAR(100),
FOREIGN KEY (BUSINESS_ID) REFERENCES BUSINESS(BUSINESS_ID)
);

CREATE TABLE YELP_USERS(
YELPING_SINCE TIMESTAMP,
REVIEW_COUNT NUMBER,
USER_NAME VARCHAR(50),
USER_ID VARCHAR(50) PRIMARY KEY,
FANS NUMBER,
AVERAGE_STARS NUMBER,
USER_TYPE VARCHAR(25)
);

CREATE TABLE VOTES(
USER_ID VARCHAR(50),
    FUNNY NUMBER,
    USEFUL NUMBER,
    COOL NUMBER,
    FOREIGN KEY (USER_ID) REFERENCES YELP_USERS(USER_ID)
);

CREATE TABLE VOTES_REVIEW(
FUNNY NUMBER,
USEFUL NUMBER,
COOL NUMBER,
REVIEW_ID  VARCHAR(50),
USER_ID VARCHAR(50),
BUSINESS_ID VARCHAR(50)
);
CREATE TABLE FRIENDS(
USER_ID VARCHAR(50),
FRIENDS_ID VARCHAR(50)
);

CREATE TABLE COMPLIMENTS(
USER_ID VARCHAR(50),
COMPLIMENT_TYPE VARCHAR(50),
COMPLEMENT_VALUE VARCHAR(50),
 FOREIGN KEY (USER_ID) REFERENCES YELP_USERS(USER_ID)
);
CREATE TABLE COMPLIMENTS1(
USER_ID VARCHAR(50),
FUNNY NUMBER(5),
COOL NUMBER(5),
WRITER NUMBER(5),
PHOTOS NUMBER(5),
MORE NUMBER(5),
FOREIGN KEY (USER_ID) REFERENCES YELP_USERS(USER_ID)
);

CREATE TABLE ELITE(
USER_ID VARCHAR(50),
YEARS_ELITE VARCHAR(250),
 FOREIGN KEY (USER_ID) REFERENCES YELP_USERS(USER_ID)
);

CREATE TABLE  CHECKIN(
BUSINESS_ID VARCHAR(50),
TYPE VARCHAR(25),
FOREIGN KEY (BUSINESS_ID) REFERENCES BUSINESS(BUSINESS_ID)
);

CREATE TABLE CHECKIN_INFO(
BUSINESS_ID VARCHAR(50) NOT NULL,
"0-0" NUMBER(5),
"1-0" NUMBER(5),
"2-0" NUMBER(5),
"3-0" NUMBER(5),
"4-0" NUMBER(5),
"5-0" NUMBER(5),
"6-0" NUMBER(5),
"7-0" NUMBER(5),
"8-0" NUMBER(5),
"9-0" NUMBER(5),
"10-0" NUMBER(5),
"11-0" NUMBER(5),
"12-0" NUMBER(5),
"13-0" NUMBER(5),
"14-0" NUMBER(5),
"15-0" NUMBER(5),
"16-0" NUMBER(5),
"17-0" NUMBER(5),
"18-0" NUMBER(5),
"19-0" NUMBER(5),
"20-0" NUMBER(5),
"21-0" NUMBER(5),
"22-0" NUMBER(5),
"23-0" NUMBER(5),
"0-1" NUMBER(5),
"1-1" NUMBER(5),
"2-1" NUMBER(5),
"3-1" NUMBER(5),
"4-1" NUMBER(5),
"5-1" NUMBER(5),
"6-1" NUMBER(5),
"7-1" NUMBER(5),
"8-1" NUMBER(5),
"9-1" NUMBER(5),
"10-1" NUMBER(5),
"11-1" NUMBER(5),
"12-1" NUMBER(5),
"13-1" NUMBER(5),
"14-1" NUMBER(5),
"15-1" NUMBER(5),
"16-1" NUMBER(5),
"17-1" NUMBER(5),
"18-1" NUMBER(5),
"19-1" NUMBER(5),
"20-1" NUMBER(5),
"21-1" NUMBER(5),
"22-1" NUMBER(5),
"23-1" NUMBER(5),
"0-2" NUMBER(5),
"1-2" NUMBER(5),
"2-2" NUMBER(5),
"3-2" NUMBER(5),
"4-2" NUMBER(5),
"5-2" NUMBER(5),
"6-2" NUMBER(5),
"7-2" NUMBER(5),
"8-2" NUMBER(5),
"9-2" NUMBER(5),
"10-2" NUMBER(5),
"11-2" NUMBER(5),
"12-2" NUMBER(5),
"13-2" NUMBER(5),
"14-2" NUMBER(5),
"15-2" NUMBER(5),
"16-2" NUMBER(5),
"17-2" NUMBER(5),
"18-2" NUMBER(5),
"19-2" NUMBER(5),
"20-2" NUMBER(5),
"21-2" NUMBER(5),
"22-2" NUMBER(5),
"23-2" NUMBER(5),
"0-3" NUMBER(5),
"1-3" NUMBER(5),
"2-3" NUMBER(5),
"3-3" NUMBER(5),
"4-3" NUMBER(5),
"5-3" NUMBER(5),
"6-3" NUMBER(5),
"7-3" NUMBER(5),
"8-3" NUMBER(5),
"9-3" NUMBER(5),
"10-3" NUMBER(5),
"11-3" NUMBER(5),
"12-3" NUMBER(5),
"13-3" NUMBER(5),
"14-3" NUMBER(5),
"15-3" NUMBER(5),
"16-3" NUMBER(5),
"17-3" NUMBER(5),
"18-3" NUMBER(5),
"19-3" NUMBER(5),
"20-3" NUMBER(5),
"21-3" NUMBER(5),
"22-3" NUMBER(5),
"23-3" NUMBER(5),
"0-4" NUMBER(5),
"1-4" NUMBER(5),
"2-4" NUMBER(5),
"3-4" NUMBER(5),
"4-4" NUMBER(5),
"5-4" NUMBER(5),
"6-4" NUMBER(5),
"7-4" NUMBER(5),
"8-4" NUMBER(5),
"9-4" NUMBER(5),
"10-4" NUMBER(5),
"11-4" NUMBER(5),
"12-4" NUMBER(5),
"13-4" NUMBER(5),
"14-4" NUMBER(5),
"15-4" NUMBER(5),
"16-4" NUMBER(5),
"17-4" NUMBER(5),
"18-4" NUMBER(5),
"19-4" NUMBER(5),
"20-4" NUMBER(5),
"21-4" NUMBER(5),
"22-4" NUMBER(5),
"23-4" NUMBER(5),
"0-5" NUMBER(5),
"1-5" NUMBER(5),
"2-5" NUMBER(5),
"3-5" NUMBER(5),
"4-5" NUMBER(5),
"5-5" NUMBER(5),
"6-5" NUMBER(5),
"7-5" NUMBER(5),
"8-5" NUMBER(5),
"9-5" NUMBER(5),
"10-5" NUMBER(5),
"11-5" NUMBER(5),
"12-5" NUMBER(5),
"13-5" NUMBER(5),
"14-5" NUMBER(5),
"15-5" NUMBER(5),
"16-5" NUMBER(5),
"17-5" NUMBER(5),
"18-5" NUMBER(5),
"19-5" NUMBER(5),
"20-5" NUMBER(5),
"21-5" NUMBER(5),
"22-5" NUMBER(5),
"23-5" NUMBER(5),
"0-6" NUMBER(5),
"1-6" NUMBER(5),
"2-6" NUMBER(5),
"3-6" NUMBER(5),
"4-6" NUMBER(5),
"5-6" NUMBER(5),
"6-6" NUMBER(5),
"7-6" NUMBER(5),
"8-6" NUMBER(5),
"9-6" NUMBER(5),
"10-6" NUMBER(5),
"11-6" NUMBER(5),
"12-6" NUMBER(5),
"13-6" NUMBER(5),
"14-6" NUMBER(5),
"15-6" NUMBER(5),
"16-6" NUMBER(5),
"17-6" NUMBER(5),
"18-6" NUMBER(5),
"19-6" NUMBER(5),
"20-6" NUMBER(5),
"21-6" NUMBER(5),
"22-6" NUMBER(5),
"23-6" NUMBER(5),
FOREIGN KEY (BUSINESS_ID) REFERENCES BUSINESS(BUSINESS_ID)
);

CREATE TABLE REVIEWS(
USER_ID VARCHAR(50),
REVIEW_ID VARCHAR(50) PRIMARY KEY,
STARS NUMBER,
DATEE DATE,
TEXT LONG,
TYPE VARCHAR(20),
BUSINESS_ID VARCHAR (50)
);



CREATE TABLE TIP (
USER_ID VARCHAR(50),
TEXT VARCHAR2(500),
BUSINESS_ID VARCHAR(50),
LIKES VARCHAR(50),
DATES TIMESTAMP,
TYPE_TIP VARCHAR(20)
);



CREATE TABLE ATTRIBUTES1(BID VARCHAR(50),ATTRIBUTES VARCHAR(50));

  CREATE TABLE BUSINESSCATEGORY (BID VARCHAR2(25), BUSNCATGNAME VARCHAR2(40), BUSNSUBCAT VARCHAR2(40));

  CREATE TABLE BUSNATTR (BID VARCHAR2(25), ATTRJSON VARCHAR2(2048));