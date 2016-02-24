DROP TABLE IF EXISTS t_picture_info;
CREATE TABLE t_picture_info (
  id int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  title varchar(50) NOT NULL COMMENT '照片名称',
  url varchar(100) NOT NULL COMMENT '照片url',
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='照片信息表';

DROP TABLE IF EXISTS t_video_info;
CREATE TABLE t_video_info (
  id int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  title varchar(50) NOT NULL COMMENT '视频名称',
  url varchar(100) NOT NULL COMMENT '视频url',
  cover varchar(100) NOT NULL COMMENT '视频封面url',
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='视频信息表';

DROP TABLE IF EXISTS t_item_list;
CREATE TABLE t_item_list (
  id int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  item_index int(11) NOT NULL COMMENT '顺序',
  item_type int(11) NOT NULL COMMENT '类型：1为照片，2为视频',
  sub_id int NOT NULL COMMENT '具体类型id',
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='总列表';
