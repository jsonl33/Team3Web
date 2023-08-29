-------------------------------------------------------------------------------- 
					-- CREATE TABLE --
--------------------------------------------------------------------------------
DROP TABLE shop_user;

create table shop_user
(
  ID        VARCHAR2(50)          PRIMARY KEY,
  PW        VARCHAR2(100)        ,
  NAME      VARCHAR2(30)                  ,
  GENDER      VARCHAR2(10)                  ,
  PHONE     VARCHAR2(20)                ,
  EMAIL     VARCHAR2(30)                 ,
  NICKNAME VARCHAR2(30)                ,
  ADDRESS   VARCHAR2(20)                  ,
  BIRTHDAY  DATE                  
  JOINDATE  VARCHAR2(20)                  ,
  UPDATEDATE VARCHAR2(20)
);

-------------------------------------------------------------------------------- 