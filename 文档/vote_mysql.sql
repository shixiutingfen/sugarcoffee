 alter table t_user modify column password varchar(40);
--用户表
create table t_user 
(
	userid int(19) not null primary key,
	username varchar(20) ,
	password varchar(40),
	chinesename varchar(20) ,
	email  varchar(25) ,
	address varchar(50) ,
	phone BIGINT(15) ,
	mobile BIGINT(13),
	sex  int(1),
	age  int(3),
	qq BIGINT(12),
	logintimes int(5),
	userlevel int(2)  ,
	lastlogintime varchar(20),
	createtime varchar(20)
);
insert into t_user (userid,username,password,chinesename) values (1,'shixiuting','123','石秀亭');
insert into t_user (userid,username,password,chinesename) values (2,'yangsaifen','123','杨赛芬');
--类目表
create table t_catagory 
(
	catagoryid int(5)  not null primary key,
	catagoryname varchar(20) ,
	belongto  int(2),
	isprivate int(1),
	createuser int(19),
	createtime varchar(20)
);


--类目关联表

create table t_catagoryref 
(
	refid int(15)  not null primary key,
	catagoryid int(5) ,
	relateid  varchar(20)
);



--文章表
create table t_article 
(
	articleid int(15)  not null primary key,
	catagoryrelateid varchar(20),
	title varchar(30),
	content text,
	istop int(1),
	isprivate int(1),
	canread varchar(200),
	updatetime varchar(20),
	createuser int(19),
	createtime varchar(20)
);

--附件表

create table t_attach 
(
	attachid int(19)  not null primary key,
	relateid varchar(30),
	realpath varchar(50),
	attachpath varchar(50),
	realname varchar(50),
	attachname varchar(50)
);


--帮助提示表
create table t_faq 
(
	faqid int(19)  not null primary key,
	catagoryid varchar(2),
	title varchar(100),
	content text,
	readtimes int(8),
	createtime varchar(20)
);

--投票表
create table t_vote 
(
	voteid int(19)  not null primary key,
	title varchar(100),
	content text,
	ismulty int(1),
	istop int(1),
	ispublic int(1),
	isclosed int(1),
	canread varchar(200),
	catagoryid int(5),
	answer varchar(20),
	createtype int(1),
	createuser int(19),
	createtime varchar(20)
);
--好友表
create table t_friend
(
	friendid  int(19)  not null primary key,
	friendusername varchar(20)  ,
	userid  int(19)  ,
	status int(1),
	level int(1),
	createuser int(19),
	createtime varchar(20)
);