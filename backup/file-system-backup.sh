##############################################################
# PostgreSQL Dump | File System Backup
##############################################################
#* 단점: PostgreSQL 중지 후 압축

#! 운영 서버를 이관할 때 사용

#? 기존 서버
# Data File 압축
$ tar -cvzf [DB_DATA_FILE].tar.gz [DB_DATA_FILE_PATH]       

#? 타겟 서버
# Data File 압축 해제
$ tar -xvzf [DB_DATA_FILE].tar.gz -C [DB_DATA_FILE_PATH]

#* DB_DATA_FILE_PATH = ex) /var/lib/postgresql/10/main
#* 타겟 서버 경로 변경 시 pg_ctl을 통해 Base Directory 변경

Ref
https://mozi.tistory.com/559


