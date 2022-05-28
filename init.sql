-- �f�[�^�x�[�X�̍쐬
CREATE DATABASE IF NOT EXISTS employee
DEFAULT CHARACTER SET utf8
COLLATE utf8_general_ci;

-- �Ј�
CREATE TABLE IF NOT EXISTS employee.employee (
    id INT NOT NULL AUTO_INCREMENT COMMENT 'ID',
    last_name VARCHAR(25) NOT NULL COMMENT '���O�i���j',
    first_name VARCHAR(25) NOT NULL COMMENT '���O�i���j',
    last_kana VARCHAR(25) NOT NULL COMMENT '�ӂ肪�ȁi���j',
    first_kana VARCHAR(25) NOT NULL COMMENT '�ӂ肪�ȁi���j',
    sex INT(1) NOT NULL COMMENT '����',
    birth_date DATE NOT NULL COMMENT '���N����',
    tel1 VARCHAR(5) COMMENT '�d�b�ԍ�1',
    tel2 VARCHAR(4) COMMENT '�d�b�ԍ�2',
    tel3 VARCHAR(4) COMMENT '�d�b�ԍ�3',
    email VARCHAR(50) COMMENT '���[���A�h���X',
    section INT(2) COMMENT '����',
    position VARCHAR(255) COMMENT '��E',
    joined_date DATE COMMENT '���Г�',
    skillsheet VARCHAR(255) COMMENT '�X�L���V�[�g',
    note VARCHAR(255) COMMENT '���l',
    deleted INT(1) DEFAULT 0 COMMENT '�폜�t���O',
    PRIMARY KEY (id)
);
INSERT INTO `employee`.`employee`
(`id`,`last_name`,`first_name`,`last_kana`,`first_kana`,`sex`,`birth_date`,`tel1`,`tel2`,`tel3`,`email`,`section`,`position`,`joined_date`,`skillsheet`,`note`,`deleted`)
VALUES
(1,'�c��','���Y','���Ȃ�','���낤','1','1990-01-01','000','1111','2222','t_tanaka@sample.com',1,'1,2,3','2020-04-01','','����΂�܁[��',0),
(2,'���','��Y','������','�����낤','1','1980-01-01','000','1111','2222','i_suzuki@sample.com',2,'4','2020-04-01','','����΂�܁[��',0),
(3,'����','���Y','���Ƃ�','���낤','1','1970-01-01','000','1111','2222','j_sato@sample.com',3,'1,5','2020-04-01','','����΂�܁[��',0),
(4,'�R�c','�Ԏq','��܂�','�͂Ȃ�','2','1960-01-01','000','1111','2222','h_yamada@sample.com',4,'2,3','2020-04-01','','����΂�܁[��',0);

-- ���ʃ}�X�^
CREATE TABLE IF NOT EXISTS employee.m_sex (
    id INT NOT NULL AUTO_INCREMENT COMMENT 'ID',
    name VARCHAR(10) COMMENT '����',
    PRIMARY KEY (id)
);
INSERT INTO `employee`.`m_sex` (`id`, `name`)
VALUES ('1', '�j'), ('2', '��'), ('99', '���̑�');

-- �����}�X�^
CREATE TABLE IF NOT EXISTS employee.m_section (
    id INT NOT NULL AUTO_INCREMENT COMMENT 'ID',
    name VARCHAR(10) COMMENT '����',
    PRIMARY KEY (id)
);
INSERT INTO `employee`.`m_section` (`id`, `name`)
VALUES ('1', '�����'), ('2', '�c��'), ('3', '����'), ('4', '�G���v��'), ('5', 'ITSS'), ('6', '�r�W�N��');

-- ��E�}�X�^
CREATE TABLE IF NOT EXISTS employee.m_position (
    id INT NOT NULL AUTO_INCREMENT COMMENT 'ID',
    name VARCHAR(10) COMMENT '��E',
    PRIMARY KEY (id)
);
INSERT INTO `employee`.`m_position` (`id`, `name`)
VALUES ('1', '��\�����'), ('2', '�����'), ('3', '����'), ('4', '�ے�'), ('5', '��C'), ('6', '�Z�t');

-- ����JDB
CREATE DATABASE secret
DEFAULT CHARACTER SET utf8
COLLATE utf8_general_ci;

-- ����J�e�[�u��
CREATE TABLE IF NOT EXISTS secret.customer (
    id INT NOT NULL AUTO_INCREMENT COMMENT 'ID',
    name VARCHAR(10) COMMENT '�ڋq��',
    PRIMARY KEY (id)
);
INSERT INTO `employee`.`m_sex` (`id`, `name`)
VALUES ('1', 'A��'), ('2', 'B��'), ('3', 'C��');