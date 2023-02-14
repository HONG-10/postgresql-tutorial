/********************************************************************************
 * DDL | Data Definition Language
 * Create
 ********************************************************************************/
-- USER 생성
create user [USER_NM] password ['PASSWORD'];
create user postgres password '1234';

-- DB 생성
create database [DB_NM];
create database [DB_NM] owner [USER_NM];
create database postgres owner postgres;

-- SCHEMA 생성
create schema [SCHEMA_NM];
create schema public;











/********************************************************************************
 * [TB_SND_MAIL] 메일
 *
 ********************************************************************************/
DROP TABLE IF EXISTS TB_SND_MAIL CASCADE;
CREATE SEQUENCE IF NOT EXISTS SEQ_SND_MAIL START 1;

CREATE TABLE TB_SND_MAIL
(
	MAIL_ID		        BIGINT NOT NULL,
	MAIL_TITL			VARCHAR(40),
	MAIL_BODY			TEXT,
	MAIL_SNDR			VARCHAR(30),
	SEND_TP				VARCHAR(4),
	SEND_STS			VARCHAR(4),
	SEND_CNT			INT,
	SEND_DTM			TIMESTAMP,
	COMP_ID				BIGINT,
	SUBSTR				VARCHAR(10),
	ADV_YN				VARCHAR(4),
	AGREE_YN			VARCHAR(4)
)

ALTER TABLE TB_SND_MAIL ADD CONSTRAINT PK_SND_MAIL PRIMARY KEY ( MAIL_ID );
ALTER TABLE TB_SND_MAIL ADD CONSTRAINT FK_SND_MAIL_CMP_COMPANY FOREIGN KEY ( COMP_ID ) REFERENCES TB_CMP_COMPANY ( COMP_ID );

COMMENT ON TABLE TB_SND_MAIL IS '메일';

	COMMENT ON COLUMN TB_SND_MAIL.MAIL_ID IS '메일 아이디';
	COMMENT ON COLUMN TB_SND_MAIL.MAIL_TITL IS '메일 제목';
	COMMENT ON COLUMN TB_SND_MAIL.MAIL_BODY IS '메일 본문';
	COMMENT ON COLUMN TB_SND_MAIL.MAIL_SNDR IS '메일 발송인';
	COMMENT ON COLUMN TB_SND_MAIL.SEND_TP IS '발송 타입';
	COMMENT ON COLUMN TB_SND_MAIL.SEND_STS IS '발송 상태';
	COMMENT ON COLUMN TB_SND_MAIL.SEND_CNT IS '발송 수';
	COMMENT ON COLUMN TB_SND_MAIL.SEND_DTM IS '발송 일시';
	COMMENT ON COLUMN TB_SND_MAIL.COMP_ID IS '고객사 아이디';
	COMMENT ON COLUMN TB_SND_MAIL.SUBSTR IS 'SubString';
	COMMENT ON COLUMN TB_SND_MAIL.ADV_YN IS '광고성 메일 여부';
	COMMENT ON COLUMN TB_SND_MAIL.AGREE_YN IS '광고성 메일 수신 동의 여부';



CREATE USER [USER_NM];

CREATE ROLE [USER_NM] [PERMISSION];

CREATE database [DB_NM];