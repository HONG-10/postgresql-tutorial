/********************************************************************************
 * Sequence

 ********************************************************************************/
-- SEQUENCE 생성
create sequence [SEQUENCE_NM];
create sequence board_seq;
create sequence if not exists SEQ_EDU_COURSE start 1;


-- SEQUENCE 수정
alter sequence [SEQUENCE_NM] restart with [START_NUMBER];
alter sequence public.seq_acc_account restart with 1000;

-------------------------------------------------------------

-- Tabel 생성 시 SEQUENCE 생성
create table [TABLE_NM](
	시퀀스연결컬럼명 int not null default nextval('[SEQUENCE_NM]'),
	컬럼명 VARCHAR(30),
	컬럼명 VARCHAR(200)
);
create table board_test(
	idx int not null default nextval('board_seq'),
	title VARCHAR(30),
	contents VARCHAR(200)
);


-- Table 삭제 시 SEQUENCE 삭제
alter sequence [SEQUENCE_NM] owned by [TABLE_NM].[COLUMN_NM];
alter sequence board_seq owned by board_test.idx;


-- 기존 Table에 SEQUENCE 추가
alter table 테이블명 ALTER COLUMN 컬럼명 SET DEFAULT nextval('추가한시퀀스명'::regclass);

