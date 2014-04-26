drop table Admin;
drop table RoomType;
drop table Room;
drop table Hotel;
drop table Orderlist;
drop table Guest;
drop table Message;



create TABLE Admin (
  Admin_Id      Number(10) NOT NULL primary key,  --管理员编号  主键   
  Admin_name   	Varchar2(50)NOT NULL,  --管理员姓名 唯一
  Admin_pw 		Varchar2(50)NOT NULL,  --密码  　　
  Admin_type 	Number(1)NOT NULL ,     ---管理员类型  1.普通用户  2.管理员
  hotel_id           　Number(6),        --分店宾馆编号主键　
  AdminSessionID  	Varchar2(50),　
  primary key (Admin_Id)
);

create sequence seq_adminid;

select * from admin;

create TABLE RoomType(
  Room_Type_id   number(3),--房间类型编号   主键
  --Hotel_ID  Number(6),    --地区编号 外键
  Room_Type_name Varchar2(15),--房间类型名    
  Room_Price  number(10),--房间价格    
  Introduction  Varchar2(1000)，--简介    
  ImageUrl  Varchar2(1000) ,--图片    图片URL用,号分开
  primary key (Room_Type_id)
)

create sequence seq_RoomTypeId;

create TABLE Room(
  ROOM_ID               Number(10),  --房间编号 主键
  ROOM_No    Varchar2(20),--房间号码
  ROOM_TYPE_ID      Number(3),    --房间类型编号 外键
  Hotel_ID    Number(6),    --地区编号 外键
  Room_STATE    Number(1) ,    --状态
  primary key (ROOM_ID) 
)
create sequence seq_RoomId;

---地区分类表(分店宾馆)
create TABLE Hotel(

  Hotel_ID  Number(6),   --分店宾馆编号主键
  PROVINCE  Varchar2(20),    --省    
  CITY       Varchar2(20),    --市    
  DISTRICT  Varchar2(20),    --区（县）    
  Hotel_Name  Varchar2(50),    --分店宾馆名称
  Hotel_address  Varchar2(50) ,   --分店宾馆地址 
  Hotel_about Varchar2(500),
  primary key (Hotel_ID)
)
create sequence seq_Hotel_ID;

--　　 订单表
--　　会员编号是动态生成，所以会员并不知道或不记得自己的会员编号，一般是通过会员姓名或身份证号码查询预定信息
create TABLE Orderlist(

  Order_ID  Number(10),    --预定编号 主键
  Hotel_ID  Number(6),   --分店宾馆编号
  User_id   Number(10),  --会员ID 外键
  Room_type_id   Number(3),  --房间类型编号外键
  ROOM_ID  Number(10),  --房间编号外键
  Room_Num Number(3), --订单数量
  ORDER_DATE  DATE,     --预定时间　
  CHECK_IN    DATE,   -- 入住时间
  CHECK_OUT    DATE,  --离开时间　　
  DEPOSIT  Number(11,2),  --押金  　　
  COST    Number(11,2),  --费用
  STATE    Number(1),  --状态
  primary key (order_ID)
)　
　  
alter table OrderList
add(Room_Num Number(3));

create sequence seq_orderid;


--用户表顾客表
create TABLE Guest(

       Guest_Id     Varchar2(50),    --用户ID主键
       Guest_Name     Varchar2(50),    --客户姓名
	   Guest_pw     Varchar2(50),    --客户密码
       ID_CARD          Varchar2(18)，  --身份证号码
       Guest_Type       Number(2),    --折扣会员类型 --注:Customer_Type代表会员折扣 6折代表
       Guest_MOBILE  varchar(16) ,    ---客户电话
       Guest_SessionID Varchar2(50),  --保持登陆
	primary key (Guest_Id)
)

create sequence seq_GuestId;

--留言表(MESSAGE) 

CREATE TABLE Message (

     Msg_Id    NUMBER(10) NOT NULL ,    --留言编号
     Msg_Title     VARCHAR2(20) NOT NULL ,    --留言标题
     Msg_Content   VARCHAR2(2000) NOT NULL ,  --留言内容
     Msg_Data     DATE NOT NULL ,      --发布日期
     Guest_Id     NUMBER(10) NOT NULL ,    --用户ID
     PRIMARY KEY (Msg_Id)
);

create sequence seq_msgid;


alter table Room
add constraints FK_HotelID foreign key (Hotel_ID) reference Hotel (Hotel_ID);

alter table Room
add constraints FK_roomTyoId foreign key (ROOM_TYPE_ID) reference RoomType (Room_Type_Id);


alter table OrderList add constraints FK_userId foreign key (User_Id) reference Guest (User_Id);

alter table OrderList add constraints FK_roomId foreign key (ROOM_ID) reference Room (ROOM_ID);

alter table MESSAGE add constraints FK_userId foreign key (Guest_Id) reference Guest (Guest_Id);

--搜索所有房间，查看不同分店的不重复房间类型
SELECT distinct 
  	r.HOTEL_ID,h.CITY,h.HOTEL_NAME,h.HOTEL_ADDRESS,h.HOTEL_ABOUT,
	rt.ROOM_TYPE_NAME,rt.ROOM_TYPE_ID,rt.ROOM_PRICE,rt.INTRODUCTION,
	rt.IMAGEURL
FROM
	ROOMTYPE rt ,
	ROOM r,
	HOTEL h
WHERE
	h.HOTEL_ID = r.HOTEL_ID AND
	rt.ROOM_TYPE_ID = r.ROOM_TYPE_ID
ORDER BY r.HOTEL_ID;



CREATE TABLE News(
  NewsID NUMBER(4) PRIMARY KEY,
  TITLE VARCHAR(50) NOT NULL,
  NewsType VARCHAR(10) NOT NULL,
  NewsCONTENT VARCHAR2(2000) NOT NULL,
  SHIJIAN VARCHAR(50) NOT NULL
)
NewsType VARCHAR(10) NOT NULL,



　　