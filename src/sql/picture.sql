DROP TABLE IF EXISTS t_picture_info;
CREATE TABLE t_picture_info (
  id int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  title varchar(50) NOT NULL COMMENT '照片名称',
  url varchar(100) NOT NULL COMMENT '照片url',
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='照片信息表';
