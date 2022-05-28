-- データベースの作成
CREATE DATABASE IF NOT EXISTS employee
DEFAULT CHARACTER SET utf8
COLLATE utf8_general_ci;

-- 社員
CREATE TABLE IF NOT EXISTS employee.employee (
    id INT NOT NULL AUTO_INCREMENT COMMENT 'ID',
    last_name VARCHAR(25) NOT NULL COMMENT '名前（姓）',
    first_name VARCHAR(25) NOT NULL COMMENT '名前（名）',
    last_kana VARCHAR(25) NOT NULL COMMENT 'ふりがな（姓）',
    first_kana VARCHAR(25) NOT NULL COMMENT 'ふりがな（名）',
    sex INT(1) NOT NULL COMMENT '性別',
    birth_date DATE NOT NULL COMMENT '生年月日',
    tel1 VARCHAR(5) COMMENT '電話番号1',
    tel2 VARCHAR(4) COMMENT '電話番号2',
    tel3 VARCHAR(4) COMMENT '電話番号3',
    email VARCHAR(50) COMMENT 'メールアドレス',
    section INT(2) COMMENT '部署',
    position VARCHAR(255) COMMENT '役職',
    joined_date DATE COMMENT '入社日',
    skillsheet VARCHAR(255) COMMENT 'スキルシート',
    note VARCHAR(255) COMMENT '備考',
    deleted INT(1) DEFAULT 0 COMMENT '削除フラグ',
    PRIMARY KEY (id)
);
INSERT INTO `employee`.`employee`
(`id`,`last_name`,`first_name`,`last_kana`,`first_kana`,`sex`,`birth_date`,`tel1`,`tel2`,`tel3`,`email`,`section`,`position`,`joined_date`,`skillsheet`,`note`,`deleted`)
VALUES
(1,'田中','太郎','たなか','たろう','1','1990-01-01','000','1111','2222','t_tanaka@sample.com',1,'1,2,3','2020-04-01','','がんばりまーす',0),
(2,'鈴木','一郎','すずき','いちろう','1','1980-01-01','000','1111','2222','i_suzuki@sample.com',2,'4','2020-04-01','','がんばりまーす',0),
(3,'佐藤','次郎','さとう','じろう','1','1970-01-01','000','1111','2222','j_sato@sample.com',3,'1,5','2020-04-01','','がんばりまーす',0),
(4,'山田','花子','やまだ','はなこ','2','1960-01-01','000','1111','2222','h_yamada@sample.com',4,'2,3','2020-04-01','','がんばりまーす',0);

-- 性別マスタ
CREATE TABLE IF NOT EXISTS employee.m_sex (
    id INT NOT NULL AUTO_INCREMENT COMMENT 'ID',
    name VARCHAR(10) COMMENT '性別',
    PRIMARY KEY (id)
);
INSERT INTO `employee`.`m_sex` (`id`, `name`)
VALUES ('1', '男'), ('2', '女'), ('99', 'その他');

-- 部署マスタ
CREATE TABLE IF NOT EXISTS employee.m_section (
    id INT NOT NULL AUTO_INCREMENT COMMENT 'ID',
    name VARCHAR(10) COMMENT '部署',
    PRIMARY KEY (id)
);
INSERT INTO `employee`.`m_section` (`id`, `name`)
VALUES ('1', '取締役'), ('2', '営業'), ('3', '総務'), ('4', 'エンプラ'), ('5', 'ITSS'), ('6', 'ビジクリ');

-- 役職マスタ
CREATE TABLE IF NOT EXISTS employee.m_position (
    id INT NOT NULL AUTO_INCREMENT COMMENT 'ID',
    name VARCHAR(10) COMMENT '役職',
    PRIMARY KEY (id)
);
INSERT INTO `employee`.`m_position` (`id`, `name`)
VALUES ('1', '代表取締役'), ('2', '取締役'), ('3', '部長'), ('4', '課長'), ('5', '主任'), ('6', '技師');

-- 非公開DB
CREATE DATABASE secret
DEFAULT CHARACTER SET utf8
COLLATE utf8_general_ci;

-- 非公開テーブル
CREATE TABLE IF NOT EXISTS secret.customer (
    id INT NOT NULL AUTO_INCREMENT COMMENT 'ID',
    name VARCHAR(10) COMMENT '顧客名',
    PRIMARY KEY (id)
);
INSERT INTO `employee`.`m_sex` (`id`, `name`)
VALUES ('1', 'A社'), ('2', 'B社'), ('3', 'C社');