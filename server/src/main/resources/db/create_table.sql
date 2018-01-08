DROP TABLE IF EXISTS user_info;

# user_info 用户信息
CREATE TABLE user_info (
  USER_ID     BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  ACCOUNT     VARCHAR(10) NOT NULL,
  PASSWORD    VARCHAR(20) NOT NULL,
  CREATE_TIME DATETIME(3) NOT NULL,
  LAST_TIME   DATETIME(3) NOT NULL

)
  ENGINE = INNODB
  AUTO_INCREMENT = 10001
  DEFAULT CHARSET = utf8;

DROP TABLE IF EXISTS user_token;
# user_token Token表
CREATE TABLE user_token (
  USER_ID     BIGINT UNSIGNED,
  TOKEN       VARCHAR(32) NOT NULL,
  STATUS      TINYINT DEFAULT 0,
  CREATE_TIME DATETIME(3) NOT NULL,
  LAST_TIME   DATETIME(3) NOT NULL

)
  ENGINE = INNODB
  DEFAULT CHARSET = utf8;

DROP TABLE IF EXISTS file_info;
# file_info 文件信息表
CREATE TABLE file_info (
  FILE_ID     BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  USER_ID     BIGINT UNSIGNED,
  MD5         VARCHAR(32)  NOT NULL,
  PATH        VARCHAR(100) NOT NULL,
  NAME        VARCHAR(60)  NOT NULL,
  SIZE        INT UNSIGNED    DEFAULT 0,
  STATUS      TINYINT         DEFAULT 0,
  CREATE_TIME DATETIME(3)  NOT NULL,
  LAST_TIME   DATETIME(3)  NOT NULL
)
  ENGINE = INNODB
  AUTO_INCREMENT = 101
  DEFAULT CHARSET = utf8;


DROP TABLE IF EXISTS share_info;
# share_info 分享信息表
CREATE TABLE share_info (
  SHARE_ID    BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  USER_ID     BIGINT UNSIGNED,
  FILE_ID     BIGINT UNSIGNED,
  STATUS      TINYINT         DEFAULT 0,
  CREATE_TIME DATETIME(3) NOT NULL,
  LAST_TIME   DATETIME(3) NOT NULL
)
  ENGINE = INNODB
  AUTO_INCREMENT = 100001
  DEFAULT CHARSET = utf8;