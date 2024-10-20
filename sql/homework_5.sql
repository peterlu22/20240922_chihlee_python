/*1.全省各站點2022年進站總人數*/
SELECT stacode 車站代碼,
		max(name) 車站名稱,
		SUM(gateincomingcnt) 進站人數
from station_in_out 
JOIN stations ON station_in_out.stacode = stations.stationcode
where extract(year from date)='2022'
group by stacode;

/*2.全省各站點2022年進站總人數大於5佰萬人的站點*/
SELECT stationname 車站名稱,
		SUM(gateincomingcnt) 進站人數
FROM station_in_out
JOIN stations ON station_in_out.stacode = stations.stationcode
WHERE EXTRACT(year from date) = '2022'
GROUP BY stationname;

/*3.基隆火車站2020年,每月份進站人數*/
SELECT to_char(date::DATE,'yyyy-mm') 月,
		MAX(stacode) 車站代碼,
		MAX(name) 車站名稱,
		SUM(gateincomingcnt) 進站人數
FROM station_in_out
JOIN stations ON station_in_out.stacode = stations.stationcode
WHERE stacode = '900' AND date >= '2020-01-01' AND date < '2021-01-01'
GROUP BY 月
ORDER BY 月;

/*4.基隆火車站2020年,每月份進站人數,由多至少*/
SELECT to_char(date::DATE,'yyyy-mm') 月,
		MAX(stacode) 車站代碼,
		MAX(name) 車站名稱,
		SUM(gateincomingcnt) 進站人數
FROM station_in_out
JOIN stations ON station_in_out.stacode = stations.stationcode
WHERE stacode = '900' AND date >= '2020-01-01' AND date < '2021-01-01'
GROUP BY 月
ORDER BY 進站人數 DESC;

/*5.基隆火車站2020,2021,2022,每年進站人數*/
SELECT to_char(date::DATE,'yyyy') 年,
		MAX(stacode) 車站代碼,
		MAX(name) 車站名稱,
		SUM(gateincomingcnt) 進站人數
FROM station_in_out
JOIN stations ON station_in_out.stacode = stations.stationcode
WHERE stacode = '900' AND date >= '2020-01-01' AND date < '2023-01-01'
GROUP BY 年
ORDER BY 年;

/*6.基隆火車站,臺北火車站2020,2021,2022,每年進站人數*/
SELECT to_char(date::Date,'yyyy') 年,
		stationcode 車站代碼,
		name 車站名稱,
		SUM(gateincomingcnt) 進站人數
FROM stations
JOIN station_in_out ON stations.stationcode = station_in_out.stacode
WHERE stationcode IN ('900','1000')
GROUP BY 年,車站代碼,車站名稱
ORDER BY 年;

/*7.進站人數最多的一筆(請使用SubQuery)*/
SELECT date 日期,
		stacode 車站代碼,
		name  車站名稱,
		gateincomingcnt 進站人數
FROM station_in_out
JOIN stations ON station_in_out.stacode = stations.stationcode
WHERE gateincomingcnt = (
	SELECT gateincomingcnt
	FROM station_in_out
	ORDER BY gateincomingcnt DESC
	LIMIT 1
);

/*8.各站點進站人數最多的一筆(請使用SubQuery)*/
SELECT date AS 日期,
		stacode AS 車站代碼,
		name AS 車站名稱,
		gateincomingcnt AS 進站人數
FROM station_in_out
JOIN stations ON stations.stationcode = station_in_out.stacode
WHERE (stacode,gateincomingcnt) IN (
		SELECT stacode,MAX(gateincomingcnt)
		FROM station_in_out
		GROUP BY stacode
)
ORDER BY stacode;