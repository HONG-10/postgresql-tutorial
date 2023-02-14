/********************************************************************************
 * DCL | Data Control Language
 * REVOKE
 ********************************************************************************/
-- DB 권한 회수
revoke [PERMISSION] on database [DB_NM] from [USER_NM];

-- Schema 권한 회수
revoke [PERMISSION] on schema [SCHEMA_NM] from [USER_NM];
revoke create, usage on schema public from postgres;





/******************************************************************************************************************************************************
 * Privilege        설명                          Abbreviation         Applicable Object Types
 ******************************************************************************************************************************************************/              	       
ALL PRIVILEGES      전체 권한
------------------------------------------------------------------------------------------------------------------------------------------------------
SELECT              조회                           r("read")	        LARGE OBJECT, SEQUENCE, TABLE(및 테이블과 같은 오브젝트), 테이블 컬럼
INSERT              입력                           a("append")	        TABLE, 테이블 컬럼
UPDATE              수정                           w("write")	        LARGE OBJECT, SEQUENCE, TABLE, 테이블 컬럼
DELETE              삭제                           d	                TABLE
TRUNCATE            삭제                           D	                TABLE
REFERENCES          참조                           x	                TABLE, 테이블 컬럼
TRIGGER             호출                           t	                TABLE
CREATE              생성                           C	                DATABASE, SCHEMA, TABLESPACE
CONNECT             연결                           c	                DATABASE
TEMPORARY           임시                           T	                DATABASE
EXECUTE             실행                           X	                FUNCTION, PROCEDURE
USAGE               사용                           U	                DOMAIN, FOREIGN DATA WRAPPER, FOREIGN SERVER, LANGUAGE, SCHEMA, SEQUENCE, TYPE
SET                 설정                           s	                PARAMETER
ALTER SYSTEM        시스템 설정 파라미터 변경         A	                   PARAMETER
------------------------------------------------------------------------------------------------------------------------------------------------------
TEMP                TEMPORARY 대체
/******************************************************************************************************************************************************
 * 
 ******************************************************************************************************************************************************/
