CREATE TABLE VOTER(VID INT PRIMARY KEY , VNAME VARCHAR(20),VAGE INT,VSTATE VARCHAR(10),VPWD VARCHAR(20))
CREATE TABLE ELECTION(EID INT PRIMARY KEY ,ENAME VARCHAR(20),EDATE DATE,ESTATE VARCHAR(20),EWIN VARCHAR(20))
CREATE TABLE CANDIDATE(CID INT PRIMARY KEY,CNAME VARCHAR(20),CAGE INT,EID INT FOREIGN KEY REFERENCES ELECTION(EID)
,VOTES INT)

alter table election alter column edate varchar(10)

insert into ELECTION values(102,'MCD','08/08/2023','Uttar Pradesh','')

