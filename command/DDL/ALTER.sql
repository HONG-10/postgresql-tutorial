/********************************************************************************
 * DDL | Data Definition Language
 * ALTER
 ********************************************************************************/
-- User 패스워드 변경
alter user [USER_NM] with encrypted password ['PW'];

-- DB 소유자 변경 
alter database [DB_NM] owner to [USER_NM];

