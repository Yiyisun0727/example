select * From TerminalCommand
order by createDate desc

select * from gpsInfo_0000126318080002

SELECT * FROM alarmRecord

select * from WarnMsgUrgTodoReq

truncate table vehicleoutside123456

select * from GPSRealData
order by sendTime desc

select * from  department

select g.*,d.name as depName from GpsRealData g ,department d
where g.depId = d.depId

select * from vehicle where vehicleId = '13294'
DELETE FROM GPSRealData where simNo = '0000126318080009'

INSERT INTO functionModel VALUES ('更改MAC地址', 2,3,900700,'',2,'image/telephone.gif',NULL,900764,0,'RIGHT_TERMINAL_CHANGEMAC',NULL,0,NULL,0,NULL)

select * from functionModel where  parentId = '900700'

select * from functionModel 

UPDATE functionModel SET name = 'RIGHT_TERMINAL_CHANGEZDName' WHERE  funcId= '1000774' 

select * from Terminal where devNo ='0000126318080002'


select row_number() over(order by startTime desc) as RowNum,a.*,
v.plateColor,v.simNo,v.vehicleId,v.depId,v.depName 
from alarmRecord a with(nolock),vehicle v with(nolock)
where a.plateNo = v.plateNo and a.type <> 'platform_alarm' 
and startTime >= '2018-11-27 09:56:29.860'
		


select * from basicData where name = '历史拍照查询'

set IDENTITY_INSERT basicData on
INSERT INTO basicData(baseId,name,code,parent,meta,deleted,createDate,tenantId,remark,owner,sn) 
VALUES (459,'设备通电','online','AlarmType',NuLL,0,'2018-11-30 10:50:20.873',0,NULL,NULL,0)
set IDENTITY_INSERT basicData OFF
set IDENTITY_INSERT basicData on
INSERT INTO basicData (baseId,name,code,parent,meta,deleted,createDate,tenantId,remark,owner,sn)
VALUES (460,'设备断电','offline','AlarmType',NuLL,0,'2018-11-30 10:50:20.873',0,NULL,NULL,0)
set IDENTITY_INSERT basicData OFF
update basicData  set name = '设备断电' where baseId = ''
update alarmRecord  set status  = 'New' where alarmId = '30' 
更改站点编号
select row_number() over(order by startTime desc) as RowNum,a.*,
v.plateColor,v.simNo,v.vehicleId,v.depId,v.depName , 
(select fileName from MediaItem m where a.plateNo = m.plateNo and m.sendTime > DateAdd(MINUTE,-2,a.startTime) and m.sendTime < DateAdd(MINUTE,2,a.startTime) and a.type = 'terminal_state')as fileName
from alarmRecord a with(nolock),vehicle v with(nolock)
where a.plateNo = v.plateNo 
and a.type <> 'platform_alarm' and (a.childType <> 'Stop' and a.childType <> 'GpsOnline' and a.childType <> 'GpsOffline') 
		
				
select * from PlatFormMsgInfoReq

select * from vehicle  where vehicleId= '13293'
				
select *  from GPSRealData 
order by sendTime desc
	
DELETE FROM alarmRecord
WHERE alarmId = 180 
 
 select * from TerminalCommand
 order by createDate desc
 
 truncate table alarmRecord
 
 select * from VehicleOnlineRate
 
SELECT * FROM alarmRecord
where childType = 'offline' and plateNo= 'G2513L1X131320802'
order by startTime desc

select v.vehicleId,v.plateNo, v.simNo, g.*,d.name as depName, v.plateColor, t.seqNo,
driverName = cast((stuff((select ',' + driverName from driverInfo where vehicleId = v.vehicleId and deleted = 0 for xml path('')),1,1,'')) as nvarchar),
driverId = cast((stuff((select ',' + cast(driverId as nvarchar) from driverInfo where vehicleId = v.vehicleId and deleted = 0 for xml path('')),1,1,'')) as nvarchar),
telephone = cast((stuff((select ',' + telephone from driverInfo where vehicleId = v.vehicleId and deleted = 0 for xml path('')),1,1,'')) as nvarchar),	
m.name as memberName, v.memberId, v.region, e.fullName as regionName, i.description as industryType ,vt.name as vehicleType , eb.eContent as ewayBill,
ar.startTime, ar.endTime, ar.timeSpan, ar.status as arstatus
from
vehicle v with(nolock)
left join gpsRealData g with(nolock) on v.vehicleId = g.vehicleId
left join MemberInfo m on v.memberId = m.id
left join Terminal t on v.termId = t.termId
left join department d on v.depId = d.depId
left join region e on e.code = v.region
left join industryType i on i.code = v.industry
left join vehicleType vt on vt.code = v.vehicleType
left join
(select top 1 eContent, vehicleId from ewayBill where vehicleId ='13293'
order by createDate desc) eb on eb.vehicleId = v.vehicleId 
left join (select top 1 * from alarmrecord with(nolock) where childType = 'offline'and plateNo = (select plateNo from vehicle with(nolock) where vehicleId = '13293' ) order by startTime desc) ar on ar.plateNo = v.plateNo


select * from vehicle  where vehicleId = '13293'



select v.plateNo, d.name,g.online,ar.childType,g.direction,g.alarmState,g.sendTime
from 
vehicle v with(nolock)
left join gpsRealData g with(nolock) on v.vehicleId = g.vehicleId
left join department d on v.depId = d.depId
left join region e on e.code = v.region
left join Terminal t on v.termId = t.termId
left join (select top 1 * from alarmrecord with(nolock) where plateNo = (select plateNo from vehicle with(nolock) where vehicleId = '13293' )
 order by startTime desc) ar on ar.plateNo = v.plateNo
 
select * from alarmRecord
where status = 'New' and childType = 'offline' and plateNo = 'G2513L1X131320802'
	
update alarmRecord  set status = 'Old' where alarmId = '2'

select * from alarmRecord
where childType = 'offline'
order by startTime desc

select *from GPSRealData
where alarmState = '1' 

select count(*) as BoxOpenNum
from GPSRealData
where doorOpen = '1'


select * from GPSRealData
select * from MediaItem
where plateNo = '苏CC6396'
order by sendTime desc

select * from  vehicle
select * from Terminal
where plateNo = 'G2513L1X131320809'

select row_number() over(
order by m.sendTime desc
) as RowNum, 
m.*, d.name as depName,v.plateNo as plateNo1, v.plateColor 
from MediaItem m ,Vehicle V , Department d
where m.simNo = v.simNo and v.Deleted = 0 and v.DepId = d.DepId
and mediatype = '0'and codeFormat = '0' and channelid = '1'
and v.plateNo = 'G2513L1X131320809'

select * from UserVehicle where userId = '33554433'

select * from UserInfo 


select  * from GPSRealData  where vehicleId = '13293'

select row_number() over(order by startTime desc) as RowNum,a.*,
		v.plateColor,v.simNo,v.vehicleId,v.depId,v.depName 
		from alarmRecord a with(nolock),vehicle v with(nolock)
		where a.plateNo = v.plateNo  
	
	
select * from functionModel where funcId = '400000'
select * from functionModel where  descr = '修改用户密码'
select * from RoleFunc


update functionModel set url = 'vehicle' where funcId = '400000'

INSERT INTO functionModel VALUES ('所有站点位置', 1,2,400000,'allZDPostision.action',2,'image/edit.png',NULL,200002,0,'ALLZDPosition',NULL,0,NULL,0,NULL)


select row_number() over(order by g.plateNo) as RowNum,
g.*, d.name as depName, v.plateColor, t.seqNo 
from gpsRealData g with(nolock) , vehicle v with(nolock) ,department d, Terminal t
where g.vehicleId = v.vehicleId and v.depId = d.depId and t.termId=v.termId


set IDENTITY_INSERT functionModel ON;
INSERT INTO functionModel (funcId,descr,funcType,level,parentId,url,flag,icon,reportFlag,menuSort,mask,name,createDate,deleted,owner,tenantId,remark) VALUES (400000,'沙盘监测', 1,1,-1,'vehicle',2,'image/sand2.png',NULL,400000,0,'sand_MANAGER',NULL,0,NULL,0,NULL)
set IDENTITY_INSERT functionModel OFF;

update functionModel set deleted = 1 where funcId = '900207' l

select * from functionModel  where funcId = '900207'

select * from TerminalCommand

select * from GpsRealData         

select g.*,d.name as depName from GpsRealData g ,department d
where g.depId = d.depId
		
select g.* ,
(select d.name from department d where d.depId= g.depId) as depName
from GPSRealData g  with(nolock) 
 where 1 = 1 and depId = '117440539'
 and g.vehicleId in ( select vehicleId from UserVehicle where userId='33558340' )


select * from UserVehicle where vehicleId = '58'

select * from UserInfo where loginName = 'ssy'

select  * from UserInfo where depId = '117440592'


select * from functionModel where descr = '终端控制'

 UPDATE functionModel SET deleted = 1 WHERE funcId = '1000714'


DELETE FROM functionModel WHERE funcId = '1000776'
 UPDATE functionModel SET descr = '更改站点编号' WHERE funcId = '1000774'
 
 
select * from basicData where parent = 'TerminalType'

 UPDATE basicData SET deleted = 0 WHERE  parent = 'TerminalType'
 
set IDENTITY_INSERT functionModel ON;
INSERT INTO functionModel (funcId,descr,funcType,level,parentId,url,flag,icon,reportFlag,menuSort,mask,name,createDate,deleted,owner,tenantId,remark) VALUES (1000730,'终端桩点信息管理', 1,2,200000,'vehicleTerminalList!view.action',2,'image/onlinecar.png',NULL,200002,0,'VEHICLETERMINAL_INFO_MANAGER',NULL,0,NULL,0,NULL)
set IDENTITY_INSERT functionModel OFF;


select * from functionModel where descr = '终端桩点信息管理'
select * from RoleFunc where funcId = '117440638'
select * from RoleFunc ,functionModel where functionModel.funcId = RoleFunc.sys_func_id

select * from Role

select * from UserInfo where userId = '33558341'

DELETE FROM UserDepartment WHERE depId= '117440513'


select vehicle.termId from vehicle where plateNo = '苏C39182'

select * from Terminal where termId = '201326593'

select * from GPSRealData

select * from alarmRecord

select * from department 

select * from  UserInfo 

select * from UserVehicle where vehicleId = '154'

select * from UserDepartment where userId = '33554433'

select * from WarnMsgInform

truncate table WarnMsgInform

DELETE FROM UserInfo WHERE userId = '33558340' 

DROP TABLE  gpsInfo_0000126318080002

select * from basicData where name = '无效坐标'

DELETE FROM basicData WHERE name = '航视通HT-600'

UPDATE basicData SET name = '蓝色0' , deleted = 1  WHERE baseId = '2'


select * from basicData  where parent = 'TerminalType'

select v.Driver as plateNo0, g.*
from vehicle v with(nolock) left join GpsRealData g with(nolock) on v.vehicleId = g.vehicleId 


select row_number() over(order by startTime desc) as RowNum,a.*,
		v.plateColor,v.simNo,v.vehicleId,v.depId,v.depName ,v.Driver as plateNo0
		from alarmRecord a with(nolock),vehicle v with(nolock)
		where a.plateNo = v.plateNo  and v.Driver = 'K252+1770'
		
		select g.* , v.Driver,
		(select d.name from department d where d.depId= g.depId) as depName
		from GPSRealData g ,vehicle v  where g.vehicleId = v.vehicleId
		
		
		select @@version
		
		
		select row_number() over(order by startTime desc) as RowNum,a.*,
		v.plateColor,v.simNo,v.vehicleId,v.depId,v.depName ,v.Driver as plateNo0
		from alarmRecord a with(nolock),vehicle v with(nolock)
		where a.plateNo = v.plateNo  
		
		
		select * from basicData  where name = '暂停正常已拆脱网'
		
		select * from alarmRecord
		
		truncate table alarmRecord