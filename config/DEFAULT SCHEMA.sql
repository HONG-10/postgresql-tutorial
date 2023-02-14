/********************************************************************************
 * Default Schema
 
 ********************************************************************************/
-- Default Schema 확인
show search_path;

-------------------------------------------------------------

-- Default Schema 설정
-- alter role (1st place)
alter role [USER_NM] set search_path to [SCHEMA_1_NM], [SCHEMA_2_NM], ...;  -- 1부터 1st place
alter role ilifo set search_path to ilifocnt, "$user", public;
> ilifocnt, ilifo, public;

-- alter database (2nd place)
alter database [DB_NM] SET search_path TO [SCHEMA_1_NM], [SCHEMA_2_NM], ...; -- 1부터 1st place

-- set search_path
set show search_path to [USER_1_NM], [USER_2_NM], ...;

-------------------------------------------------------------

-- Session 상(임시) Default Schema 변경
set search_path = [SCHEMA_NM]
set search_path to [SCHEMA_1_NM], [SCHEMA_2_NM], ...;

-- PostgreSQL 전역 설정 | postgresql.conf 수정
'''
searche_path = [SCHEMA_1_NM], [SCHEMA_2_NM], ...; 
'''

-------------------------------------------------------------

-- Default Schema 초기화
-- alter role (1st place)
alter role [USER_NM] set search_path to default;
alter role ilifo set search_path to default;

alter role [USER_NM] reset search_path;

-- alter database (2nd place)
alter database [DB_NM] reset search_path;
