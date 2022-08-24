CREATE DATABASE IF NOT EXISTS wordpress;
CREATE USER 'jremy'@'localhost' IDENTIFIED BY 'jremy';
GRANT ALL PRIVILEGES ON wordpress.* TO 'jremy'@'localhost' IDENTIFIED BY 'jremy';
FLUSH PRIVILEGES;
ALTER USER 'root'@'localhost' IDENTIFIED BY 'jremy';