#login as root
CREATE USER 'BetaAppLaravel8'@'localhost' IDENTIFIED BY 'lp$7BetaAppLaravel8';
ALTER USER 'BetaAppLaravel8'@'localhost' IDENTIFIED WITH mysql_native_password BY 'lp$7BetaAppLaravel8';
create database BetaAppLaravel8;
GRANT ALL PRIVILEGES ON BetaAppLaravel8.* TO 'BetaAppLaravel8'@'localhost';