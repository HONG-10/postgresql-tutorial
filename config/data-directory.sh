##############################################################
# PostgreSQL | Data Directory
##############################################################
# Data Directory 확인
show data_directory;
> [OLD_DATA_DIR]
\q

$ mkdir [NEW_DATA_DIR]
$ sudo chown postgres:postgres [NEW_DATA_DIR]
$ sudo service postgresql stop
$ sudo mv [OLD_DATA_DIR] [NEW_DATA_DIR]
$ sudo vim /etc/postgresql/11/main/postgresql.conf
'''
data_directory = '[NEW_DATA_DIR]'
'''
$ sudo service postgresql start

reference
https://dev-j.tistory.com/17

