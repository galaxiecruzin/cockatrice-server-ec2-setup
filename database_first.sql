create database servatrice;
create user 'servatrice'@'localhost' identified by 'servatrice';
grant all privileges on servatrice.* to 'servatrice'@'localhost';
flush privileges;
