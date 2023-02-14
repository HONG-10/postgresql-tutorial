##############################################################
# PostgreSQL | psql
##############################################################
# 0. postgresql 유저 생성
sudo -u postgres createuser [USER_NM]

# 1. postgres 계정 접속
$ sudo su - [USER_NM]

# 2. psql(postgres 환경) 진입
$ psql
$ psql -U [USER_NM]     # -U | --username
$ sudo -u postgres psql postgres

$ psql [DB_NM] [USER_NM]

# PostgreSQL Version
$ psql -V
$ psql --version


##############################################################
# psql 명령어
##############################################################

# DB 리스트 확인
\l
\list
\list+      # Description 추가

\conninfo               # 접속 정보 확인
\d [TABLE_NM]           # Table 상세 정보 확인
\du                     # User 리스트 확인  | q == quit
\dt                     # 접속한 DB Instance의 Table 리스트 확인
\ds                     # Sequence 리스트 확인
\df                     # Function 리스트 확인
\dv                     # View 리스트 확인

\h                      # SQL Command 관련 help
\?                      # psql Command 관련 help
\! [$_COMMAND]          # shell Command 실행
\q                      # psql(postgres 환경) 종료

\c [DB_NM] [USER_NM]    # 접속한 DB Instance 변경
\g                      # 방금 전에 실행했던 명령어를 실행. (↑ 키가 사용 가능한 경우 쓰일 일은 없다.)
\s                      # 이전에 실행했던 명령어 전체 List 조회.

\x                      # Column들을 한줄로 조회하기 힘들 때, Column을 세로로 배치해서 Display하는 기능 on/off.
\a                      # Column Align on/off. Default는 Align On 상태.
\H                      # Column 명과 결과 값을 HTML Table 형식으로 Display하는 기능 on/off
\timing                 # Query 실행 시간 표시.

\i [FILE_NM.sql]        # 길고 복잡한 Query같은 경우 외부 편집기에서 Query를 작성한 후에 실행하는 것이 편하기 때문에, 파일에 쓰여진 Query를 실행하는 명령어 이다.
\e [FILE_NM.sql]        # \e는 외부 편집기를 통해 Query를 작성해서 실행할 때 사용한다. Linux에서는 vi가, Window에서는 메모장이 Default Editor로 실행된다.
\ef [FUNCTION_NM]       # \e와 유사하나 FUNCTION 편집할 때 사용한다는 측면에서 상이하다.
\ev [VIEW_NM]           # \e와 유사하나 VIEW 편집할 때 사용한다는 측면에서 상이하다.


---------
\! touch create_table.sql
\! ls -al
\e create_table.sql

> create table TEST_TABLE;

> TEST_TABLE이 생성되었습니다.
