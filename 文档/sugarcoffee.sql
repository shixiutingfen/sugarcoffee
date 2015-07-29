
--用户表
CREATE SEQUENCE USER_SEQUENCE;
create table c_user 
(
	userid number(19) not null primary key,
	username varchar2(20) not null,
	password varchar2(40) not null,
	chinesename varchar2(20) ,
	email  varchar2(25) ,
	address varchar2(50) ,
	phone number(15) ,
	mobile number(13),
	sex  number(1),
	age  number(3),
	qq number(12),
	headpic varchar2(30),
	logintimes number(5),
	userlevel number(2)  ,
	lastlogintime varchar2(20),
	createtime varchar2(20)
);
comment on table c_user is '用户表';
comment on column  c_user.userid is '用户id';
comment on column  c_user.username is '用户名';
comment on column  c_user.password is '密码';
comment on column  c_user.chinesename is '中文名、昵称';
comment on column  c_user.email is '邮箱地址';
comment on column  c_user.address is '住址';
comment on column  c_user.phone is '固话';
comment on column  c_user.mobile is '手机号码';
comment on column  c_user.sex is '性别 1男 2女';
comment on column  c_user.age is '年纪';
comment on column  c_user.qqnumber is 'QQ号';
comment on column  c_user.headpic is '头像';
comment on column  c_user.logintimes is '登录次数';
comment on column  c_user.userlevel is '客户等级';
comment on column  c_user.lastlogintime is '最后登录时间';
comment on column  c_user.createtime is '创建时间';


--类目表
CREATE SEQUENCE CATAGORY_SEQUENCE;
create table c_catagory 
(
	catagoryid number(5)  not null primary key,
	catagoryname varchar2(20) ,
	belongto  number(2),
	createtype number(1),
	createuser number(19),
	createtime varchar2(20)
);
comment on table c_catagory is '主题类目表';
comment on column  c_catagory.catagoryname is '类目名称';
comment on column  c_catagory.belongto is '归属于：1文章类目 2.食品类目 3店铺 ';
comment on column  c_catagory.createtype is '1前台创建 2后台创建';
comment on column  c_catagory.createuser is '创建用户';
comment on column  c_catagory.createtime is '创建时间';

--类目关联表
CREATE SEQUENCE CATAGORY_REF_SEQUENCE;
create table c_catagoryref 
(
	refid number(15)  not null primary key,
	catagoryid number(5) ,
	relateid  varchar2(20)
);
comment on table c_catagoryref is '主题类目关联表';
comment on column  c_catagoryref.catagoryid is '类目id';
comment on column  c_catagoryref.relateid is '关联的id';


--文章表
CREATE SEQUENCE ARTICLE_SEQUENCE;
create table c_article 
(
	articleid number(15)  not null primary key,
	catagoryrelateid varchar2(20),
	title varchar2(30),
	content clob,
	pic varchar2(30),
	istop number(1),
	createuser number(19),
	createtime varchar2(20)
);
comment on table c_article is '文章表';
comment on column  c_article.title is '文章标题';
comment on column  c_article.content is '内容';
comment on column  c_article.pic is '文章顶部图片';
comment on column  c_article.istop is '是否置顶 0置顶 1不置顶';
comment on column  c_article.createuser is '创建用户';
comment on column  c_article.createtime is '创建时间';

--附件表
CREATE SEQUENCE ATTACH_SEQUENCE;
create table c_attach 
(
	attachid number(19)  not null primary key,
	relateid varchar2(30),
	realpath varchar2(50),
	attachpath varchar2(50),
	realname varchar2(50),
	attachname varchar2(50)
);
comment on table c_attach is '主题类目表';
comment on column  c_attach.relateid is '关联内容id';
comment on column  c_attach.realpath is '真实路径';
comment on column  c_attach.attachpath is '附件路径';
comment on column  c_attach.realname is '真实文件名称';
comment on column  c_attach.attachname is '附件名称';

--帮助提示表
CREATE SEQUENCE FAQ_SEQUENCE;
create table c_faq 
(
	faqid number(19)  not null primary key,
	faqtype varchar2(2),
	picture varchar2(30),
	title varchar2(100),
	content clob,
	readtimes number(8),
	createtime varchar2(20)
);
comment on table c_faq is '帮助提示表';
comment on column  c_faq.faqid is 'FAQid';
comment on column  c_faq.faqtype is '帮助类别:1网站使用 2通知 3动态新闻 4首页图片';
comment on column  c_faq.picture is '首页图片';
comment on column  c_faq.title is '标题';
comment on column  c_faq.content is '内容';
comment on column  c_faq.readtimes is '阅读次数';
comment on column  c_faq.createtime is '创建时间';

--投票表
CREATE SEQUENCE VOTE_SEQUENCE;
create table c_vote 
(
	voteid number(19)  not null primary key,
	title varchar2(100),
	content clob,
	ismulty number(1),
	istop number(1),
	ispublic number(1),
	isclosed number(1),
	canread varchar2(200),
	catagoryid number(5),
	answer varchar2(20),
	createtype number(1),
	createuser number(19),
	createtime varchar2(20)
);
comment on table c_vote is '投票表';
comment on column  c_vote.title is '标题';
comment on column  c_vote.content is '内容';
comment on column  c_vote.ismulty is '是否多选 0单选 1多选';
comment on column  c_vote.istop is '是否置顶  0置顶 1不置顶';
comment on column  c_vote.ispublic is '是否公开  0 全部公开 1 对好友公开 2只能自己见';
comment on column  c_vote.isclosed is '是否关闭 0未关闭 1已关闭';
comment on column  c_vote.canread is '可以看的好友';
comment on column  c_vote.catagoryid is '归属的类别';
comment on column  c_vote.answer is '答案';
comment on column  c_vote.createtype is '创建类型 0游客创建 1用户创建 2系统创建';
comment on column  c_vote.createuser is '创建用户';
comment on column  c_vote.createtime is '创建时间';

create table c_friend
(
	friendid  number(19)  not null primary key,,
	friendusername  varchar2(20)  ,
	userid number(19)  ,
	status number(1),
	level number(1),
	createuser number(19),
	createtime varchar2(20)
);
comment on table c_friend is '好友表';
comment on column  c_friend.friendid is 'id';
comment on column  c_friend.friendusername is '好友用户名';
comment on column  c_friend.userid is '用户id';
comment on column  c_friend.status is '1待审核 2已通过 3已解除关系 4黑名单';
comment on column  c_friend.level is '1一般 2好友 3死党 4其它' ;
comment on column  c_friend.createuser is '创建用户';
comment on column  c_friend.createtime is '创建时间';






