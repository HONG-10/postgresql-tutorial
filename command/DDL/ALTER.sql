/********************************************************************************
 * DDL | Data Definition Language
 * ALTER
 ********************************************************************************/
-- User 패스워드 변경
alter user [USER_NM] with encrypted password ['PW'];

-- DB 소유자 변경
alter database [DB_NM] owner to [USER_NM];

-- TABLE SEQUENCE 연결 
alter table [TABLE_NM] ALTER [COLUMN_NM] SET DEFAULT nextval('[연결할_SEQUENCE_NM]'::regclass);

-- TABLE SEQUENCE 삭제 연동 설정
alter sequence [SEQUENCE_NM] owned by [TABLE_NM].[COLUMN_NM];
alter sequence board_seq owned by board_test.idx;

-- SEQUENCE Number 수정
alter sequence [SEQUENCE_NM] restart with [START_NUM];
alter sequence board_seq restart with 3333;
