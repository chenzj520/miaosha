create table `miaosha_user`(
`id` BIGINT not null comment '用户ID,手机号码',
`nickname` VARCHAR(256) not null,
`password` varchar(32) DEFAULT NULL comment 'MD5(MD5(pass明文+固定salt)+salt)',
`salt` varchar(10) DEFAULT null,
`head` varchar(128) DEFAULT null comment '头像，云存贮ID',
`register_date` datetime default null comment '注册时间',
`last_login_time` datetime default null comment '上次登录时间',
`login_count` int(11) default '0' comment '登录次数',
primary key(`id`)
)ENGINE=INNODB DEFAULT charset=utf8

create table `goods`(
`id` bigint(20) not null auto_increment comment '商品ID',
`goods_name` varchar(16) default null comment '商品名称',
`goods_title` varchar(64) default null comment '商品标题',
`goods_img` varchar(256) default null comment '商品图片',
`goods_detail` LONGTEXT comment '商品的详情介绍',
`goods_price` DECIMAL(10,2) default '0.00' comment '商品单价',
`goods_stock` int(11) default '0' comment '商品库存，-1表示没有限制',
primary key(`id`)
)ENGINE=INNODB AUTO_INCREMENT=3 DEFAULT charset=utf8;

create table `miaosha_goods`(
`id` bigint(20) not null auto_increment comment '秒杀的商品表',
`goods_id` bigint(20) default null comment '商品ID',
`miaosha_price` decimal(10,2) default '0.00' comment '秒杀价',
`stock_count` int(11) default null comment '库存数量',
`start_date` datetime default null comment '开始时间',
`end_date` datetime default null comment '秒杀结束时间',
primary key(`id`)
)ENGINE=INNODB AUTO_INCREMENT=3 DEFAULT charset=utf8;


create table `order_info`(
`id` bigint(20) not null auto_increment ,
`user_id` bigint(20) default null comment '用户ID',
`goods_id` bigint(20) default null comment '商品ID',
`delivery_addr_id` bigint(20) default null comment '收货地址ID',
`goods_name` varchar(16) default null comment '冗余过来的商品名称',
`goods_count` int(11) default '0' comment '商品数量',
`goods_price` decimal(10,2) default '0.00' comment '商品价格',
`order_channel` TINYINT(4) default '0' comment '购买方式：1pc,2安卓，3苹果',
`status` tinyint(4) default '0' comment '订单状态 ,0新建未支付，1-已支付，2-已发货，3已收货，4-已退款，5-已完成',
`create_date` datetime default null comment '',
`pay_date` datetime default null comment '',
primary key(`id`)
)ENGINE=INNODB AUTO_INCREMENT=3 DEFAULT charset=utf8;


create table `miaosha_order`(
`id` bigint(20) not null auto_increment ,
`user_id` bigint(20) default null comment '用户ID',
`goods_id` bigint(20) default null comment '商品ID',
`order_id` bigint(20) default null comment '订单ID',
primary key(`id`)
)ENGINE=INNODB AUTO_INCREMENT=3 DEFAULT charset=utf8;
















