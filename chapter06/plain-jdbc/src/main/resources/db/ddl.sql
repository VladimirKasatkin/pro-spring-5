create user 'prospring5'@'localhost' identified with mysql_native_password by 'prospring5';
create user 'prospring5'@'172.21.0.1' identified with mysql_native_password by 'prospring5';

create schema musicdb;
grant all privileges on musicdb . * to 'prospring5'@'localhost';
grant all privileges on musicdb . * to 'prospring5'@'172.21.0.1';
flush privileges;

/*in case of java.sql.sqlexception: the server timezone value 'utc' is unrecognized or represents more than one timezone. */
set global time_zone = '+3:00';
