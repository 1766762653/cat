SET NAMES UTF8;
DROP DATABASE IF EXISTS cat;
CREATE DATABASE cat CHARSET=UTF8;
USE cat;
#用户表
CREATE TABLE cat_user(
  uid INT PRIMARY KEY AUTO_INCREMENT,
  uname VARCHAR(32),
  upwd VARCHAR(32),
  phone VARCHAR(11),
  email VARCHAR(32)
);
#猫咪类型
CREATE TABLE cat_family(
  fid INT PRIMARY KEY AUTO_INCREMENT,
  fname VARCHAR(32)
);
INSERT INTO cat_family VALUES(NULL,'布偶猫');
INSERT INTO cat_family VALUES(NULL,'加菲猫');
INSERT INTO cat_family VALUES(NULL,'金渐层');
INSERT INTO cat_family VALUES(NULL,'英短蓝猫');
INSERT INTO cat_family VALUES(NULL,'美国短毛猫');
INSERT INTO cat_family VALUES(NULL,'苏格兰折耳猫');
INSERT INTO cat_family VALUES(NULL,'无毛猫');
INSERT INTO cat_family VALUES(NULL,'曼基康矮脚猫');

#首页轮播图表
CREATE TABLE cat_index_carousel(
  cid INT PRIMARY KEY AUTO_INCREMENT,
  img_url VARCHAR(255)
);
INSERT INTO cat_index_carousel VALUES(NULL,'images/index_tab_tu1.jpg');
INSERT INTO cat_index_carousel VALUES(NULL,'images/index_tab_tu1.jpg');
INSERT INTO cat_index_carousel VALUES(NULL,'images/index_tab_tu1.jpg');
INSERT INTO cat_index_carousel VALUES(NULL,'images/index_tab_tu1.jpg');
INSERT INTO cat_index_carousel VALUES(NULL,'images/index_tab_tu1.jpg');

#热门猫咪表
CREATE TABLE cat_hot(
  hid INT PRIMARY KEY AUTO_INCREMENT,
  img_url VARCHAR(255)
);
INSERT INTO cat_hot VALUES(NULL,'images/breeds_37.jpg');
INSERT INTO cat_hot VALUES(NULL,'images/breeds_38.jpg');
INSERT INTO cat_hot VALUES(NULL,'images/breeds_39.jpg');
INSERT INTO cat_hot VALUES(NULL,'images/breeds_40.jpg');
INSERT INTO cat_hot VALUES(NULL,'images/breeds_43.jpg');
INSERT INTO cat_hot VALUES(NULL,'images/breeds_44.jpg');
INSERT INTO cat_hot VALUES(NULL,'images/breeds_52.jpg');
INSERT INTO cat_hot VALUES(NULL,'images/breeds_54.jpg');

#优品推荐表
CREATE TABLE cat_yo(
  yid INT PRIMARY KEY AUTO_INCREMENT,
  img_url VARCHAR(255),
  rec VARCHAR(255),
  price DECIMAL(10,2),
  vname VARCHAR(128)
);
INSERT INTO cat_yo VALUES(NULL,'/images/second05.jpg','正规猫舍出售高品质猫咪',2000,'Aa猫猫乐园');
INSERT INTO cat_yo VALUES(NULL,'/images/second06.jpg','正规猫舍出售高品质猫咪',2000,'Aa猫猫乐园');
INSERT INTO cat_yo VALUES(NULL,'/images/second07.jpg','正规猫舍出售高品质猫咪',2000,'Aa猫猫乐园');
INSERT INTO cat_yo VALUES(NULL,'/images/second08.jpg','正规猫舍出售高品质猫咪',2000,'Aa猫猫乐园');
INSERT INTO cat_yo VALUES(NULL,'/images/second09.jpg','正规猫舍出售高品质猫咪',2000,'Aa猫猫乐园');

#楼层猫咪展示表
CREATE TABLE cat_show(
  sid INT PRIMARY KEY AUTO_INCREMENT,
  img_url VARCHAR(255),
  introduce VARCHAR(32),
  price DECIMAL(10,2),
  city VARCHAR(32),
  sname VARCHAR(32)
);
INSERT INTO cat_show VALUES(NULL,'images/bo1.jpg','CFATICA 双注册猫舍 十年老店 品质保障 终身售后','1800','内蒙古/呼和浩特','西溪漫步');
INSERT INTO cat_show VALUES(NULL,'images/bo2.jpg','签协议包养活 英短蓝白猫 签协议包健康包纯种','1800','杭州','洛优猫舍');
INSERT INTO cat_show VALUES(NULL,'images/bo3.jpg','正规猫舍商家 添加微信在线咨询解答 全国均可','1500','杭州','喝着啤酒炸鸡');
INSERT INTO cat_show VALUES(NULL,'images/bo4.jpg','CFA认证 纯种健康 宠物猫品种','1500','杭州','喝着啤酒炸鸡');
INSERT INTO cat_show VALUES(NULL,'images/bo5.jpg','CFA认证 纯种健康 宠物猫品种','1500','杭州','喝着啤酒炸鸡');
INSERT INTO cat_show VALUES(NULL,'images/bo6.jpg','CFA认证 纯种健康 宠物猫品种','1500','杭州','喝着啤酒炸鸡');
INSERT INTO cat_show VALUES(NULL,'images/bo7.jpg','CFA认证 纯种健康 宠物猫品种','1500','杭州','喝着啤酒炸鸡');
INSERT INTO cat_show VALUES(NULL,'images/bo8.jpg','CFA认证 纯种健康 宠物猫品种','1500','杭州','喝着啤酒炸鸡');
INSERT INTO cat_show VALUES(NULL,'images/jf1.jpg','CFA认证 纯种健康 宠物猫品种','1500','杭州','喝着啤酒炸鸡');
INSERT INTO cat_show VALUES(NULL,'images/jf2.jpg','CFA认证 纯种健康 宠物猫品种','1500','杭州','洛优猫舍');
INSERT INTO cat_show VALUES(NULL,'images/jf3.jpg','CFA认证 纯种健康 宠物猫品种','1500','杭州','洛优猫舍');
INSERT INTO cat_show VALUES(NULL,'images/jf4.jpg','CFA认证 纯种健康 宠物猫品种','1500','杭州','洛优猫舍');
INSERT INTO cat_show VALUES(NULL,'images/jf5.jpg','CFA认证 纯种健康 宠物猫品种','1500','杭州','洛优猫舍');
INSERT INTO cat_show VALUES(NULL,'images/jf6.jpg','CFA认证 纯种健康 宠物猫品种','1500','杭州','洛优猫舍');
INSERT INTO cat_show VALUES(NULL,'images/jf7.jpg','CFA认证 纯种健康 宠物猫品种','1500','杭州','洛优猫舍');
INSERT INTO cat_show VALUES(NULL,'images/jf8.jpg','CFA认证 纯种健康 宠物猫品种','1500','杭州','洛优猫舍');
INSERT INTO cat_show VALUES(NULL,'images/yd1.jpg','CFA认证 纯种健康 宠物猫品种','1500','杭州','洛优猫舍');
INSERT INTO cat_show VALUES(NULL,'images/yd2.jpg','CFA认证 纯种健康 宠物猫品种','1500','杭州','洛优猫舍');
INSERT INTO cat_show VALUES(NULL,'images/yd3.jpg','CFA认证 纯种健康 宠物猫品种','1500','杭州','洛优猫舍');
INSERT INTO cat_show VALUES(NULL,'images/yd4.jpg','CFA认证 纯种健康 宠物猫品种','1500','杭州','洛优猫舍');
INSERT INTO cat_show VALUES(NULL,'images/yd5.jpg','CFA认证 纯种健康 宠物猫品种','1500','杭州','洛优猫舍');
INSERT INTO cat_show VALUES(NULL,'images/yd6.jpg','CFA认证 纯种健康 宠物猫品种','1500','杭州','洛优猫舍');
INSERT INTO cat_show VALUES(NULL,'images/yd7.jpg','CFA认证 纯种健康 宠物猫品种','1500','杭州','洛优猫舍');
INSERT INTO cat_show VALUES(NULL,'images/yd8.jpg','CFA认证 纯种健康 宠物猫品种','1500','杭州','洛优猫舍');
INSERT INTO cat_show VALUES(NULL,'images/bo1.jpg','CFATICA 双注册猫舍 十年老店 品质保障 终身售后','2000','内蒙古/呼和浩特','西溪漫步');
INSERT INTO cat_show VALUES(NULL,'images/bo2.jpg','签协议包养活 英短蓝白猫 签协议包健康包纯种','2000','杭州','洛优猫舍');
INSERT INTO cat_show VALUES(NULL,'images/bo3.jpg','正规猫舍商家 添加微信在线咨询解答 全国均可','3000','杭州','喝着啤酒炸鸡');
INSERT INTO cat_show VALUES(NULL,'images/bo4.jpg','CFA认证 纯种健康 宠物猫品种','2700','杭州','喝着啤酒炸鸡');
INSERT INTO cat_show VALUES(NULL,'images/bo5.jpg','CFA认证 纯种健康 宠物猫品种','1700','杭州','喝着啤酒炸鸡');
INSERT INTO cat_show VALUES(NULL,'images/bo6.jpg','CFA认证 纯种健康 宠物猫品种','2000','杭州','喝着啤酒炸鸡');
INSERT INTO cat_show VALUES(NULL,'images/bo7.jpg','CFA认证 纯种健康 宠物猫品种','3000','杭州','喝着啤酒炸鸡');
INSERT INTO cat_show VALUES(NULL,'images/bo8.jpg','CFA认证 纯种健康 宠物猫品种','1200','杭州','喝着啤酒炸鸡');
INSERT INTO cat_show VALUES(NULL,'images/jf1.jpg','CFA认证 纯种健康 宠物猫品种','1500','杭州','喝着啤酒炸鸡');
INSERT INTO cat_show VALUES(NULL,'images/jf2.jpg','CFA认证 纯种健康 宠物猫品种','1300','杭州','洛优猫舍');
INSERT INTO cat_show VALUES(NULL,'images/jf3.jpg','CFA认证 纯种健康 宠物猫品种','1400','杭州','洛优猫舍');
INSERT INTO cat_show VALUES(NULL,'images/jf4.jpg','CFA认证 纯种健康 宠物猫品种','1600','杭州','洛优猫舍');
INSERT INTO cat_show VALUES(NULL,'images/jf5.jpg','CFA认证 纯种健康 宠物猫品种','1800','杭州','洛优猫舍');
INSERT INTO cat_show VALUES(NULL,'images/jf6.jpg','CFA认证 纯种健康 宠物猫品种','2200','杭州','洛优猫舍');
INSERT INTO cat_show VALUES(NULL,'images/jf7.jpg','CFA认证 纯种健康 宠物猫品种','3200','杭州','洛优猫舍');
INSERT INTO cat_show VALUES(NULL,'images/jf8.jpg','CFA认证 纯种健康 宠物猫品种','1600','杭州','洛优猫舍');
INSERT INTO cat_show VALUES(NULL,'images/yd1.jpg','CFA认证 纯种健康 宠物猫品种','1700','杭州','洛优猫舍');
INSERT INTO cat_show VALUES(NULL,'images/yd2.jpg','CFA认证 纯种健康 宠物猫品种','1800','杭州','洛优猫舍');
INSERT INTO cat_show VALUES(NULL,'images/yd3.jpg','CFA认证 纯种健康 宠物猫品种','1900','杭州','洛优猫舍');
INSERT INTO cat_show VALUES(NULL,'images/yd4.jpg','CFA认证 纯种健康 宠物猫品种','2300','杭州','洛优猫舍');
INSERT INTO cat_show VALUES(NULL,'images/yd5.jpg','CFA认证 纯种健康 宠物猫品种','2400','杭州','洛优猫舍');
INSERT INTO cat_show VALUES(NULL,'images/yd6.jpg','CFA认证 纯种健康 宠物猫品种','2500','杭州','洛优猫舍');
INSERT INTO cat_show VALUES(NULL,'images/yd7.jpg','CFA认证 纯种健康 宠物猫品种','2600','杭州','洛优猫舍');
INSERT INTO cat_show VALUES(NULL,'images/yd8.jpg','CFA认证 纯种健康 宠物猫品种','2700','杭州','洛优猫舍');

#猫咪详情表
CREATE TABLE cat_details(
  did INT PRIMARY KEY AUTO_INCREMENT,
  img_url1 VARCHAR(255), 
  img_url2 VARCHAR(255), 
  img_url3 VARCHAR(255), 
  img_url4 VARCHAR(255), 
  title VARCHAR(32),
  price DECIMAL(10,2),
  onsale INT,
  age VARCHAR(16),
  breed VARCHAR(32),
  vaccine VARCHAR(16)
);
INSERT INTO cat_details VALUES(NULL,'images/details/md/cat_01.jpg','images/details/md/cat_02.jpg','images/details/md/cat_03.jpg','images/details/md/cat_04.jpg','加菲猫,布偶猫,缅因猫,蓝猫,等等品种均有',1800,5,'三个月','苏格兰折耳猫','2针疫苗');
INSERT INTO cat_details VALUES(NULL,'images/details/md/cat_01.jpg','images/details/md/cat_02.jpg','images/details/md/cat_03.jpg','images/details/md/cat_04.jpg','加菲猫,布偶猫,缅因猫,蓝猫,等等品种均有',1800,5,'三个月','苏格兰折耳猫','2针疫苗');
INSERT INTO cat_details VALUES(NULL,'images/details/md/cat_01.jpg','images/details/md/cat_02.jpg','images/details/md/cat_03.jpg','images/details/md/cat_04.jpg','加菲猫,布偶猫,缅因猫,蓝猫,等等品种均有',1800,5,'三个月','苏格兰折耳猫','2针疫苗');
INSERT INTO cat_details VALUES(NULL,'images/details/md/cat_01.jpg','images/details/md/cat_02.jpg','images/details/md/cat_03.jpg','images/details/md/cat_04.jpg','加菲猫,布偶猫,缅因猫,蓝猫,等等品种均有',1800,5,'三个月','苏格兰折耳猫','2针疫苗');
INSERT INTO cat_details VALUES(NULL,'images/details/md/cat_01.jpg','images/details/md/cat_02.jpg','images/details/md/cat_03.jpg','images/details/md/cat_04.jpg','加菲猫,布偶猫,缅因猫,蓝猫,等等品种均有',1800,5,'三个月','苏格兰折耳猫','2针疫苗');
INSERT INTO cat_details VALUES(NULL,'images/details/md/cat_01.jpg','images/details/md/cat_02.jpg','images/details/md/cat_03.jpg','images/details/md/cat_04.jpg','加菲猫,布偶猫,缅因猫,蓝猫,等等品种均有',1800,5,'三个月','苏格兰折耳猫','2针疫苗');
INSERT INTO cat_details VALUES(NULL,'images/details/md/cat_01.jpg','images/details/md/cat_02.jpg','images/details/md/cat_03.jpg','images/details/md/cat_04.jpg','加菲猫,布偶猫,缅因猫,蓝猫,等等品种均有',1800,5,'三个月','苏格兰折耳猫','2针疫苗');
INSERT INTO cat_details VALUES(NULL,'images/details/md/cat_01.jpg','images/details/md/cat_02.jpg','images/details/md/cat_03.jpg','images/details/md/cat_04.jpg','加菲猫,布偶猫,缅因猫,蓝猫,等等品种均有',1800,5,'三个月','苏格兰折耳猫','2针疫苗');


INSERT INTO cat_details VALUES(NULL,'images/details/md/cat_jf01.jpg','images/details/md/cat_jf02.jpg','images/details/md/cat_jf03.jpg','images/details/md/cat_jf04.jpg','正规精品CFA猫舍直销 品种齐全 可送货上门 质保',1100,5,'两个月','加菲猫','1针疫苗');
INSERT INTO cat_details VALUES(NULL,'images/details/md/cat_jf01.jpg','images/details/md/cat_jf02.jpg','images/details/md/cat_jf03.jpg','images/details/md/cat_jf04.jpg','正规精品CFA猫舍直销 品种齐全 可送货上门 质保',1100,5,'两个月','加菲猫','1针疫苗');
INSERT INTO cat_details VALUES(NULL,'images/details/md/cat_jf01.jpg','images/details/md/cat_jf02.jpg','images/details/md/cat_jf03.jpg','images/details/md/cat_jf04.jpg','正规精品CFA猫舍直销 品种齐全 可送货上门 质保',1100,5,'两个月','加菲猫','1针疫苗');
INSERT INTO cat_details VALUES(NULL,'images/details/md/cat_jf01.jpg','images/details/md/cat_jf02.jpg','images/details/md/cat_jf03.jpg','images/details/md/cat_jf04.jpg','正规精品CFA猫舍直销 品种齐全 可送货上门 质保',1100,5,'两个月','加菲猫','1针疫苗');
INSERT INTO cat_details VALUES(NULL,'images/details/md/cat_jf01.jpg','images/details/md/cat_jf02.jpg','images/details/md/cat_jf03.jpg','images/details/md/cat_jf04.jpg','正规精品CFA猫舍直销 品种齐全 可送货上门 质保',1100,5,'两个月','加菲猫','1针疫苗');
INSERT INTO cat_details VALUES(NULL,'images/details/md/cat_jf01.jpg','images/details/md/cat_jf02.jpg','images/details/md/cat_jf03.jpg','images/details/md/cat_jf04.jpg','正规精品CFA猫舍直销 品种齐全 可送货上门 质保',1100,5,'两个月','加菲猫','1针疫苗');
INSERT INTO cat_details VALUES(NULL,'images/details/md/cat_jf01.jpg','images/details/md/cat_jf02.jpg','images/details/md/cat_jf03.jpg','images/details/md/cat_jf04.jpg','正规精品CFA猫舍直销 品种齐全 可送货上门 质保',1100,5,'两个月','加菲猫','1针疫苗');
INSERT INTO cat_details VALUES(NULL,'images/details/md/cat_jf01.jpg','images/details/md/cat_jf02.jpg','images/details/md/cat_jf03.jpg','images/details/md/cat_jf04.jpg','正规精品CFA猫舍直销 品种齐全 可送货上门 质保',1100,5,'两个月','加菲猫','1针疫苗');
INSERT INTO cat_details VALUES(NULL,'images/details/md/cat_jf01.jpg','images/details/md/cat_jf02.jpg','images/details/md/cat_jf03.jpg','images/details/md/cat_jf04.jpg','正规精品CFA猫舍直销 品种齐全 可送货上门 质保',1100,5,'两个月','加菲猫','1针疫苗');



INSERT INTO cat_details VALUES(NULL,'images/details/md/cat_yd01.jpg','images/details/md/cat_yd02.jpg','images/details/md/cat_yd03.jpg','images/details/md/cat_yd04.jpg','健康活波纯种宠物猫,自己家繁育现货出售',1500,7,'三个月','英国短毛猫','3针疫苗');
INSERT INTO cat_details VALUES(NULL,'images/details/md/cat_yd01.jpg','images/details/md/cat_yd02.jpg','images/details/md/cat_yd03.jpg','images/details/md/cat_yd04.jpg','健康活波纯种宠物猫,自己家繁育现货出售',1500,7,'三个月','英国短毛猫','3针疫苗');
INSERT INTO cat_details VALUES(NULL,'images/details/md/cat_yd01.jpg','images/details/md/cat_yd02.jpg','images/details/md/cat_yd03.jpg','images/details/md/cat_yd04.jpg','健康活波纯种宠物猫,自己家繁育现货出售',1500,7,'三个月','英国短毛猫','3针疫苗');
INSERT INTO cat_details VALUES(NULL,'images/details/md/cat_yd01.jpg','images/details/md/cat_yd02.jpg','images/details/md/cat_yd03.jpg','images/details/md/cat_yd04.jpg','健康活波纯种宠物猫,自己家繁育现货出售',1500,7,'三个月','英国短毛猫','3针疫苗');
INSERT INTO cat_details VALUES(NULL,'images/details/md/cat_yd01.jpg','images/details/md/cat_yd02.jpg','images/details/md/cat_yd03.jpg','images/details/md/cat_yd04.jpg','健康活波纯种宠物猫,自己家繁育现货出售',1500,7,'三个月','英国短毛猫','3针疫苗');
INSERT INTO cat_details VALUES(NULL,'images/details/md/cat_yd01.jpg','images/details/md/cat_yd02.jpg','images/details/md/cat_yd03.jpg','images/details/md/cat_yd04.jpg','健康活波纯种宠物猫,自己家繁育现货出售',1500,7,'三个月','英国短毛猫','3针疫苗');
INSERT INTO cat_details VALUES(NULL,'images/details/md/cat_yd01.jpg','images/details/md/cat_yd02.jpg','images/details/md/cat_yd03.jpg','images/details/md/cat_yd04.jpg','健康活波纯种宠物猫,自己家繁育现货出售',1500,7,'三个月','英国短毛猫','3针疫苗');
INSERT INTO cat_details VALUES(NULL,'images/details/md/cat_yd01.jpg','images/details/md/cat_yd02.jpg','images/details/md/cat_yd03.jpg','images/details/md/cat_yd04.jpg','健康活波纯种宠物猫,自己家繁育现货出售',1500,7,'三个月','英国短毛猫','3针疫苗');


#猫咪资讯表
CREATE TABLE cat_news(
  nid INT PRIMARY KEY AUTO_INCREMENT,
  img_url VARCHAR(128),
  title VARCHAR(32),
  ctime DATETIME,
  view INT,
  content VARCHAR(1000)
);
INSERT INTO cat_news VALUES(NULL,'images/news/20190309154030_43438.jpg','宠物猫怎么卖？布偶猫行情！',now(),0,'很多养猫宠主对布偶猫的英国很了解吧，布偶猫就像汽车当中的宝马和奔驰都了解但不是每个人都拥有，也不耽误人家开吉利啊，那么布偶猫的价格行情到底怎么样呢？我们看看小编怎么说：据网友所调查布偶猫的价格在贵族品种猫中价格偏上，如果是纯正血统的价格在两万元左右，绝育的价格在5000-15000之间，主要还是取决于品相和血统，也不排除里面有其他猫腻，这个价格也是一个参考罢了，如果你挑选的是双色的品相猫咪价格还要贵一些');
INSERT INTO cat_news VALUES(NULL,'images/news/20190310105554_83169.jpg','宠物猫怎么卖？布偶猫行情！',now(),0,'很多养猫宠主对布偶猫的英国很了解吧，布偶猫就像汽车当中的宝马和奔驰都了解但不是每个人都拥有，也不耽误人家开吉利啊，那么布偶猫的价格行情到底怎么样呢？我们看看小编怎么说：据网友所调查布偶猫的价格在贵族品种猫中价格偏上，如果是纯正血统的价格在两万元左右，绝育的价格在5000-15000之间，主要还是取决于品相和血统，也不排除里面有其他猫腻，这个价格也是一个参考罢了，如果你挑选的是双色的品相猫咪价格还要贵一些');
INSERT INTO cat_news VALUES(NULL,'images/news/20190311140534_63137.jpg','宠物猫怎么卖？布偶猫行情！',now(),0,'很多养猫宠主对布偶猫的英国很了解吧，布偶猫就像汽车当中的宝马和奔驰都了解但不是每个人都拥有，也不耽误人家开吉利啊，那么布偶猫的价格行情到底怎么样呢？我们看看小编怎么说：据网友所调查布偶猫的价格在贵族品种猫中价格偏上，如果是纯正血统的价格在两万元左右，绝育的价格在5000-15000之间，主要还是取决于品相和血统，也不排除里面有其他猫腻，这个价格也是一个参考罢了，如果你挑选的是双色的品相猫咪价格还要贵一些');
INSERT INTO cat_news VALUES(NULL,'images/news/20190311141038_23897.jpg','宠物猫怎么卖？布偶猫行情！',now(),0,'很多养猫宠主对布偶猫的英国很了解吧，布偶猫就像汽车当中的宝马和奔驰都了解但不是每个人都拥有，也不耽误人家开吉利啊，那么布偶猫的价格行情到底怎么样呢？我们看看小编怎么说：据网友所调查布偶猫的价格在贵族品种猫中价格偏上，如果是纯正血统的价格在两万元左右，绝育的价格在5000-15000之间，主要还是取决于品相和血统，也不排除里面有其他猫腻，这个价格也是一个参考罢了，如果你挑选的是双色的品相猫咪价格还要贵一些');
INSERT INTO cat_news VALUES(NULL,'images/news/20190312144532_28080.jpg','宠物猫怎么卖？布偶猫行情！',now(),0,'很多养猫宠主对布偶猫的英国很了解吧，布偶猫就像汽车当中的宝马和奔驰都了解但不是每个人都拥有，也不耽误人家开吉利啊，那么布偶猫的价格行情到底怎么样呢？我们看看小编怎么说：据网友所调查布偶猫的价格在贵族品种猫中价格偏上，如果是纯正血统的价格在两万元左右，绝育的价格在5000-15000之间，主要还是取决于品相和血统，也不排除里面有其他猫腻，这个价格也是一个参考罢了，如果你挑选的是双色的品相猫咪价格还要贵一些');
INSERT INTO cat_news VALUES(NULL,'images/news/20190312145203_86613.jpg','宠物猫怎么卖？布偶猫行情！',now(),0,'很多养猫宠主对布偶猫的英国很了解吧，布偶猫就像汽车当中的宝马和奔驰都了解但不是每个人都拥有，也不耽误人家开吉利啊，那么布偶猫的价格行情到底怎么样呢？我们看看小编怎么说：据网友所调查布偶猫的价格在贵族品种猫中价格偏上，如果是纯正血统的价格在两万元左右，绝育的价格在5000-15000之间，主要还是取决于品相和血统，也不排除里面有其他猫腻，这个价格也是一个参考罢了，如果你挑选的是双色的品相猫咪价格还要贵一些');
INSERT INTO cat_news VALUES(NULL,'images/news/20190313152851_68035.jpg','宠物猫怎么卖？布偶猫行情！',now(),0,'很多养猫宠主对布偶猫的英国很了解吧，布偶猫就像汽车当中的宝马和奔驰都了解但不是每个人都拥有，也不耽误人家开吉利啊，那么布偶猫的价格行情到底怎么样呢？我们看看小编怎么说：据网友所调查布偶猫的价格在贵族品种猫中价格偏上，如果是纯正血统的价格在两万元左右，绝育的价格在5000-15000之间，主要还是取决于品相和血统，也不排除里面有其他猫腻，这个价格也是一个参考罢了，如果你挑选的是双色的品相猫咪价格还要贵一些');
INSERT INTO cat_news VALUES(NULL,'images/news/20190313153549_11205.jpg','宠物猫怎么卖？布偶猫行情！',now(),0,'很多养猫宠主对布偶猫的英国很了解吧，布偶猫就像汽车当中的宝马和奔驰都了解但不是每个人都拥有，也不耽误人家开吉利啊，那么布偶猫的价格行情到底怎么样呢？我们看看小编怎么说：据网友所调查布偶猫的价格在贵族品种猫中价格偏上，如果是纯正血统的价格在两万元左右，绝育的价格在5000-15000之间，主要还是取决于品相和血统，也不排除里面有其他猫腻，这个价格也是一个参考罢了，如果你挑选的是双色的品相猫咪价格还要贵一些');
INSERT INTO cat_news VALUES(NULL,'images/news/20190314181026_33913.jpg','宠物猫怎么卖？布偶猫行情！',now(),0,'很多养猫宠主对布偶猫的英国很了解吧，布偶猫就像汽车当中的宝马和奔驰都了解但不是每个人都拥有，也不耽误人家开吉利啊，那么布偶猫的价格行情到底怎么样呢？我们看看小编怎么说：据网友所调查布偶猫的价格在贵族品种猫中价格偏上，如果是纯正血统的价格在两万元左右，绝育的价格在5000-15000之间，主要还是取决于品相和血统，也不排除里面有其他猫腻，这个价格也是一个参考罢了，如果你挑选的是双色的品相猫咪价格还要贵一些');
INSERT INTO cat_news VALUES(NULL,'images/news/20190314181532_24514 (1).jpg','宠物猫怎么卖？布偶猫行情！',now(),0,'很多养猫宠主对布偶猫的英国很了解吧，布偶猫就像汽车当中的宝马和奔驰都了解但不是每个人都拥有，也不耽误人家开吉利啊，那么布偶猫的价格行情到底怎么样呢？我们看看小编怎么说：据网友所调查布偶猫的价格在贵族品种猫中价格偏上，如果是纯正血统的价格在两万元左右，绝育的价格在5000-15000之间，主要还是取决于品相和血统，也不排除里面有其他猫腻，这个价格也是一个参考罢了，如果你挑选的是双色的品相猫咪价格还要贵一些');
INSERT INTO cat_news VALUES(NULL,'images/news/20190314181532_24514.jpg','宠物猫怎么卖？布偶猫行情！',now(),0,'很多养猫宠主对布偶猫的英国很了解吧，布偶猫就像汽车当中的宝马和奔驰都了解但不是每个人都拥有，也不耽误人家开吉利啊，那么布偶猫的价格行情到底怎么样呢？我们看看小编怎么说：据网友所调查布偶猫的价格在贵族品种猫中价格偏上，如果是纯正血统的价格在两万元左右，绝育的价格在5000-15000之间，主要还是取决于品相和血统，也不排除里面有其他猫腻，这个价格也是一个参考罢了，如果你挑选的是双色的品相猫咪价格还要贵一些');
INSERT INTO cat_news VALUES(NULL,'images/news/20190315101057_86608.jpg','宠物猫怎么卖？布偶猫行情！',now(),0,'很多养猫宠主对布偶猫的英国很了解吧，布偶猫就像汽车当中的宝马和奔驰都了解但不是每个人都拥有，也不耽误人家开吉利啊，那么布偶猫的价格行情到底怎么样呢？我们看看小编怎么说：据网友所调查布偶猫的价格在贵族品种猫中价格偏上，如果是纯正血统的价格在两万元左右，绝育的价格在5000-15000之间，主要还是取决于品相和血统，也不排除里面有其他猫腻，这个价格也是一个参考罢了，如果你挑选的是双色的品相猫咪价格还要贵一些');
INSERT INTO cat_news VALUES(NULL,'images/news/20190315101730_71481.jpg','宠物猫怎么卖？布偶猫行情！',now(),0,'很多养猫宠主对布偶猫的英国很了解吧，布偶猫就像汽车当中的宝马和奔驰都了解但不是每个人都拥有，也不耽误人家开吉利啊，那么布偶猫的价格行情到底怎么样呢？我们看看小编怎么说：据网友所调查布偶猫的价格在贵族品种猫中价格偏上，如果是纯正血统的价格在两万元左右，绝育的价格在5000-15000之间，主要还是取决于品相和血统，也不排除里面有其他猫腻，这个价格也是一个参考罢了，如果你挑选的是双色的品相猫咪价格还要贵一些');
INSERT INTO cat_news VALUES(NULL,'images/news/20190316110030_15431.jpg','宠物猫怎么卖？布偶猫行情！',now(),0,'很多养猫宠主对布偶猫的英国很了解吧，布偶猫就像汽车当中的宝马和奔驰都了解但不是每个人都拥有，也不耽误人家开吉利啊，那么布偶猫的价格行情到底怎么样呢？我们看看小编怎么说：据网友所调查布偶猫的价格在贵族品种猫中价格偏上，如果是纯正血统的价格在两万元左右，绝育的价格在5000-15000之间，主要还是取决于品相和血统，也不排除里面有其他猫腻，这个价格也是一个参考罢了，如果你挑选的是双色的品相猫咪价格还要贵一些');
INSERT INTO cat_news VALUES(NULL,'images/news/20190316111500_17688.jpg','宠物猫怎么卖？布偶猫行情！',now(),0,'很多养猫宠主对布偶猫的英国很了解吧，布偶猫就像汽车当中的宝马和奔驰都了解但不是每个人都拥有，也不耽误人家开吉利啊，那么布偶猫的价格行情到底怎么样呢？我们看看小编怎么说：据网友所调查布偶猫的价格在贵族品种猫中价格偏上，如果是纯正血统的价格在两万元左右，绝育的价格在5000-15000之间，主要还是取决于品相和血统，也不排除里面有其他猫腻，这个价格也是一个参考罢了，如果你挑选的是双色的品相猫咪价格还要贵一些');
INSERT INTO cat_news VALUES(NULL,'images/news/20190318102735_43681.jpg','宠物猫怎么卖？布偶猫行情！',now(),0,'很多养猫宠主对布偶猫的英国很了解吧，布偶猫就像汽车当中的宝马和奔驰都了解但不是每个人都拥有，也不耽误人家开吉利啊，那么布偶猫的价格行情到底怎么样呢？我们看看小编怎么说：据网友所调查布偶猫的价格在贵族品种猫中价格偏上，如果是纯正血统的价格在两万元左右，绝育的价格在5000-15000之间，主要还是取决于品相和血统，也不排除里面有其他猫腻，这个价格也是一个参考罢了，如果你挑选的是双色的品相猫咪价格还要贵一些');
INSERT INTO cat_news VALUES(NULL,'images/news/20190318104050_56046.jpg','宠物猫怎么卖？布偶猫行情！',now(),0,'很多养猫宠主对布偶猫的英国很了解吧，布偶猫就像汽车当中的宝马和奔驰都了解但不是每个人都拥有，也不耽误人家开吉利啊，那么布偶猫的价格行情到底怎么样呢？我们看看小编怎么说：据网友所调查布偶猫的价格在贵族品种猫中价格偏上，如果是纯正血统的价格在两万元左右，绝育的价格在5000-15000之间，主要还是取决于品相和血统，也不排除里面有其他猫腻，这个价格也是一个参考罢了，如果你挑选的是双色的品相猫咪价格还要贵一些');
INSERT INTO cat_news VALUES(NULL,'images/news/20190319162451_60823.jpg','宠物猫怎么卖？布偶猫行情！',now(),0,'很多养猫宠主对布偶猫的英国很了解吧，布偶猫就像汽车当中的宝马和奔驰都了解但不是每个人都拥有，也不耽误人家开吉利啊，那么布偶猫的价格行情到底怎么样呢？我们看看小编怎么说：据网友所调查布偶猫的价格在贵族品种猫中价格偏上，如果是纯正血统的价格在两万元左右，绝育的价格在5000-15000之间，主要还是取决于品相和血统，也不排除里面有其他猫腻，这个价格也是一个参考罢了，如果你挑选的是双色的品相猫咪价格还要贵一些');
INSERT INTO cat_news VALUES(NULL,'images/news/20190319162959_22610.jpg','宠物猫怎么卖？布偶猫行情！',now(),0,'很多养猫宠主对布偶猫的英国很了解吧，布偶猫就像汽车当中的宝马和奔驰都了解但不是每个人都拥有，也不耽误人家开吉利啊，那么布偶猫的价格行情到底怎么样呢？我们看看小编怎么说：据网友所调查布偶猫的价格在贵族品种猫中价格偏上，如果是纯正血统的价格在两万元左右，绝育的价格在5000-15000之间，主要还是取决于品相和血统，也不排除里面有其他猫腻，这个价格也是一个参考罢了，如果你挑选的是双色的品相猫咪价格还要贵一些');
INSERT INTO cat_news VALUES(NULL,'images/news/20190320101618_75039.jpg','宠物猫怎么卖？布偶猫行情！',now(),0,'很多养猫宠主对布偶猫的英国很了解吧，布偶猫就像汽车当中的宝马和奔驰都了解但不是每个人都拥有，也不耽误人家开吉利啊，那么布偶猫的价格行情到底怎么样呢？我们看看小编怎么说：据网友所调查布偶猫的价格在贵族品种猫中价格偏上，如果是纯正血统的价格在两万元左右，绝育的价格在5000-15000之间，主要还是取决于品相和血统，也不排除里面有其他猫腻，这个价格也是一个参考罢了，如果你挑选的是双色的品相猫咪价格还要贵一些');
INSERT INTO cat_news VALUES(NULL,'images/news/20190320102149_49436.jpg','宠物猫怎么卖？布偶猫行情！',now(),0,'很多养猫宠主对布偶猫的英国很了解吧，布偶猫就像汽车当中的宝马和奔驰都了解但不是每个人都拥有，也不耽误人家开吉利啊，那么布偶猫的价格行情到底怎么样呢？我们看看小编怎么说：据网友所调查布偶猫的价格在贵族品种猫中价格偏上，如果是纯正血统的价格在两万元左右，绝育的价格在5000-15000之间，主要还是取决于品相和血统，也不排除里面有其他猫腻，这个价格也是一个参考罢了，如果你挑选的是双色的品相猫咪价格还要贵一些');
INSERT INTO cat_news VALUES(NULL,'images/news/20190321094428_62280.jpg','宠物猫怎么卖？布偶猫行情！',now(),0,'很多养猫宠主对布偶猫的英国很了解吧，布偶猫就像汽车当中的宝马和奔驰都了解但不是每个人都拥有，也不耽误人家开吉利啊，那么布偶猫的价格行情到底怎么样呢？我们看看小编怎么说：据网友所调查布偶猫的价格在贵族品种猫中价格偏上，如果是纯正血统的价格在两万元左右，绝育的价格在5000-15000之间，主要还是取决于品相和血统，也不排除里面有其他猫腻，这个价格也是一个参考罢了，如果你挑选的是双色的品相猫咪价格还要贵一些');
INSERT INTO cat_news VALUES(NULL,'images/news/20190321094957_67094.jpg','宠物猫怎么卖？布偶猫行情！',now(),0,'很多养猫宠主对布偶猫的英国很了解吧，布偶猫就像汽车当中的宝马和奔驰都了解但不是每个人都拥有，也不耽误人家开吉利啊，那么布偶猫的价格行情到底怎么样呢？我们看看小编怎么说：据网友所调查布偶猫的价格在贵族品种猫中价格偏上，如果是纯正血统的价格在两万元左右，绝育的价格在5000-15000之间，主要还是取决于品相和血统，也不排除里面有其他猫腻，这个价格也是一个参考罢了，如果你挑选的是双色的品相猫咪价格还要贵一些');
INSERT INTO cat_news VALUES(NULL,'images/news/20190322095246_12513.jpg','宠物猫怎么卖？布偶猫行情！',now(),0,'很多养猫宠主对布偶猫的英国很了解吧，布偶猫就像汽车当中的宝马和奔驰都了解但不是每个人都拥有，也不耽误人家开吉利啊，那么布偶猫的价格行情到底怎么样呢？我们看看小编怎么说：据网友所调查布偶猫的价格在贵族品种猫中价格偏上，如果是纯正血统的价格在两万元左右，绝育的价格在5000-15000之间，主要还是取决于品相和血统，也不排除里面有其他猫腻，这个价格也是一个参考罢了，如果你挑选的是双色的品相猫咪价格还要贵一些');
INSERT INTO cat_news VALUES(NULL,'images/news/20190322095833_48285.jpg','宠物猫怎么卖？布偶猫行情！',now(),0,'很多养猫宠主对布偶猫的英国很了解吧，布偶猫就像汽车当中的宝马和奔驰都了解但不是每个人都拥有，也不耽误人家开吉利啊，那么布偶猫的价格行情到底怎么样呢？我们看看小编怎么说：据网友所调查布偶猫的价格在贵族品种猫中价格偏上，如果是纯正血统的价格在两万元左右，绝育的价格在5000-15000之间，主要还是取决于品相和血统，也不排除里面有其他猫腻，这个价格也是一个参考罢了，如果你挑选的是双色的品相猫咪价格还要贵一些');
INSERT INTO cat_news VALUES(NULL,'images/news/20190323091941_78852.jpg','宠物猫怎么卖？布偶猫行情！',now(),0,'很多养猫宠主对布偶猫的英国很了解吧，布偶猫就像汽车当中的宝马和奔驰都了解但不是每个人都拥有，也不耽误人家开吉利啊，那么布偶猫的价格行情到底怎么样呢？我们看看小编怎么说：据网友所调查布偶猫的价格在贵族品种猫中价格偏上，如果是纯正血统的价格在两万元左右，绝育的价格在5000-15000之间，主要还是取决于品相和血统，也不排除里面有其他猫腻，这个价格也是一个参考罢了，如果你挑选的是双色的品相猫咪价格还要贵一些');
INSERT INTO cat_news VALUES(NULL,'images/news/20190323092433_52038.jpg','宠物猫怎么卖？布偶猫行情！',now(),0,'很多养猫宠主对布偶猫的英国很了解吧，布偶猫就像汽车当中的宝马和奔驰都了解但不是每个人都拥有，也不耽误人家开吉利啊，那么布偶猫的价格行情到底怎么样呢？我们看看小编怎么说：据网友所调查布偶猫的价格在贵族品种猫中价格偏上，如果是纯正血统的价格在两万元左右，绝育的价格在5000-15000之间，主要还是取决于品相和血统，也不排除里面有其他猫腻，这个价格也是一个参考罢了，如果你挑选的是双色的品相猫咪价格还要贵一些');
INSERT INTO cat_news VALUES(NULL,'images/news/20190325110150_87548.jpg','宠物猫怎么卖？布偶猫行情！',now(),0,'很多养猫宠主对布偶猫的英国很了解吧，布偶猫就像汽车当中的宝马和奔驰都了解但不是每个人都拥有，也不耽误人家开吉利啊，那么布偶猫的价格行情到底怎么样呢？我们看看小编怎么说：据网友所调查布偶猫的价格在贵族品种猫中价格偏上，如果是纯正血统的价格在两万元左右，绝育的价格在5000-15000之间，主要还是取决于品相和血统，也不排除里面有其他猫腻，这个价格也是一个参考罢了，如果你挑选的是双色的品相猫咪价格还要贵一些');
INSERT INTO cat_news VALUES(NULL,'images/news/20190325110702_14671.jpg','宠物猫怎么卖？布偶猫行情！',now(),0,'很多养猫宠主对布偶猫的英国很了解吧，布偶猫就像汽车当中的宝马和奔驰都了解但不是每个人都拥有，也不耽误人家开吉利啊，那么布偶猫的价格行情到底怎么样呢？我们看看小编怎么说：据网友所调查布偶猫的价格在贵族品种猫中价格偏上，如果是纯正血统的价格在两万元左右，绝育的价格在5000-15000之间，主要还是取决于品相和血统，也不排除里面有其他猫腻，这个价格也是一个参考罢了，如果你挑选的是双色的品相猫咪价格还要贵一些');
INSERT INTO cat_news VALUES(NULL,'images/news/20190325110702_14671.jpg','宠物猫怎么卖？布偶猫行情！',now(),0,'很多养猫宠主对布偶猫的英国很了解吧，布偶猫就像汽车当中的宝马和奔驰都了解但不是每个人都拥有，也不耽误人家开吉利啊，那么布偶猫的价格行情到底怎么样呢？我们看看小编怎么说：据网友所调查布偶猫的价格在贵族品种猫中价格偏上，如果是纯正血统的价格在两万元左右，绝育的价格在5000-15000之间，主要还是取决于品相和血统，也不排除里面有其他猫腻，这个价格也是一个参考罢了，如果你挑选的是双色的品相猫咪价格还要贵一些');
INSERT INTO cat_news VALUES(NULL,'images/news/20190309154030_43438.jpg','宠物猫怎么卖？布偶猫行情！',now(),0,'很多养猫宠主对布偶猫的英国很了解吧，布偶猫就像汽车当中的宝马和奔驰都了解但不是每个人都拥有，也不耽误人家开吉利啊，那么布偶猫的价格行情到底怎么样呢？我们看看小编怎么说：据网友所调查布偶猫的价格在贵族品种猫中价格偏上，如果是纯正血统的价格在两万元左右，绝育的价格在5000-15000之间，主要还是取决于品相和血统，也不排除里面有其他猫腻，这个价格也是一个参考罢了，如果你挑选的是双色的品相猫咪价格还要贵一些');
INSERT INTO cat_news VALUES(NULL,'images/news/20190310105554_83169.jpg','宠物猫怎么卖？布偶猫行情！',now(),0,'很多养猫宠主对布偶猫的英国很了解吧，布偶猫就像汽车当中的宝马和奔驰都了解但不是每个人都拥有，也不耽误人家开吉利啊，那么布偶猫的价格行情到底怎么样呢？我们看看小编怎么说：据网友所调查布偶猫的价格在贵族品种猫中价格偏上，如果是纯正血统的价格在两万元左右，绝育的价格在5000-15000之间，主要还是取决于品相和血统，也不排除里面有其他猫腻，这个价格也是一个参考罢了，如果你挑选的是双色的品相猫咪价格还要贵一些');
INSERT INTO cat_news VALUES(NULL,'images/news/20190311140534_63137.jpg','宠物猫怎么卖？布偶猫行情！',now(),0,'很多养猫宠主对布偶猫的英国很了解吧，布偶猫就像汽车当中的宝马和奔驰都了解但不是每个人都拥有，也不耽误人家开吉利啊，那么布偶猫的价格行情到底怎么样呢？我们看看小编怎么说：据网友所调查布偶猫的价格在贵族品种猫中价格偏上，如果是纯正血统的价格在两万元左右，绝育的价格在5000-15000之间，主要还是取决于品相和血统，也不排除里面有其他猫腻，这个价格也是一个参考罢了，如果你挑选的是双色的品相猫咪价格还要贵一些');
INSERT INTO cat_news VALUES(NULL,'images/news/20190311141038_23897.jpg','宠物猫怎么卖？布偶猫行情！',now(),0,'很多养猫宠主对布偶猫的英国很了解吧，布偶猫就像汽车当中的宝马和奔驰都了解但不是每个人都拥有，也不耽误人家开吉利啊，那么布偶猫的价格行情到底怎么样呢？我们看看小编怎么说：据网友所调查布偶猫的价格在贵族品种猫中价格偏上，如果是纯正血统的价格在两万元左右，绝育的价格在5000-15000之间，主要还是取决于品相和血统，也不排除里面有其他猫腻，这个价格也是一个参考罢了，如果你挑选的是双色的品相猫咪价格还要贵一些');
INSERT INTO cat_news VALUES(NULL,'images/news/20190312144532_28080.jpg','宠物猫怎么卖？布偶猫行情！',now(),0,'很多养猫宠主对布偶猫的英国很了解吧，布偶猫就像汽车当中的宝马和奔驰都了解但不是每个人都拥有，也不耽误人家开吉利啊，那么布偶猫的价格行情到底怎么样呢？我们看看小编怎么说：据网友所调查布偶猫的价格在贵族品种猫中价格偏上，如果是纯正血统的价格在两万元左右，绝育的价格在5000-15000之间，主要还是取决于品相和血统，也不排除里面有其他猫腻，这个价格也是一个参考罢了，如果你挑选的是双色的品相猫咪价格还要贵一些');
INSERT INTO cat_news VALUES(NULL,'images/news/20190312145203_86613.jpg','宠物猫怎么卖？布偶猫行情！',now(),0,'很多养猫宠主对布偶猫的英国很了解吧，布偶猫就像汽车当中的宝马和奔驰都了解但不是每个人都拥有，也不耽误人家开吉利啊，那么布偶猫的价格行情到底怎么样呢？我们看看小编怎么说：据网友所调查布偶猫的价格在贵族品种猫中价格偏上，如果是纯正血统的价格在两万元左右，绝育的价格在5000-15000之间，主要还是取决于品相和血统，也不排除里面有其他猫腻，这个价格也是一个参考罢了，如果你挑选的是双色的品相猫咪价格还要贵一些');
INSERT INTO cat_news VALUES(NULL,'images/news/20190313152851_68035.jpg','宠物猫怎么卖？布偶猫行情！',now(),0,'很多养猫宠主对布偶猫的英国很了解吧，布偶猫就像汽车当中的宝马和奔驰都了解但不是每个人都拥有，也不耽误人家开吉利啊，那么布偶猫的价格行情到底怎么样呢？我们看看小编怎么说：据网友所调查布偶猫的价格在贵族品种猫中价格偏上，如果是纯正血统的价格在两万元左右，绝育的价格在5000-15000之间，主要还是取决于品相和血统，也不排除里面有其他猫腻，这个价格也是一个参考罢了，如果你挑选的是双色的品相猫咪价格还要贵一些');
INSERT INTO cat_news VALUES(NULL,'images/news/20190313153549_11205.jpg','宠物猫怎么卖？布偶猫行情！',now(),0,'很多养猫宠主对布偶猫的英国很了解吧，布偶猫就像汽车当中的宝马和奔驰都了解但不是每个人都拥有，也不耽误人家开吉利啊，那么布偶猫的价格行情到底怎么样呢？我们看看小编怎么说：据网友所调查布偶猫的价格在贵族品种猫中价格偏上，如果是纯正血统的价格在两万元左右，绝育的价格在5000-15000之间，主要还是取决于品相和血统，也不排除里面有其他猫腻，这个价格也是一个参考罢了，如果你挑选的是双色的品相猫咪价格还要贵一些');


#猫咪品种
CREATE TABLE cat_breeds(
  bid INT PRIMARY KEY AUTO_INCREMENT,
  img_url VARCHAR(128),
  bname VARCHAR(16),
  price VARCHAR(32)
);
INSERT INTO cat_breeds VALUES(NULL,'images/breeds/buou.jpg','布偶猫','6000-20000');
INSERT INTO cat_breeds VALUES(NULL,'images/breeds/jiafei.jpg','加菲猫','2000-5000');
INSERT INTO cat_breeds VALUES(NULL,'images/breeds/jinjianceng.jpg','金渐层','2000-5000');
INSERT INTO cat_breeds VALUES(NULL,'images/breeds/yingduan.jpg','英短蓝猫','2200-6000');
INSERT INTO cat_breeds VALUES(NULL,'images/breeds/lanbai.jpg','英短蓝白','2500-6000');
INSERT INTO cat_breeds VALUES(NULL,'images/breeds/meiguoduanmao.jpg','美国短毛猫','2500-6000');
INSERT INTO cat_breeds VALUES(NULL,'images/breeds/duanmao.jpg','英国短毛猫','2500-5000');
INSERT INTO cat_breeds VALUES(NULL,'images/breeds/zheer.jpg','苏格兰折耳猫','3000-6000');
INSERT INTO cat_breeds VALUES(NULL,'images/breeds/yinjianceng.jpg','银渐层','2000-5000');
INSERT INTO cat_breeds VALUES(NULL,'images/breeds/yiguoduanmao.jpg','异国短毛猫','3000-8000');
INSERT INTO cat_breeds VALUES(NULL,'images/breeds/mengmai.jpg','孟买猫','2500-5000');
INSERT INTO cat_breeds VALUES(NULL,'images/breeds/xianluo.jpg','暹罗猫','2500-5000');
INSERT INTO cat_breeds VALUES(NULL,'images/breeds/mengjiala.jpg','孟加拉豹猫','2500-5000');
INSERT INTO cat_breeds VALUES(NULL,'images/breeds/mianyin.jpg','缅因猫','7000-20000');
INSERT INTO cat_breeds VALUES(NULL,'images/breeds/jinjila.jpg','金吉拉猫','3000-5000');
INSERT INTO cat_breeds VALUES(NULL,'images/breeds/wumao.jpg','无毛猫','7000-20000');
INSERT INTO cat_breeds VALUES(NULL,'images/breeds/gaodizheer.jpg','高地折耳猫','3000-8000');
INSERT INTO cat_breeds VALUES(NULL,'images/breeds/aijiao.jpg','麦基康矮脚猫','6000-15000');
INSERT INTO cat_breeds VALUES(NULL,'images/breeds/bosi.jpg','波斯猫','3000-8000');
INSERT INTO cat_breeds VALUES(NULL,'images/breeds/pangju.jpg','橘猫','2000-5000');
INSERT INTO cat_breeds VALUES(NULL,'images/breeds/abxny.jpg','阿比西尼亚猫','5000-10000');
INSERT INTO cat_breeds VALUES(NULL,'images/breeds/juanmao.jpg','德文卷毛猫','2000-5000');



#品种详情
CREATE TABLE cat_breeds_detaile(
  did INT PRIMARY KEY AUTO_INCREMENT,
  img_url1 VARCHAR(128),
  img_url2 VARCHAR(128),
  img_url3 VARCHAR(128),
  img_url4 VARCHAR(128),
  cname VARCHAR(16),
  ename VARCHAR(32),
  price VARCHAR(32),
  alias VARCHAR(32),    #别名
  ancestor VARCHAR(32), #祖先
  area VARCHAR(32),     #区域
  source VARCHAR(32),   #原产地
  bodily VARCHAR(32),   #体型
  ypurpose VARCHAR(32), #原始用途
  jpurpose VARCHAR(32), #现在原图
  stature VARCHAR(32),  #身高
  weight VARCHAR(32),   #体重
  lifetime VARCHAR(32)  #寿命
);
INSERT INTO cat_breeds_detaile VALUES(NULL,'images/breed_details/buou1.jpg','images/breed_details/buou2.jpg','images/breed_details/buou3.jpg','images/breed_details/buou4.jpg','布偶猫','Bu Ou Mao','6000-20000','布娃娃猫,布拉多猫','白色长毛猫','英国、中国','美国','大型','宠物猫','宠物猫','30CM','9KG','15年');
INSERT INTO cat_breeds_detaile VALUES(NULL,'images/breed_details/jf1.jpg','images/breed_details/jf2.jpg','images/breed_details/jf3.jpg','images/breed_details/jf4.jpg','加菲猫','Jia Fei Mao','6000-20000','布娃娃猫','布拉多猫,白色长毛猫','英国、中国','美国','大型','宠物猫','宠物猫','30CM','9KG','15年');
INSERT INTO cat_breeds_detaile VALUES(NULL,'images/breed_details/jjc1.jpg','images/breed_details/jjc2.jpg','images/breed_details/jjc3.jpg','images/breed_details/jjc4.jpg','金渐层','Jin Jian Ceng','6000-20000','布娃娃猫,布拉多猫','白色长毛猫','英国、中国','美国','大型','宠物猫','宠物猫','30CM','9KG','15年');
INSERT INTO cat_breeds_detaile VALUES(NULL,'images/breed_details/ydlm1.jpg','images/breed_details/ydlm2.jpg','images/breed_details/ydlm3.jpg','images/breed_details/ydlm4.jpg','英短蓝猫','Lan Mao','6000-20000','布娃娃猫,布拉多猫','白色长毛猫','英国、中国','美国','大型','宠物猫','宠物猫','30CM','9KG','15年');
INSERT INTO cat_breeds_detaile VALUES(NULL,'images/breed_details/ydlb1.jpg','images/breed_details/ydlb2.jpg','images/breed_details/ydlb3.jpg','images/breed_details/ydlb4.jpg','英短蓝白','Lan Bai','6000-20000','布娃娃猫,布拉多猫','白色长毛猫','英国、中国','美国','大型','宠物猫','宠物猫','30CM','9KG','15年');
INSERT INTO cat_breeds_detaile VALUES(NULL,'images/breed_details/dm1.jpg','images/breed_details/dm2.jpg','images/breed_details/dm3.jpg','images/breed_details/dm4.jpg','英国短毛猫','Ying Duan','6000-20000','布娃娃猫','布拉多猫,白色长毛猫','英国、中国','美国','大型','宠物猫','宠物猫','30CM','9KG','15年');
INSERT INTO cat_breeds_detaile VALUES(NULL,'images/breed_details/mgdm1.jpg','images/breed_details/mgdm2.jpg','images/breed_details/mgdm3.jpg','images/breed_details/mgdm4.jpg','美国短毛猫','Mei Duan','6000-20000','布娃娃猫,布拉多猫','白色长毛猫','英国、中国','美国','大型','宠物猫','宠物猫','30CM','9KG','15年');
INSERT INTO cat_breeds_detaile VALUES(NULL,'images/breed_details/zheer1.jpg','images/breed_details/zheer2.jpg','images/breed_details/zheer3.jpg','images/breed_details/zheer4.jpg','苏格兰折耳猫','Zhe Er Mao','6000-20000','布娃娃猫,布拉多猫','白色长毛猫','英国、中国','美国','大型','宠物猫','宠物猫','30CM','9KG','15年');
INSERT INTO cat_breeds_detaile VALUES(NULL,'images/breed_details/yjc1.jpg','images/breed_details/yjc2.jpg','images/breed_details/yjc3.jpg','images/breed_details/yjc4.jpg','银渐层','Yin Jian Ceng','6000-20000','布娃娃猫,布拉多猫','白色长毛猫','英国、中国','美国','大型','宠物猫','宠物猫','30CM','9KG','15年');
INSERT INTO cat_breeds_detaile VALUES(NULL,'images/breed_details/ygdm1.jpg','images/breed_details/ygdm2.jpg','images/breed_details/ygdm3.jpg','images/breed_details/ygdm4.jpg','异国短毛猫','Duan Mao mao','6000-20000','布娃娃猫,布拉多猫','白色长毛猫','英国、中国','美国','大型','宠物猫','宠物猫','30CM','9KG','15年');
INSERT INTO cat_breeds_detaile VALUES(NULL,'images/breed_details/mm1.jpg','images/breed_details/mm2.jpg','images/breed_details/mm3.jpg','images/breed_details/mm4.jpg','孟买猫','Meng Mai Mao','6000-20000','布娃娃猫,布拉多猫','白色长毛猫','英国、中国','美国','大型','宠物猫','宠物猫','30CM','9KG','15年');
INSERT INTO cat_breeds_detaile VALUES(NULL,'images/breed_details/xl1.jpg','images/breed_details/xl2.jpg','images/breed_details/xl3.jpg','images/breed_details/xl4.jpg','暹罗猫','Xian Luo Mao','6000-20000','布娃娃猫,布拉多猫','白色长毛猫','英国、中国','美国','大型','宠物猫','宠物猫','30CM','9KG','15年');
INSERT INTO cat_breeds_detaile VALUES(NULL,'images/breed_details/mjlb1.jpg','images/breed_details/mjlb2.jpg','images/breed_details/mjlb3.jpg','images/breed_details/mjlb4.jpg','孟加拉豹猫','Bao Mao','6000-20000','布娃娃猫,布拉多猫','白色长毛猫','英国、中国','美国','大型','宠物猫','宠物猫','30CM','9KG','15年');
INSERT INTO cat_breeds_detaile VALUES(NULL,'images/breed_details/my1.jpg','images/breed_details/my2.jpg','images/breed_details/my3.jpg','images/breed_details/my4.jpg','缅因猫','Mian Yin Mao','6000-20000','布娃娃猫,布拉多猫','白色长毛猫','英国、中国','美国','大型','宠物猫','宠物猫','30CM','9KG','15年');
INSERT INTO cat_breeds_detaile VALUES(NULL,'images/breed_details/jjl1.jpg','images/breed_details/jjl2.jpg','images/breed_details/jjl3.jpg','images/breed_details/jjl4.jpg','金吉拉猫','Jin Ji La Mao','6000-20000','布娃娃猫,布拉多猫','白色长毛猫','英国、中国','美国','大型','宠物猫','宠物猫','30CM','9KG','15年');
INSERT INTO cat_breeds_detaile VALUES(NULL,'images/breed_details/wm1.jpg','images/breed_details/wm2.jpg','images/breed_details/wm3.jpg','images/breed_details/wm4.jpg','无毛猫','Wu Mao Mao','6000-20000','布娃娃猫,布拉多猫','白色长毛猫','英国、中国','美国','大型','宠物猫','宠物猫','30CM','9KG','15年');
INSERT INTO cat_breeds_detaile VALUES(NULL,'images/breed_details/gdzheer1.jpg','images/breed_details/gdzheer2.jpg','images/breed_details/gdzheer3.jpg','images/breed_details/gdzheer4.jpg','高地折耳猫','Gao Di Zhe Er Mao','6000-20000','布娃娃猫','布拉多猫','白色长毛猫','英国、中国','美国','大型','宠物猫','宠物猫','30CM','9KG','15年');
INSERT INTO cat_breeds_detaile VALUES(NULL,'images/breed_details/aj1.jpg','images/breed_details/aj2.jpg','images/breed_details/aj3.jpg','images/breed_details/aj4.jpg','麦基康矮脚猫','Ai Jiao Mao','6000-20000','布娃娃猫,布拉多猫','白色长毛猫','英国、中国','美国','大型','宠物猫','宠物猫','30CM','9KG','15年');
INSERT INTO cat_breeds_detaile VALUES(NULL,'images/breed_details/bs1.jpg','images/breed_details/bs2.jpg','images/breed_details/bs3.jpg','images/breed_details/bs4.jpg','波斯猫','Bo Si Mao','6000-20000','布娃娃猫,布拉多猫','白色长毛猫','英国、中国','美国','大型','宠物猫','宠物猫','30CM','9KG','15年');
INSERT INTO cat_breeds_detaile VALUES(NULL,'images/breed_details/pj1.jpg','images/breed_details/pj2.jpg','images/breed_details/pj3.jpg','images/breed_details/pj4.jpg','橘猫','Ju Mao','6000-20000','布娃娃猫','布拉多猫,白色长毛猫','英国、中国','美国','大型','宠物猫','宠物猫','30CM','9KG','15年');
INSERT INTO cat_breeds_detaile VALUES(NULL,'images/breed_details/xny1.jpg','images/breed_details/xny2.jpg','images/breed_details/xny3.jpg','images/breed_details/xny4.jpg','阿比西尼亚猫','A Bi Xi Li Ya','6000-20000','布娃娃猫,布拉多猫','白色长毛猫','英国、中国','美国','大型','宠物猫','宠物猫','30CM','9KG','15年');
INSERT INTO cat_breeds_detaile VALUES(NULL,'images/breed_details/dwjm1.jpg','images/breed_details/dwjm2.jpg','images/breed_details/dwjm1.jpg','images/breed_details/dwjm1.jpg','德文卷毛猫','De Wen Juan Mao','6000-20000','布娃娃猫,布拉多猫','白色长毛猫','英国、中国','美国','大型','宠物猫','宠物猫','30CM','9KG','15年');



#发布信息
CREATE TABLE cat_post_message(
  mid INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(30),
  des VARCHAR(100),
  breed VARCHAR(16),
  linkman VARCHAR(10),
  sex VARCHAR(16),
  area VARCHAR(32),
  age VARCHAR(16),
  tel VARCHAR(11),
  vaccine VARCHAR(10),
  QQ INT,
  qc VARCHAR(10),
  wechat VARCHAR(20),
  isvideo VARCHAR(16),
  sale INT,
  freight VARCHAR(16),
  price VARCHAR(32),
  purebred VARCHAR(16),
  ensure VARCHAR(15)
);