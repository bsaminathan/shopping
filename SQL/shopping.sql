/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2012/9/22 22:34:20                           */
/*==============================================================*/

drop table if exists t_ad;

drop table if exists t_notice;

drop table if exists t_comment;

drop table if exists t_favorite;

drop table if exists t_salesitem;

drop table if exists t_salesorder;

drop table if exists t_user;

drop table if exists t_product;

drop table if exists t_category;


/*==============================================================*/
/* Table: t_ad        广告表                                          */
/*==============================================================*/
create table t_ad
(
   id                   int auto_increment,
   img                  varchar(50),#广告图片名
   primary key (id)
);

/*==============================================================*/
/* Table: t_category     种类表                                       */
/*==============================================================*/
create table t_category
(
   id                   int auto_increment,
   pid                  int,#父类编号(0:大类,其它:小类)
   name                 varchar(20),#种类名
   descr                varchar(50),#备注
   cno               int,#树形号//
   grade           int,#层级号//
   primary key (id)
);

/*==============================================================*/
/* Table: t_comment       评论表                                      */
/*==============================================================*/
create table t_comment
(
   id                   int auto_increment,
   content              varchar(255),#评论内容
   cdate                datetime,#评论时间
   userid               int,#评论用户编号
   productid            int,#评论产品编号
   primary key (id)
);

/*==============================================================*/
/* Table: t_favorate           收藏表                                 */
/*==============================================================*/
create table t_favorite
(
   id                   int auto_increment,
   userid               int,#用户编号
   productid            int,#商品编号
   primary key (id)
);

/*==============================================================*/
/* Table: t_notice        公告表                                      */
/*==============================================================*/
create table t_notice
(
   id                   int auto_increment,
   title                varchar(30),#公告标题
   content              varchar(100),#公告内容
   pdate            datetime,#公告发布时间
   edate            datetime,#失效时间
   primary key (id)
);

/*==============================================================*/
/* Table: t_product        商品表                                     */
/*==============================================================*/
create table t_product
(
   id                   int auto_increment,
   name                 varchar(30),#商品名
   ncount               int,#商品当前剩余数量
   img                  varchar(30),#商品图片名
   descr                varchar(50),#备注
   normalprice          double,#市场价
   memberprice          double,#会员价
   pdate                datetime,#上架时间
   categoryid           int,#种类编号
   ifspecial               int,#是否特价(1特价/0不特价)
   primary key (id)
);

/*==============================================================*/
/* Table: t_salesitem     订单项目表                                      */
/*==============================================================*/
create table t_salesitem
(
   id                   int auto_increment,
   productid            int,#商品编号
   unitprice            double,#商品价格
   pcount               int,#商品数量
   orderid              varchar(50),#订单表编号
   primary key (id)
);

/*==============================================================*/
/* Table: t_salesorder      订单表                                    */
/*==============================================================*/
create table t_salesorder
(
   id                   varchar(50) not null,#订单号
   userid               int,#用户编号
   totalmoney       double,#总计金额
   pdate             datetime,#订单时间
   recievename        varchar(20),#收货人
   address              varchar(100),#送货地址
   paymethod         int,#付款方式
   recievemethod       int,#收货方式
   timedemand     int,#时间要求
   status               int,#订单状态(1新订单/2已配送)
   remark               varchar(100),#备注
   postcode         int,#邮编
   phone              char(11),#电话
   primary key (id)
);

/*==============================================================*/
/* Table: t_user     用户表                                           */
/*==============================================================*/
create table t_user
(
   id                   int auto_increment,
   username             varchar(20),#用户名
   realname              varchar(20),#真实姓名
   password             varchar(30),#密码
   postcode	        int,#邮编
   phone                char(11),#手机号码
   address              varchar(100),#地址
   regdate              datetime,#注册时间
   grade                int,#操作等级(0管理员/1已被冻结/2商城会员)
   area                 varchar(20),#所在地区
   primary key (id)
);

alter table t_comment add constraint FK_Reference_5 foreign key (userid)
      references t_user (id) on delete cascade on update cascade;

alter table t_comment add constraint FK_Reference_6 foreign key (productid)
      references t_product (id) on delete cascade on update cascade;

alter table t_favorite add constraint FK_Reference_8 foreign key (userid)
      references t_user (id) on delete cascade on update cascade;

alter table t_favorite add constraint FK_Reference_9 foreign key (productid)
      references t_product (id) on delete cascade on update cascade;

alter table t_product add constraint FK_Reference_1 foreign key (categoryid)
      references t_category (id) on delete cascade on update cascade;

alter table t_salesitem add constraint FK_Reference_3 foreign key (productid)
      references t_product (id) on delete cascade on update cascade;

alter table t_salesitem add constraint FK_Reference_4 foreign key (orderid)
      references t_salesorder (id) on delete cascade on update cascade;

alter table t_salesorder add constraint FK_Reference_2 foreign key (userid)
      references t_user (id) on delete cascade on update cascade;
