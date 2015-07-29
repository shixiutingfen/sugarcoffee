--用户表
create table c_user 
(
	userid int(19) not null primary key,
	username varchar(20) not null,
	password varchar(40) not null,
	chinesename varchar(20) ,
	email  varchar(25) ,
	address varchar(50) ,
	phone int(15) ,
	mobile int(13),
	sex  int(1),
	age  int(3),
	qq int(12),
	headpic varchar(30),
	logintimes int(5),
	userlevel int(2)  ,
	lastlogintime varchar(20),
	createtime varchar(20)
);

--类目表
create table c_catagory 
(
	catagoryid int(5)  not null primary key,
	catagoryname varchar(20) ,
	belongto  int(2),
	createtype int(1),
	createuser int(19),
	createtime varchar(20)
);

alter table c_catagoryref
add constraint c_catagoryref_ibfk_1  foreign key (catagoryid) references c_catagory (catagoryid)
--类目关联表

create table c_catagoryref 
(
	refid int(15)  not null primary key,
	catagoryid int(5) ,
	relateid  int(20)
);



--文章表
create table c_article 
(
	articleid int(15)  not null primary key,
	title varchar(30),
	content text,
	pic varchar(30),
	istop int(1),
	createuser int(19),
	createtime varchar(20)
);

--附件表

create table c_attach 
(
	attachid int(19)  not null primary key,
	relateid varchar(30),
	realpath varchar(50),
	attachpath varchar(50),
	realname varchar(50),
	attachname varchar(50)
);


--帮助提示表
create table c_faq 
(
	faqid int(19)  not null primary key,
	faqtype varchar(2),
	picture varchar(30),
	title varchar(100),
	content text,
	readtimes int(8),
	createtime varchar(20)
);

--投票表
create table c_vote 
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
create table c_friend
(
	friendid  int(19)  not null primary key,
	friendusername varchar(20)  ,
	userid  int(19)  ,
	status int(1),
	level int(1),
	createuser int(19),
	createtime varchar(20)
);