select * from stations;

select id,name
from stations;

select id as 序號,code as 代碼,name as 車站名稱,e_name as 英文名稱
from stations;

select id as 序號,code as 代碼,name as 車站名稱,e_name as 英文名稱
from stations
where code = '1011' or code = '2002';

select id as 序號,code as 代碼,name as 車站名稱,e_name as 英文名稱
from stations
where code like '100_' or e_name like 'na'

select id as 序號,code as 代碼,name as 車站名稱,e_name as 英文名稱
from stations
where code like '1%' and e_name like 'na'

select id as 序號,code as 代碼,name as 車站名稱,e_name as 英文名稱
from stations
where name = '基隆';

select id as 序號,code as 代碼,name as 車站名稱,e_name as 英文名稱
from stations
where id < 10 or id > 20;

select id as 序號,code as 代碼,name as 車站名稱,e_name as 英文名稱
from stations
where id between 10 and 20;

select id as 序號,code as 代碼,name as 車站名稱,e_name as 英文名稱
from stations
where id not between 10 and 20;

select id as 序號,code as 代碼,name as 車站名稱,e_name as 英文名稱
from stations
order by id desc;

select id as 序號,code as 代碼,name as 車站名稱,e_name as 英文名稱
from stations
order by code desc;

select id as 序號,code as 代碼,name as 車站名稱,e_name as 英文名稱
from stations
order by e_name;

select id as 序號,code as 代碼,name as 車站名稱,e_name as 英文名稱
from stations
order by e_name
limit 10;

select id as 序號,code as 代碼,name as 車站名稱,e_name as 英文名稱
from stations
order by e_name desc
limit 10;