##############################################################
# PostgreSQL Dump | pg_dump
##############################################################
#* 장점: PostgreSQL Version & OS에 관계 없이 사용 가능
#* 장점: 실행 시점 스냅샷 방식 --> 배타적 잠금이 발생하지 않는다면 기존 DB 사용 가능 (중지 없음)

#* 단점: 파일 용량 큼

#! 데이터 백업 & 개발서버 구축 시 사용

#? 기존 서버
# Dump Script Export
$ pg_dump [DB_NM] > [DUMP_SCRIPT_FILE_NM].sql

# 압축 Export
$ pg_dump [DB_NM] | gzip > [DUMP_SCRIPT_FILE_NM].sql

#? 타겟 서버
# Dump Database & Role 생성
$ psql
create user [USER_NM] password ['PASSWORD'];
create database [DB_NM];

# Dump Script Import
$ psql [DB_NM] < [DUMP_SCRIPT_FILE_NM].sql          
$ psql --set ON_ERROR_STOP=1 --single-transaction < [DUMP_SCRIPT_FILE_NM].sql        #* ON_ERROR_STOP : Error 발생 시 중지 / single-transaction : ON_ERROR_STOP 시 저장 X

##############################################################
# PostgreSQL Dump | pg_dumpall
##############################################################
#* PostgreSQL 전체 Dump

#? 기존 서버
# Dump Script Export
$ pg_dumpall > [DUMP_SCRIPT_FILE_NM].sql
