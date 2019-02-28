service mysql start

mysql -uroot -ppassword < "${APP_PATH}/server/src/main/resources/destroy-db.sql"