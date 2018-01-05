SET NAMES UTF8;
DROP DATABASE IF EXISTS mymenu;
CREATE DATABASE mymenu CHARSET=UTF8;
USE mymenu;

CREATE TABLE index_carousel(
  cid INT PRIMARY KEY AUTO_INCREMENT,
  img  VARCHAR(128),
  title VARCHAR(128),
  href VARCHAR(128)
);
INSERT INTO index_carousel VALUES(NULL,'img/index/1.jpg','早餐','#');
INSERT INTO index_carousel VALUES(NULL,'img/index/2.jpg','中餐','#');
INSERT INTO index_carousel VALUES(NULL,'img/index/3.jpg','晚餐','#');
INSERT INTO index_carousel VALUES(NULL,'img/index/4.jpg','夜宵','#');

CREATE TABLE index_menu_classify(
  menu_cid INT PRIMARY KEY AUTO_INCREMENT,
  menu_list VARCHAR(64),
  menu_floor INT
);
INSERT INTO index_menu_classify VALUES(NULL,'营养',1);
INSERT INTO index_menu_classify VALUES(NULL,'益智',1);
INSERT INTO index_menu_classify VALUES(NULL,'增高',1);
INSERT INTO index_menu_classify VALUES(NULL,'免疫力',1);
INSERT INTO index_menu_classify VALUES(NULL,'早餐',2);
INSERT INTO index_menu_classify VALUES(NULL,'视力',2);
INSERT INTO index_menu_classify VALUES(NULL,'开胃',2);
INSERT INTO index_menu_classify VALUES(NULL,'更多',2);

CREATE TABLE index_menu(
  mid  INT PRIMARY KEY AUTO_INCREMENT,
  img  VARCHAR(128),
  title  VARCHAR(128),
  menu_detail  VARCHAR(128),
  href  VARCHAR(128)  
);
INSERT INTO index_menu VALUES(NULL,'img/index/index_menu_1.jpg','没有什么事比冷天吃重口味更de劲儿','#12道菜谱#','#');
INSERT INTO index_menu VALUES(NULL,'img/index/index_menu_2.jpg','如何假装成一个做菜的高手','#12道菜谱#','#');
INSERT INTO index_menu VALUES(NULL,'img/index/index_menu_3.jpg','吃多了吗？吃点这个消消食','#13道菜谱#','#');
INSERT INTO index_menu VALUES(NULL,'img/index/index_menu_4.jpg','全国各地名小吃，你都吃过了吗','#17道菜谱#','#');
INSERT INTO index_menu VALUES(NULL,'img/index/index_menu_5.jpg','本月鲜爽时蔬，试试不一样的吃法','#12道菜谱#','#');
INSERT INTO index_menu VALUES(NULL,'img/index/index_menu_6.jpg','ta的生日,总想做点特别的','#13道菜谱#','#');
INSERT INTO index_menu VALUES(NULL,'img/index/index_menu_7.jpg','秋冬季养生秘诀，千万别低估煲汤的威力','#12道菜谱#','#');
INSERT INTO index_menu VALUES(NULL,'img/index/index_menu_8.jpg','秋冬季皮肤干燥，吃这些对症下药','#11道菜谱#','#');
INSERT INTO index_menu VALUES(NULL,'img/index/index_menu_9.jpg','寒冷季节里的专属下午茶','#11道菜谱#','#');
INSERT INTO index_menu VALUES(NULL,'img/index/index_menu_10.jpg','春倒计时,我的素食计划','#12道菜谱#','#');

CREATE TABLE classify_menu(
  classify_mid  INT PRIMARY KEY AUTO_INCREMENT,
  img  VARCHAR(128),
  classify_title  VARCHAR(128),
  classify_detail  VARCHAR(128),
  href  VARCHAR(128),
  classify_floor INT
);
INSERT INTO classify_menu VALUES(NULL,'img/classify/classify_1.jpg','热门分类','#家常菜','#',1);
INSERT INTO classify_menu VALUES(NULL,'img/classify/classify_2.jpg','热门分类','#素菜','#',1);
INSERT INTO classify_menu VALUES(NULL,'img/classify/classify_3.jpg','热门分类','#面食','#',1);
INSERT INTO classify_menu VALUES(NULL,'img/classify/classify_4.jpg','热门分类','#凉菜','#',1);
INSERT INTO classify_menu VALUES(NULL,'img/classify/classify_5.jpg','热门分类','#汤','#',1);
INSERT INTO classify_menu VALUES(NULL,'img/classify/classify_6.jpg','热门分类','#粥','#',1);
INSERT INTO classify_menu VALUES(NULL,'img/classify/classify_7.jpg','热门分类','#下饭菜','#',1);

INSERT INTO classify_menu VALUES(NULL,'img/classify/classify_8.jpg','菜系','#川菜','#',2);
INSERT INTO classify_menu VALUES(NULL,'img/classify/classify_9.jpg','菜系','#鲁菜','#',2);
INSERT INTO classify_menu VALUES(NULL,'img/classify/classify_10.jpg','菜系','#粤菜','#',2);
INSERT INTO classify_menu VALUES(NULL,'img/classify/classify_11.jpg','菜系','#苏菜','#',2);
INSERT INTO classify_menu VALUES(NULL,'img/classify/classify_12.jpg','菜系','#浙菜','#',2);
INSERT INTO classify_menu VALUES(NULL,'img/classify/classify_13.jpg','菜系','#闽菜','#',2);
INSERT INTO classify_menu VALUES(NULL,'img/classify/classify_14.jpg','菜系','#湘菜','#',2);
INSERT INTO classify_menu VALUES(NULL,'img/classify/classify_15.jpg','菜系','#徽菜','#',2);
INSERT INTO classify_menu VALUES(NULL,'img/classify/classify_16.jpg','菜系','#西餐','#',2);
INSERT INTO classify_menu VALUES(NULL,'img/classify/classify_17.jpg','菜系','#东北菜','#',2);

INSERT INTO classify_menu VALUES(NULL,'img/classify/classify_18.jpg','热门食材','#肉类','#',3);
INSERT INTO classify_menu VALUES(NULL,'img/classify/classify_19.jpg','热门食材','#蛋、奶','#',3);
INSERT INTO classify_menu VALUES(NULL,'img/classify/classify_20.jpg','热门食材','#鱼类','#',3);
INSERT INTO classify_menu VALUES(NULL,'img/classify/classify_21.jpg','热门食材','#水产','#',3);
INSERT INTO classify_menu VALUES(NULL,'img/classify/classify_22.jpg','热门食材','#蔬菜','#',3);
INSERT INTO classify_menu VALUES(NULL,'img/classify/classify_23.jpg','热门食材','#豆类','#',3);
INSERT INTO classify_menu VALUES(NULL,'img/classify/classify_24.jpg','热门食材','#五谷杂粮','#',3);

INSERT INTO classify_menu VALUES(NULL,'img/classify/classify_25.jpg','场合','#早餐','#',4);
INSERT INTO classify_menu VALUES(NULL,'img/classify/classify_26.jpg','场合','#晚餐','#',4);
INSERT INTO classify_menu VALUES(NULL,'img/classify/classify_27.jpg','场合','#中餐','#',4);
INSERT INTO classify_menu VALUES(NULL,'img/classify/classify_28.jpg','场合','#下午茶','#',4);
INSERT INTO classify_menu VALUES(NULL,'img/classify/classify_29.jpg','场合','#夜宵','#',4);
INSERT INTO classify_menu VALUES(NULL,'img/classify/classify_30.jpg','场合','#深夜食堂','#',4);
INSERT INTO classify_menu VALUES(NULL,'img/classify/classify_31.jpg','场合','#单身食谱','#',4);

CREATE TABLE user(
  uid INT PRIMARY KEY AUTO_INCREMENT,
  uname VARCHAR(32),
  upwd  VARCHAR(32),
  phone VARCHAR(32),
  email VARCHAR(64)
);
INSERT INTO user VALUES(NULL,'tom','123456','15858584546','tom@qq.com');
INSERT INTO user VALUES(NULL,'mary','123456','15858584578','mary@qq.com');
INSERT INTO user VALUES(NULL,'jack','123456','15858584554','jack@qq.com');
INSERT INTO user VALUES(NULL,'serry','123456','15858584575','serry@qq.com');
INSERT INTO user VALUES(NULL,'jim','123456','15858584656','jim@qq.com');
INSERT INTO user VALUES(NULL,'tony','123456','15858478546','tony@qq.com');

CREATE TABLE all_menu_type(
  menu_tid INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(32),
  type INT
);
INSERT INTO all_menu_type VALUES(NULL,'热门',1);
INSERT INTO all_menu_type VALUES(NULL,'菜式',1);
INSERT INTO all_menu_type VALUES(NULL,'菜系',1);
INSERT INTO all_menu_type VALUES(NULL,'特色',1);
INSERT INTO all_menu_type VALUES(NULL,'主食',1);
INSERT INTO all_menu_type VALUES(NULL,'器具',1);
INSERT INTO all_menu_type VALUES(NULL,'烹饪方式',1);
INSERT INTO all_menu_type VALUES(NULL,'口味',1);
INSERT INTO all_menu_type VALUES(NULL,'场合',1);
INSERT INTO all_menu_type VALUES(NULL,'节目',1);
INSERT INTO all_menu_type VALUES(NULL,'肉类',2);
INSERT INTO all_menu_type VALUES(NULL,'蛋/奶',2);
INSERT INTO all_menu_type VALUES(NULL,'鱼类',2);
INSERT INTO all_menu_type VALUES(NULL,'蔬菜',2);
INSERT INTO all_menu_type VALUES(NULL,'水产',2);
INSERT INTO all_menu_type VALUES(NULL,'豆类',2);
INSERT INTO all_menu_type VALUES(NULL,'果品类',2);
INSERT INTO all_menu_type VALUES(NULL,'五谷杂粮',2);
INSERT INTO all_menu_type VALUES(NULL,'药食',2);
INSERT INTO all_menu_type VALUES(NULL,'其他',2);

CREATE TABLE all_menu(
all_menu_cid INT PRIMARY KEY AUTO_INCREMENT,
all_type INT,
type INT,
detail VARCHAR(32)
);
INSERT INTO all_menu VALUES(NULL,1,1,'儿童营养');
INSERT INTO all_menu VALUES(NULL,1,1,'儿童益智');
INSERT INTO all_menu VALUES(NULL,1,1,'儿童增高');
INSERT INTO all_menu VALUES(NULL,1,1,'早餐');
INSERT INTO all_menu VALUES(NULL,1,1,'素菜');
INSERT INTO all_menu VALUES(NULL,1,1,'晚餐');
INSERT INTO all_menu VALUES(NULL,1,1,'下饭菜');
INSERT INTO all_menu VALUES(NULL,1,1,'汤');
INSERT INTO all_menu VALUES(NULL,1,1,'凉菜');
INSERT INTO all_menu VALUES(NULL,1,1,'川菜');
INSERT INTO all_menu VALUES(NULL,1,1,'面食');
INSERT INTO all_menu VALUES(NULL,1,1,'粥');
INSERT INTO all_menu VALUES(NULL,1,1,'汤羹');
INSERT INTO all_menu VALUES(NULL,1,1,'面条');
INSERT INTO all_menu VALUES(NULL,1,1,'中餐');
INSERT INTO all_menu VALUES(NULL,1,1,'湘菜');
INSERT INTO all_menu VALUES(NULL,1,1,'煲汤');
INSERT INTO all_menu VALUES(NULL,1,1,'糕点');
INSERT INTO all_menu VALUES(NULL,1,1,'清淡');
INSERT INTO all_menu VALUES(NULL,1,1,'荤菜');
INSERT INTO all_menu VALUES(NULL,1,1,'饼干');
INSERT INTO all_menu VALUES(NULL,1,1,'热菜');
INSERT INTO all_menu VALUES(NULL,1,1,'甜点');
INSERT INTO all_menu VALUES(NULL,1,1,'砂锅');

INSERT INTO all_menu VALUES(NULL,1,2,'家常菜');
INSERT INTO all_menu VALUES(NULL,1,2,'素菜');
INSERT INTO all_menu VALUES(NULL,1,2,'凉菜');
INSERT INTO all_menu VALUES(NULL,1,2,'下饭菜');
INSERT INTO all_menu VALUES(NULL,1,2,'面食');
INSERT INTO all_menu VALUES(NULL,1,2,'小吃');
INSERT INTO all_menu VALUES(NULL,1,2,'粥');
INSERT INTO all_menu VALUES(NULL,1,2,'汤');
INSERT INTO all_menu VALUES(NULL,1,2,'煲汤');
INSERT INTO all_menu VALUES(NULL,1,2,'私房菜');
INSERT INTO all_menu VALUES(NULL,1,2,'汤羹');
INSERT INTO all_menu VALUES(NULL,1,2,'糕点');
INSERT INTO all_menu VALUES(NULL,1,2,'甜点');
INSERT INTO all_menu VALUES(NULL,1,2,'饮品');
INSERT INTO all_menu VALUES(NULL,1,2,'创意菜');
INSERT INTO all_menu VALUES(NULL,1,2,'腌制');
INSERT INTO all_menu VALUES(NULL,1,2,'自制酱料');
INSERT INTO all_menu VALUES(NULL,1,2,'冰品');
INSERT INTO all_menu VALUES(NULL,1,2,'热菜');
INSERT INTO all_menu VALUES(NULL,1,2,'荤菜');
INSERT INTO all_menu VALUES(NULL,1,2,'农家菜');
INSERT INTO all_menu VALUES(NULL,1,2,'主食');
INSERT INTO all_menu VALUES(NULL,1,2,'宴客菜');
INSERT INTO all_menu VALUES(NULL,1,2,'开胃菜');


INSERT INTO all_menu VALUES(NULL,1,3,'川菜');
INSERT INTO all_menu VALUES(NULL,1,3,'东北菜');
INSERT INTO all_menu VALUES(NULL,1,3,'粤菜');
INSERT INTO all_menu VALUES(NULL,1,3,'湘菜');
INSERT INTO all_menu VALUES(NULL,1,3,'鲁菜');
INSERT INTO all_menu VALUES(NULL,1,3,'西餐');
INSERT INTO all_menu VALUES(NULL,1,3,'韩式料理');
INSERT INTO all_menu VALUES(NULL,1,3,'日式料理');
INSERT INTO all_menu VALUES(NULL,1,3,'淮扬菜');
INSERT INTO all_menu VALUES(NULL,1,3,'闽菜');
INSERT INTO all_menu VALUES(NULL,1,3,'浙菜');
INSERT INTO all_menu VALUES(NULL,1,3,'徽菜');
INSERT INTO all_menu VALUES(NULL,1,3,'清真');
INSERT INTO all_menu VALUES(NULL,1,3,'苏菜');
INSERT INTO all_menu VALUES(NULL,1,3,'东南亚');
INSERT INTO all_menu VALUES(NULL,1,3,'贵州菜');
INSERT INTO all_menu VALUES(NULL,1,3,'本帮菜');
INSERT INTO all_menu VALUES(NULL,1,3,'法国菜');
INSERT INTO all_menu VALUES(NULL,1,3,'新疆菜');
INSERT INTO all_menu VALUES(NULL,1,3,'潮州菜');
INSERT INTO all_menu VALUES(NULL,1,3,'客家菜');
INSERT INTO all_menu VALUES(NULL,1,3,'意大利菜');
INSERT INTO all_menu VALUES(NULL,1,3,'泰国菜');
INSERT INTO all_menu VALUES(NULL,1,3,'云南菜');

INSERT INTO all_menu VALUES(NULL,1,4,'泡菜');
INSERT INTO all_menu VALUES(NULL,1,4,'冰淇淋');
INSERT INTO all_menu VALUES(NULL,1,4,'粽子');
INSERT INTO all_menu VALUES(NULL,1,4,'沙拉');
INSERT INTO all_menu VALUES(NULL,1,4,'油条');
INSERT INTO all_menu VALUES(NULL,1,4,'豆浆');
INSERT INTO all_menu VALUES(NULL,1,4,'零食');
INSERT INTO all_menu VALUES(NULL,1,4,'布丁');
INSERT INTO all_menu VALUES(NULL,1,4,'糖水');
INSERT INTO all_menu VALUES(NULL,1,4,'自制食材');
INSERT INTO all_menu VALUES(NULL,1,4,'果汁');
INSERT INTO all_menu VALUES(NULL,1,4,'果冻');
INSERT INTO all_menu VALUES(NULL,1,4,'糖果');
INSERT INTO all_menu VALUES(NULL,1,4,'果酱');
INSERT INTO all_menu VALUES(NULL,1,4,'果茶');
INSERT INTO all_menu VALUES(NULL,1,4,'酸菜');
INSERT INTO all_menu VALUES(NULL,1,4,'香锅');
INSERT INTO all_menu VALUES(NULL,1,4,'青团');
INSERT INTO all_menu VALUES(NULL,1,4,'饮料');
INSERT INTO all_menu VALUES(NULL,1,4,'水产');
INSERT INTO all_menu VALUES(NULL,1,4,'海产');

INSERT INTO all_menu VALUES(NULL,1,5,'家常菜');
INSERT INTO all_menu VALUES(NULL,1,5,'素菜');
INSERT INTO all_menu VALUES(NULL,1,5,'凉菜');
INSERT INTO all_menu VALUES(NULL,1,5,'下饭菜');
INSERT INTO all_menu VALUES(NULL,1,5,'面食');
INSERT INTO all_menu VALUES(NULL,1,5,'小吃');
INSERT INTO all_menu VALUES(NULL,1,5,'粥');
INSERT INTO all_menu VALUES(NULL,1,5,'汤');
INSERT INTO all_menu VALUES(NULL,1,5,'煲汤');
INSERT INTO all_menu VALUES(NULL,1,5,'私房菜');
INSERT INTO all_menu VALUES(NULL,1,5,'汤羹');
INSERT INTO all_menu VALUES(NULL,1,5,'糕点');
INSERT INTO all_menu VALUES(NULL,1,5,'甜点');
INSERT INTO all_menu VALUES(NULL,1,5,'饮品');
INSERT INTO all_menu VALUES(NULL,1,5,'创意菜');
INSERT INTO all_menu VALUES(NULL,1,5,'腌制');
INSERT INTO all_menu VALUES(NULL,1,5,'自制酱料');
INSERT INTO all_menu VALUES(NULL,1,5,'冰品');
INSERT INTO all_menu VALUES(NULL,1,5,'热菜');
INSERT INTO all_menu VALUES(NULL,1,5,'荤菜');
INSERT INTO all_menu VALUES(NULL,1,5,'农家菜');
INSERT INTO all_menu VALUES(NULL,1,5,'主食');
INSERT INTO all_menu VALUES(NULL,1,5,'宴客菜');
INSERT INTO all_menu VALUES(NULL,1,5,'开胃菜');

INSERT INTO all_menu VALUES(NULL,1,6,'儿童营养');
INSERT INTO all_menu VALUES(NULL,1,6,'儿童益智');
INSERT INTO all_menu VALUES(NULL,1,6,'儿童增高');
INSERT INTO all_menu VALUES(NULL,1,6,'早餐');
INSERT INTO all_menu VALUES(NULL,1,6,'素菜');
INSERT INTO all_menu VALUES(NULL,1,6,'晚餐');
INSERT INTO all_menu VALUES(NULL,1,6,'下饭菜');
INSERT INTO all_menu VALUES(NULL,1,6,'汤');
INSERT INTO all_menu VALUES(NULL,1,6,'凉菜');
INSERT INTO all_menu VALUES(NULL,1,6,'川菜');
INSERT INTO all_menu VALUES(NULL,1,6,'面食');
INSERT INTO all_menu VALUES(NULL,1,6,'粥');
INSERT INTO all_menu VALUES(NULL,1,6,'汤羹');
INSERT INTO all_menu VALUES(NULL,1,6,'面条');
INSERT INTO all_menu VALUES(NULL,1,6,'中餐');
INSERT INTO all_menu VALUES(NULL,1,6,'湘菜');
INSERT INTO all_menu VALUES(NULL,1,6,'煲汤');
INSERT INTO all_menu VALUES(NULL,1,6,'糕点');
INSERT INTO all_menu VALUES(NULL,1,6,'清淡');
INSERT INTO all_menu VALUES(NULL,1,6,'荤菜');
INSERT INTO all_menu VALUES(NULL,1,6,'饼干');
INSERT INTO all_menu VALUES(NULL,1,6,'热菜');
INSERT INTO all_menu VALUES(NULL,1,6,'甜点');
INSERT INTO all_menu VALUES(NULL,1,6,'砂锅');

INSERT INTO all_menu VALUES(NULL,1,7,'泡菜');
INSERT INTO all_menu VALUES(NULL,1,7,'冰淇淋');
INSERT INTO all_menu VALUES(NULL,1,7,'粽子');
INSERT INTO all_menu VALUES(NULL,1,7,'沙拉');
INSERT INTO all_menu VALUES(NULL,1,7,'油条');
INSERT INTO all_menu VALUES(NULL,1,7,'豆浆');
INSERT INTO all_menu VALUES(NULL,1,7,'零食');
INSERT INTO all_menu VALUES(NULL,1,7,'布丁');
INSERT INTO all_menu VALUES(NULL,1,7,'糖水');
INSERT INTO all_menu VALUES(NULL,1,7,'自制食材');
INSERT INTO all_menu VALUES(NULL,1,7,'果汁');
INSERT INTO all_menu VALUES(NULL,1,7,'果冻');
INSERT INTO all_menu VALUES(NULL,1,7,'糖果');
INSERT INTO all_menu VALUES(NULL,1,7,'果酱');
INSERT INTO all_menu VALUES(NULL,1,7,'果茶');
INSERT INTO all_menu VALUES(NULL,1,7,'酸菜');
INSERT INTO all_menu VALUES(NULL,1,7,'香锅');
INSERT INTO all_menu VALUES(NULL,1,7,'青团');
INSERT INTO all_menu VALUES(NULL,1,7,'饮料');
INSERT INTO all_menu VALUES(NULL,1,7,'水产');
INSERT INTO all_menu VALUES(NULL,1,7,'海产');

INSERT INTO all_menu VALUES(NULL,1,8,'私房菜');
INSERT INTO all_menu VALUES(NULL,1,8,'汤羹');
INSERT INTO all_menu VALUES(NULL,1,8,'糕点');
INSERT INTO all_menu VALUES(NULL,1,8,'甜点');
INSERT INTO all_menu VALUES(NULL,1,8,'饮品');
INSERT INTO all_menu VALUES(NULL,1,8,'创意菜');
INSERT INTO all_menu VALUES(NULL,1,8,'腌制');
INSERT INTO all_menu VALUES(NULL,1,8,'自制酱料');
INSERT INTO all_menu VALUES(NULL,1,8,'冰品');
INSERT INTO all_menu VALUES(NULL,1,8,'热菜');
INSERT INTO all_menu VALUES(NULL,1,8,'荤菜');
INSERT INTO all_menu VALUES(NULL,1,8,'农家菜');
INSERT INTO all_menu VALUES(NULL,1,8,'主食');
INSERT INTO all_menu VALUES(NULL,1,8,'宴客菜');
INSERT INTO all_menu VALUES(NULL,1,8,'开胃菜');

INSERT INTO all_menu VALUES(NULL,1,9,'闽菜');
INSERT INTO all_menu VALUES(NULL,1,9,'浙菜');
INSERT INTO all_menu VALUES(NULL,1,9,'徽菜');
INSERT INTO all_menu VALUES(NULL,1,9,'清真');
INSERT INTO all_menu VALUES(NULL,1,9,'苏菜');
INSERT INTO all_menu VALUES(NULL,1,9,'东南亚');
INSERT INTO all_menu VALUES(NULL,1,9,'贵州菜');
INSERT INTO all_menu VALUES(NULL,1,9,'本帮菜');
INSERT INTO all_menu VALUES(NULL,1,9,'法国菜');
INSERT INTO all_menu VALUES(NULL,1,9,'新疆菜');
INSERT INTO all_menu VALUES(NULL,1,9,'潮州菜');
INSERT INTO all_menu VALUES(NULL,1,9,'客家菜');
INSERT INTO all_menu VALUES(NULL,1,9,'意大利菜');
INSERT INTO all_menu VALUES(NULL,1,9,'泰国菜');
INSERT INTO all_menu VALUES(NULL,1,9,'云南菜');

INSERT INTO all_menu VALUES(NULL,1,10,'果冻');
INSERT INTO all_menu VALUES(NULL,1,10,'糖果');
INSERT INTO all_menu VALUES(NULL,1,10,'果酱');
INSERT INTO all_menu VALUES(NULL,1,10,'果茶');
INSERT INTO all_menu VALUES(NULL,1,10,'酸菜');
INSERT INTO all_menu VALUES(NULL,1,10,'香锅');
INSERT INTO all_menu VALUES(NULL,1,10,'青团');
INSERT INTO all_menu VALUES(NULL,1,10,'饮料');
INSERT INTO all_menu VALUES(NULL,1,10,'水产');
INSERT INTO all_menu VALUES(NULL,1,10,'海产');

INSERT INTO all_menu VALUES(NULL,2,1,'猪肉');
INSERT INTO all_menu VALUES(NULL,2,1,'排骨');
INSERT INTO all_menu VALUES(NULL,2,1,'猪蹄');
INSERT INTO all_menu VALUES(NULL,2,1,'五花肉');
INSERT INTO all_menu VALUES(NULL,2,1,'猪肚');
INSERT INTO all_menu VALUES(NULL,2,1,'猪肝');
INSERT INTO all_menu VALUES(NULL,2,1,'牛肉');
INSERT INTO all_menu VALUES(NULL,2,1,'牛腩');
INSERT INTO all_menu VALUES(NULL,2,1,'牛排');
INSERT INTO all_menu VALUES(NULL,2,1,'牛肚');
INSERT INTO all_menu VALUES(NULL,2,1,'肥牛');
INSERT INTO all_menu VALUES(NULL,2,1,'羊肉');
INSERT INTO all_menu VALUES(NULL,2,1,'羊排');
INSERT INTO all_menu VALUES(NULL,2,1,'羊肚');
INSERT INTO all_menu VALUES(NULL,2,1,'羊蝎子');
INSERT INTO all_menu VALUES(NULL,2,1,'羊骨');
INSERT INTO all_menu VALUES(NULL,2,1,'鸡肉');
INSERT INTO all_menu VALUES(NULL,2,1,'鸡翅');
INSERT INTO all_menu VALUES(NULL,2,1,'鸡爪');
INSERT INTO all_menu VALUES(NULL,2,1,'鸡腿');
INSERT INTO all_menu VALUES(NULL,2,1,'鸡胗');
INSERT INTO all_menu VALUES(NULL,2,1,'鸭肉');
INSERT INTO all_menu VALUES(NULL,2,1,'鸭翅');
INSERT INTO all_menu VALUES(NULL,2,1,'鸭胗');

INSERT INTO all_menu VALUES(NULL,2,2,'鸡蛋');
INSERT INTO all_menu VALUES(NULL,2,2,'鸭蛋');
INSERT INTO all_menu VALUES(NULL,2,2,'鹌鹑蛋');
INSERT INTO all_menu VALUES(NULL,2,2,'咸鸭蛋');
INSERT INTO all_menu VALUES(NULL,2,2,'鸽子蛋');
INSERT INTO all_menu VALUES(NULL,2,2,'松花蛋');
INSERT INTO all_menu VALUES(NULL,2,2,'鹅蛋');
INSERT INTO all_menu VALUES(NULL,2,2,'奶酪');
INSERT INTO all_menu VALUES(NULL,2,2,'黄油');
INSERT INTO all_menu VALUES(NULL,2,2,'奶油');

INSERT INTO all_menu VALUES(NULL,2,3,'草鱼');
INSERT INTO all_menu VALUES(NULL,2,3,'鲤鱼');
INSERT INTO all_menu VALUES(NULL,2,3,'鲫鱼');
INSERT INTO all_menu VALUES(NULL,2,3,'鲢鱼');
INSERT INTO all_menu VALUES(NULL,2,3,'青鱼');
INSERT INTO all_menu VALUES(NULL,2,3,'鲶鱼');
INSERT INTO all_menu VALUES(NULL,2,3,'银鱼');
INSERT INTO all_menu VALUES(NULL,2,3,'罗非鱼');
INSERT INTO all_menu VALUES(NULL,2,3,'武昌鱼');
INSERT INTO all_menu VALUES(NULL,2,3,'桂鱼');
INSERT INTO all_menu VALUES(NULL,2,3,'泥鳅');
INSERT INTO all_menu VALUES(NULL,2,3,'带鱼');
INSERT INTO all_menu VALUES(NULL,2,3,'鲈鱼');
INSERT INTO all_menu VALUES(NULL,2,3,'鳕鱼');
INSERT INTO all_menu VALUES(NULL,2,3,'金枪鱼');
INSERT INTO all_menu VALUES(NULL,2,3,'三文鱼');
INSERT INTO all_menu VALUES(NULL,2,3,'秋刀鱼');
INSERT INTO all_menu VALUES(NULL,2,3,'比目鱼');
INSERT INTO all_menu VALUES(NULL,2,3,'沙丁鱼');
INSERT INTO all_menu VALUES(NULL,2,3,'石斑鱼');
INSERT INTO all_menu VALUES(NULL,2,3,'老板鱼');
INSERT INTO all_menu VALUES(NULL,2,3,'黄花鱼');
INSERT INTO all_menu VALUES(NULL,2,3,'马面鱼');

INSERT INTO all_menu VALUES(NULL,2,4,'白菜');
INSERT INTO all_menu VALUES(NULL,2,4,'油菜');
INSERT INTO all_menu VALUES(NULL,2,4,'芹菜');
INSERT INTO all_menu VALUES(NULL,2,4,'菠菜');
INSERT INTO all_menu VALUES(NULL,2,4,'小白菜');
INSERT INTO all_menu VALUES(NULL,2,4,'韭菜');
INSERT INTO all_menu VALUES(NULL,2,4,'生菜');
INSERT INTO all_menu VALUES(NULL,2,4,'茼蒿');
INSERT INTO all_menu VALUES(NULL,2,4,'湘菜');
INSERT INTO all_menu VALUES(NULL,2,4,'苋菜');
INSERT INTO all_menu VALUES(NULL,2,4,'莴笋');
INSERT INTO all_menu VALUES(NULL,2,4,'茭白');
INSERT INTO all_menu VALUES(NULL,2,4,'西兰花');
INSERT INTO all_menu VALUES(NULL,2,4,'黄花菜');
INSERT INTO all_menu VALUES(NULL,2,4,'百合');
INSERT INTO all_menu VALUES(NULL,2,4,'橄榄菜');
INSERT INTO all_menu VALUES(NULL,2,4,'土豆');
INSERT INTO all_menu VALUES(NULL,2,4,'红薯');
INSERT INTO all_menu VALUES(NULL,2,4,'胡萝卜');
INSERT INTO all_menu VALUES(NULL,2,4,'竹笋');
INSERT INTO all_menu VALUES(NULL,2,4,'山药');
INSERT INTO all_menu VALUES(NULL,2,4,'魔芋');
INSERT INTO all_menu VALUES(NULL,2,4,'藕');
INSERT INTO all_menu VALUES(NULL,2,4,'冬瓜');

INSERT INTO all_menu VALUES(NULL,2,5,'三文鱼');
INSERT INTO all_menu VALUES(NULL,2,5,'秋刀鱼');
INSERT INTO all_menu VALUES(NULL,2,5,'比目鱼');
INSERT INTO all_menu VALUES(NULL,2,5,'沙丁鱼');
INSERT INTO all_menu VALUES(NULL,2,5,'石斑鱼');
INSERT INTO all_menu VALUES(NULL,2,5,'老板鱼');
INSERT INTO all_menu VALUES(NULL,2,5,'黄花鱼');
INSERT INTO all_menu VALUES(NULL,2,5,'马面鱼');

INSERT INTO all_menu VALUES(NULL,2,6,'苋菜');
INSERT INTO all_menu VALUES(NULL,2,6,'莴笋');
INSERT INTO all_menu VALUES(NULL,2,6,'茭白');
INSERT INTO all_menu VALUES(NULL,2,6,'西兰花');
INSERT INTO all_menu VALUES(NULL,2,6,'黄花菜');
INSERT INTO all_menu VALUES(NULL,2,6,'百合');
INSERT INTO all_menu VALUES(NULL,2,6,'橄榄菜');
INSERT INTO all_menu VALUES(NULL,2,6,'土豆');
INSERT INTO all_menu VALUES(NULL,2,6,'红薯');

INSERT INTO all_menu VALUES(NULL,2,7,'芹菜');
INSERT INTO all_menu VALUES(NULL,2,7,'菠菜');
INSERT INTO all_menu VALUES(NULL,2,7,'小白菜');
INSERT INTO all_menu VALUES(NULL,2,7,'韭菜');
INSERT INTO all_menu VALUES(NULL,2,7,'生菜');
INSERT INTO all_menu VALUES(NULL,2,7,'茼蒿');
INSERT INTO all_menu VALUES(NULL,2,7,'湘菜');
INSERT INTO all_menu VALUES(NULL,2,7,'苋菜');
INSERT INTO all_menu VALUES(NULL,2,7,'莴笋');

INSERT INTO all_menu VALUES(NULL,2,8,'鸭蛋');
INSERT INTO all_menu VALUES(NULL,2,8,'鹌鹑蛋');
INSERT INTO all_menu VALUES(NULL,2,8,'咸鸭蛋');
INSERT INTO all_menu VALUES(NULL,2,8,'鸽子蛋');
INSERT INTO all_menu VALUES(NULL,2,8,'松花蛋');
INSERT INTO all_menu VALUES(NULL,2,8,'鹅蛋');
INSERT INTO all_menu VALUES(NULL,2,8,'奶酪');

INSERT INTO all_menu VALUES(NULL,2,9,'鸡肉');
INSERT INTO all_menu VALUES(NULL,2,9,'鸡翅');
INSERT INTO all_menu VALUES(NULL,2,9,'鸡爪');
INSERT INTO all_menu VALUES(NULL,2,9,'鸡腿');
INSERT INTO all_menu VALUES(NULL,2,9,'鸡胗');
INSERT INTO all_menu VALUES(NULL,2,9,'鸭肉');
INSERT INTO all_menu VALUES(NULL,2,9,'鸭翅');
INSERT INTO all_menu VALUES(NULL,2,9,'鸭胗');

INSERT INTO all_menu VALUES(NULL,2,10,'羊排');
INSERT INTO all_menu VALUES(NULL,2,10,'羊肚');
INSERT INTO all_menu VALUES(NULL,2,10,'羊蝎子');
INSERT INTO all_menu VALUES(NULL,2,10,'羊骨');
INSERT INTO all_menu VALUES(NULL,2,10,'鸡肉');
INSERT INTO all_menu VALUES(NULL,2,10,'鸡翅');
INSERT INTO all_menu VALUES(NULL,2,10,'鸡爪');
INSERT INTO all_menu VALUES(NULL,2,10,'鸡腿');
INSERT INTO all_menu VALUES(NULL,2,10,'鸡胗');

CREATE TABLE menu_list(
  list_mid INT PRIMARY KEY AUTO_INCREMENT,
  list_lid INT,
  img VARCHAR(128),
  title VARCHAR(128),
  detail VARCHAR(128)
);
INSERT INTO menu_list VALUES
(NULL,1,'img/list/a1.jpg','麻辣小龙虾','香菜、小龙虾、调料'),
(NULL,1,'img/list/a2.jpg','剁椒鱼头','鱼头、红剁椒、绿剁椒'),
(NULL,1,'img/list/a3.jpg','香酥炸虾','鲜虾'),
(NULL,1,'img/list/a4.jpg','清炒茭白','茭白'),
(NULL,1,'img/list/a5.jpg','凉皮','黄瓜、面粉、花生米...'),
(NULL,1,'img/list/a6.jpg','煎饺','开水、饺子、油'),
(NULL,1,'img/list/a7.jpg','蒜泥炒小青菜','蒜、小青菜'),
(NULL,1,'img/list/a8.jpg','木耳炒鱿鱼','木耳、鱿鱼、调料'),
(NULL,1,'img/list/a9.jpg','可乐鸡翅','可乐、鸡翅、调料'),
(NULL,1,'img/list/a10.jpg','水煮鱼','鱼、调料'),
(NULL,1,'img/list/a11.jpg','虾仁米粉','虾仁、米粉、调料'),
(NULL,1,'img/list/a12.jpg','酱爆茄子','茄子、调料');
