
CREATE TABLE ADDRESS_CODE_ID
(
  ADDRESS         VARCHAR(50) NOT NULL COMMENT '주소',
  ADDRESS_CODE_ID VARCHAR(50) NOT NULL COMMENT '주소코드_ID',
  PRIMARY KEY (ADDRESS_CODE_ID)
) COMMENT '주소코드';

CREATE TABLE HOBBY_CODE
(
  HOBBYS        VARCHAR(50) NOT NULL COMMENT '취미',
  HOBBY_CODE_ID VARCHAR(50) NOT NULL COMMENT '취미코드_ID',
  PRIMARY KEY (HOBBY_CODE_ID)
) COMMENT '취미코드';

CREATE TABLE MEMBERS_HOBBY
(
  MEMBERS_ID    VARCHAR(50) NOT NULL COMMENT '식별자',
  HOBBY_CODE_ID VARCHAR(50) NOT NULL COMMENT '식별자'
) COMMENT '회원_취미';

CREATE TABLE MEMBERS_INFORMATION
(
  NAME         VARCHAR(50) NOT NULL COMMENT '이름',
  AGE          INTEGER     NOT NULL COMMENT '나이',
  PHONE        VARCHAR(50) NOT NULL COMMENT '전화번호',
  MEMBERS_ID   VARCHAR(50) NOT NULL COMMENT '식별자',
  SEX_CODE     VARCHAR(50) NOT NULL COMMENT '성별코드_ID',
  ADDRESS_CODE VARCHAR(50) NOT NULL COMMENT '주소코드_ID',
  PRIMARY KEY (MEMBERS_ID)
) COMMENT '회원정보';

CREATE TABLE MEMBERS_LOGIN
(
  EMAIL            VARCHAR(50) NOT NULL COMMENT '이메일',
  MEMBERS_ID       VARCHAR(50) NOT NULL COMMENT '식별자',
  MEMBERS_LOGIN_ID VARCHAR(50) NOT NULL COMMENT '회원_로그인_ID',
  PRIMARY KEY (MEMBERS_LOGIN_ID)
) COMMENT '회원_로그인';

CREATE TABLE SEX_CODE_ID
(
  SEX         VARCHAR(50) NOT NULL COMMENT '성별',
  SEX_CODE_ID VARCHAR(50) NOT NULL COMMENT '성별코드_ID',
  PRIMARY KEY (SEX_CODE_ID)
) COMMENT '성별코드';

ALTER TABLE MEMBERS_HOBBY
  ADD CONSTRAINT FK_MEMBERS_INFORMATION_TO_MEMBERS_HOBBY
    FOREIGN KEY (MEMBERS_ID)
    REFERENCES MEMBERS_INFORMATION (MEMBERS_ID);

ALTER TABLE MEMBERS_LOGIN
  ADD CONSTRAINT FK_MEMBERS_INFORMATION_TO_MEMBERS_LOGIN
    FOREIGN KEY (MEMBERS_ID)
    REFERENCES MEMBERS_INFORMATION (MEMBERS_ID);

ALTER TABLE MEMBERS_HOBBY
  ADD CONSTRAINT FK_HOBBY_CODE_TO_MEMBERS_HOBBY
    FOREIGN KEY (HOBBY_CODE_ID)
    REFERENCES HOBBY_CODE (HOBBY_CODE_ID);

ALTER TABLE MEMBERS_INFORMATION
  ADD CONSTRAINT FK_SEX_CODE_ID_TO_MEMBERS_INFORMATION
    FOREIGN KEY (SEX_CODE)
    REFERENCES SEX_CODE_ID (SEX_CODE_ID);

ALTER TABLE MEMBERS_INFORMATION
  ADD CONSTRAINT FK_ADDRESS_CODE_ID_TO_MEMBERS_INFORMATION
    FOREIGN KEY (ADDRESS_CODE)
    REFERENCES ADDRESS_CODE_ID (ADDRESS_CODE_ID);
