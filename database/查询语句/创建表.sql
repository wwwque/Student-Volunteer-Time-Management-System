CREATE TABLE 社团
 (
	社团编号		 INT PRIMARY KEY IDENTITY,
	社团名称		 CHAR(10) UNIQUE,
	详细信息		 VARCHAR(100)
 );
 
CREATE TABLE 活动
 (
	活动编号		 INT  PRIMARY KEY IDENTITY,
	活动名称		 CHAR(10) UNIQUE,
	举办社团编号	 INT,
	活动负责人名字	 CHAR(10),
	时间			 DATE
 );
 
CREATE TABLE 学生
 (
	学号			 VARCHAR(20) PRIMARY KEY,
	姓名			 CHAR(10) NOT NULL,
	性别			 CHAR(2) CHECK(性别 IN('男','女')),
	年级专业班级	 CHAR(20),
	总工时			 INT default 0
 );
 
CREATE TABLE 社团人员名单
 (
	社团编号		 INT,
	学号			 VARCHAR(20),
	职位			 CHAR(10),
	备注			 VARCHAR(50),
	PRIMARY KEY(社团编号,学号)
 );
 
 CREATE TABLE 活动人员名单
 (
	活动编号		 INT,
	学号			 VARCHAR(20),
	工时			 INT CHECK(工时>0),
	备注			 VARCHAR(50),
	PRIMARY KEY(活动编号,学号)
 );