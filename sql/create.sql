USE  vportal2;
DROP TABLE IF EXISTS news;
CREATE TABLE news (id BIGINT AUTO_INCREMENT PRIMARY KEY,title VARCHAR(100) NOT NULL ,author VARCHAR(20),source varchar(50),tag varchar(100),main_image_path varchar(100), summary varchar(400),state int,first_menu_id bigint,second_menu_id bigint,create_time DATETIME, last_edit_time DATETIME,type int);
DROP TABLE IF EXISTS news_detail;
CREATE TABLE news_detail(id BIGINT PRIMARY KEY,content TEXT,path VARCHAR(100));
DROP TABLE IF EXISTS menu;
create table menu(id bigint primary key auto_increment,parent_id bigint,title varchar(50),level int,description varchar(100),state int,img_url varchar(100),operation varchar(100),href varchar(100),type int,is_parent int );
DROP TABLE IF EXISTS sys_menu;
create table sys_menu(id bigint primary key auto_increment,parent_id bigint,title varchar(50),level int,description varchar(100),state int,operation varchar(100),href varchar(100),type int,is_parent int);
drop table if exists config;
create table config(id bigint primary key auto_increment, name varchar(50), val varchar(200),type int,data_type int default 0);
drop table if exists content_img;
create table content_img(id bigint primary key auto_increment,content_id bigint,image_path varchar(100),height int,width int,flag int,info varchar(100));