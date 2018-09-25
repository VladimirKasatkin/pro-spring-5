CREATE USER 'prospring5'@'localhost' IDENTIFIED WITH mysql_native_password BY 'prospring5';
CREATE USER 'prospring5'@'172.21.0.1' IDENTIFIED WITH mysql_native_password BY 'prospring5';

CREATE SCHEMA MUSICDB;
GRANT ALL PRIVILEGES ON MUSICDB . * TO 'prospring5'@'localhost';
GRANT ALL PRIVILEGES ON MUSICDB . * TO 'prospring5'@'172.21.0.1';
FLUSH PRIVILEGES;

/*in case of java.sql.SQLException: The server timezone value 'UTC' is unrecognized or represents more than one timezone. */
SET GLOBAL time_zone = '+3:00';