	create table calendar(
		id number primary key,
		title varchar2(100),
		start01 varchar2(50),
		end01 varchar2(50),
		writer varchar2(50),
		content varchar2(500),
		borderColor varchar2(30),
		textColor varchar2(30),
		allDay number(1),
		url varchar2(500)
	);
ALTER TABLE CALENDAR RENAME COLUMN borderColor TO backgroundColor;
	create sequence cal_seq
		start with 1
		minvalue 1;
		-- turquoise, azure
	SELECT * FROM CALENDAR;
	INSERT INTO CALENDAR values(cal_seq.nextval,'첫번째 일정 등록','2023-02-16T09:00:00','2023-02-16T23:00:00',
	'홍설','오늘의 일정내용입니다','turquoise','azure',1,'https://fullcalendar.io/docs/event-object');