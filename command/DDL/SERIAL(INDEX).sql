/********************************************************************************
 * Serial (Index)
 
 ********************************************************************************/


-------------------------------------------------------------

------ 시리얼 포함된 테이블 생성
create table 테이블명(
	인덱스 컬럼명 serial primary key,
	컬럼명)

insert into 테이블명 (인덱스컬럼명, 컬럼명) values (default, "값")

특징: 인덱값 강제 지정 가능

-- CASE. 1
create table 테이블명(
	인덱스컬럼명 generated always as identity,
	컬럼명)

insert into 테이블명 (인덱스컬럼명, 컬럼명) overriding system value values (99, "값")

-- CASE. 2
create table 테이블명(
	인덱스컬럼명 generated default as identity,
	컬럼명)

insert into 테이블명 (인덱스컬럼명, 컬럼명) values (999, "값")

삭제 시 그냥 삭제 가능

-- 예제
create table board_spring(
	idx serial primary key,
	title VARCHAR(30),
	contents VARCHAR(180)
);