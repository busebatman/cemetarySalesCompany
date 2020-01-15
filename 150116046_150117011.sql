CREATE DATABASE CEMETARY_SALES_COMPANY
use  CEMETARY_SALES_COMPANY

CREATE TABLE PERSON_T (
    PersonID int NOT NULL,
    FirstName varchar(20) NOT NULL,
	LastName varchar(20) NOT NULL,
	gender varchar (1),
    PRIMARY KEY(PersonID)
    );

DROP TABLE PERSON_T;

insert into PERSON_T values(1, 'Başak','Yalçın','F');
insert into PERSON_T values(2, 'Sami','Yener','M');
insert into PERSON_T values(3, 'Metin','Aslan','M');
insert into PERSON_T values(4, 'Ayla','Gün','F');
insert into PERSON_T values(5, 'Yaren','Altýn','F');
insert into PERSON_T values(6, 'Selim','Gündüz','M');
insert into PERSON_T values(7, 'Afife','Yýlmaz','F');
insert into PERSON_T values(8, 'Adnan','Kale','M');
insert into PERSON_T values(9, 'Emre','Aydýn','M');
insert into PERSON_T values(10,'Selim','Ünal','M');
insert into PERSON_T values(11, 'Ayhan','Mutlu','M');
insert into PERSON_T values(12, 'Cevriye','Hýmbýl','F');
insert into PERSON_T values(13, 'Mukaddes','Sütlü','F');
insert into PERSON_T values(14, 'Fahriye','Çýnar','F');
insert into PERSON_T values(15, 'Selami','Usta','M');
insert into PERSON_T values(16, 'Feride','Bekçi','F');
insert into PERSON_T values(17, 'Murat','Aslan','M');
insert into PERSON_T values(18, 'Eslem','Tosun','F');
insert into PERSON_T values(19, 'Özlem','Baþ','F');
insert into PERSON_T values(20, 'Meryem','Tekin','M');
insert into PERSON_T values(21, 'Ahmet','Taþ','M');
insert into PERSON_T values(22, 'Kemal','Ayrancý','M');
insert into PERSON_T values(23, 'Bihter','Kaçak','F');
insert into PERSON_T values(24, 'Þeyma','Adsýz','F');
insert into PERSON_T values(25, 'Büþra','Mantý','F');
insert into PERSON_T values(26, 'Tuðçe','Sarý','F');
insert into PERSON_T values(27, 'Liva','Kaya','F');
insert into PERSON_T values(28, 'Öznur','Kýlýç','F');
insert into PERSON_T values(29, 'Feyza','Taþkýn','F');
insert into PERSON_T values(30, 'Sumru','Ayvacýk','F');
insert into PERSON_T values(31, 'Pamuk','Kuloðlu','F');
insert into PERSON_T values(32, 'Ýhsan','Yýldýrým','M');
insert into PERSON_T values(33, 'Merve','Baþak','F');
insert into PERSON_T values(34, 'Sinan','Alkan','M');
insert into PERSON_T values(35, 'Muhsin','Ayaz','M');
insert into PERSON_T values(36, 'Melek','Yenilmez','F');
insert into PERSON_T values(37, 'Arda','Pancar','M');
insert into PERSON_T values(38, 'Kamil','Uncu','M');
insert into PERSON_T values(39, 'Nimet','Ova','F');
insert into PERSON_T values(40, 'Selma','Kaplan','F');

select max(personID) from [person_t];

select * from person_t;

CREATE TABLE PHONE_NUMBER_T (
    PersonID int NOT NULL,
    PhoneNumber varchar(11) NOT NULL,
    PRIMARY KEY(PersonID, PhoneNumber),
    FOREIGN KEY(PersonID) REFERENCES PERSON_T(PersonID),
	CONSTRAINT unique_phone_number UNIQUE (PhoneNumber)
    );

DROP TABLE PHONE_NUMBER_T;

insert into PHONE_NUMBER_T values(1, 05350000000);
insert into PHONE_NUMBER_T values(2, 05343040320);
insert into PHONE_NUMBER_T values(3, 05323243244);
insert into PHONE_NUMBER_T values(4, 05312343244);
insert into PHONE_NUMBER_T values(5, 05369876542);
insert into PHONE_NUMBER_T values(6, 05422345667);
insert into PHONE_NUMBER_T values(7, 05241233256);
insert into PHONE_NUMBER_T values(8, 05246787689);
insert into PHONE_NUMBER_T values(9, 05143245367);
insert into PHONE_NUMBER_T values(10, 05363454352);
insert into PHONE_NUMBER_T values(11, 05415464789);
insert into PHONE_NUMBER_T values(12, 05462353567);
insert into PHONE_NUMBER_T values(13, 05624543556);
insert into PHONE_NUMBER_T values(14, 05322435346);
insert into PHONE_NUMBER_T values(15, 05412342411);
insert into PHONE_NUMBER_T values(16, 05241234434);
insert into PHONE_NUMBER_T values(17, 05419789765);
insert into PHONE_NUMBER_T values(18, 05414351212);
insert into PHONE_NUMBER_T values(19, 05217687990);
insert into PHONE_NUMBER_T values(20, 05411409876);
insert into PHONE_NUMBER_T values(21, 05418790985);
insert into PHONE_NUMBER_T values(22, 05421243578);
insert into PHONE_NUMBER_T values(23, 05365476909);
insert into PHONE_NUMBER_T values(24, 05355123278);
insert into PHONE_NUMBER_T values(25, 05424343985);
insert into PHONE_NUMBER_T values(26, 05353522266);
insert into PHONE_NUMBER_T values(27, 05421524233);
insert into PHONE_NUMBER_T values(28, 05356362444);
insert into PHONE_NUMBER_T values(29, 05416335210);
insert into PHONE_NUMBER_T values(30, 05346589722);
insert into PHONE_NUMBER_T values(31, 05353596987);
insert into PHONE_NUMBER_T values(32, 05394825698);
insert into PHONE_NUMBER_T values(33, 05346828596);
insert into PHONE_NUMBER_T values(34, 05353596989);
insert into PHONE_NUMBER_T values(35, 05342154233);
insert into PHONE_NUMBER_T values(35, 05346987854);
insert into PHONE_NUMBER_T values(36, 05394825001);
insert into PHONE_NUMBER_T values(37, 05352641036);
insert into PHONE_NUMBER_T values(38, 05347031695);
insert into PHONE_NUMBER_T values(39, 05347862102);
insert into PHONE_NUMBER_T values(39, 05456230148);
insert into PHONE_NUMBER_T values(40, 05363201877);

select * from PHONE_NUMBER_T;

SELECT PERSONID, PHONENUMBER FROM PHONE_NUMBER_T
ORDER BY PERSONID
   
CREATE TABLE EMPLOYEE_T (
    EmployeeID int NOT NULL,
    PRIMARY KEY(EmployeeID),
    FOREIGN KEY(EmployeeID) REFERENCES PERSON_T(PersonID)
    );

DROP TABLE EMPLOYEE_T;

insert into EMPLOYEE_T values(1);
insert into EMPLOYEE_T values(4);
insert into EMPLOYEE_T values(5);
insert into EMPLOYEE_T values(7);
insert into EMPLOYEE_T values(9);
insert into EMPLOYEE_T values(11);
insert into EMPLOYEE_T values(12);
insert into EMPLOYEE_T values(14);
insert into EMPLOYEE_T values(15);
insert into EMPLOYEE_T values(17);
insert into EMPLOYEE_T values(18);
insert into EMPLOYEE_T values(20);
insert into EMPLOYEE_T values(22);
insert into EMPLOYEE_T values(23);
insert into EMPLOYEE_T values(24);
insert into EMPLOYEE_T values(36);
insert into EMPLOYEE_T values(37);
insert into EMPLOYEE_T values(38);
insert into EMPLOYEE_T values(39);
insert into EMPLOYEE_T values(40);

	alter table EMPLOYEE_T add HireDate date;
	alter table EMPLOYEE_T add City varchar(10);
	alter table EMPLOYEE_T add District varchar(10);
    alter table EMPLOYEE_T add PostalCode int;
	alter table EMPLOYEE_T add BloodType varchar(3);
	alter table EMPLOYEE_T add SocialSecurityNumber varchar(11);

	select * from employee_t;

UPDATE EMPLOYEE_T SET HireDate='02-14-2016', City ='Ýzmit', District='Gebze',PostalCode=41100,BloodType ='AB+', SocialSecurityNumber=23234436576 WHERE EmployeeID = 1;
UPDATE EMPLOYEE_T SET HireDate='04-14-2016', City ='Ýstanbul', District='Kadýköy',PostalCode=34520,BloodType='AB-',SocialSecurityNumber=23258697412 WHERE EmployeeID = 4;
UPDATE EMPLOYEE_T SET HireDate='02-11-2019', City ='Ýzmit',District='Gebze', PostalCode=41100, BloodType='A+',SocialSecurityNumber=15632980214 WHERE EmployeeID = 5;
UPDATE EMPLOYEE_T SET HireDate='12-14-2014', City ='Ýzmit', District='Gebze', PostalCode=41100, BloodType='0+', SocialSecurityNumber=12036742602 WHERE EmployeeID = 7;
UPDATE EMPLOYEE_T SET HireDate='10-10-2013', City ='Ýstanbul', District='Pendik', PostalCode=34240, BloodType='B+', SocialSecurityNumber=19349594931 WHERE EmployeeID = 9;
UPDATE EMPLOYEE_T SET HireDate='02-04-2016', City ='Ýzmit', District='Gebze', PostalCode=41100, BloodType='A-', SocialSecurityNumber=59458329406 WHERE EmployeeID = 11;
UPDATE EMPLOYEE_T SET HireDate='02-10-2011', City ='Ýstanbul', District='Kadýköy', PostalCode=34520, BloodType='AB+', SocialSecurityNumber=34619594931 WHERE EmployeeID = 12;
UPDATE EMPLOYEE_T SET HireDate='02-08-2019', City ='Ýzmit', District='Gebze', PostalCode=41100, BloodType='AB-',SocialSecurityNumber=59321020191 WHERE EmployeeID = 14;
UPDATE EMPLOYEE_T SET HireDate='02-12-2013', City ='Ýstanbul', District='Kadýköy', PostalCode=34520, BloodType='0-',SocialSecurityNumber=14780235609 WHERE EmployeeID = 15;
UPDATE EMPLOYEE_T SET HireDate='02-11-2015', City = 'Ýstanbul', District='Þiþli',PostalCode=34510, BloodType='0+',SocialSecurityNumber=10259630145 WHERE EmployeeID = 17;
UPDATE EMPLOYEE_T SET HireDate='12-10-2011', City ='Ýstanbul', District= 'Þiþli', PostalCode=34510, BloodType='B+',SocialSecurityNumber=10452068931 WHERE EmployeeID = 18;
UPDATE EMPLOYEE_T SET HireDate='05-14-2010', City ='Ýstanbul', District='Üsküdar', PostalCode=34040, BloodType='A+',SocialSecurityNumber=10456938705 WHERE EmployeeID = 20;
UPDATE EMPLOYEE_T SET HireDate='01-14-2015', City ='Ýstanbul', District='Pendik', PostalCode=34240, BloodType='B-', SocialSecurityNumber=10456938071 WHERE EmployeeID = 22;
UPDATE EMPLOYEE_T SET HireDate='11-04-2019', City ='Ýstanbul', District='Þiþli', PostalCode=34510, BloodType='0-',SocialSecurityNumber=13458927044 WHERE EmployeeID = 23;
UPDATE EMPLOYEE_T SET HireDate='02-06-2017', City ='Ýstanbul', District='Þiþli', PostalCode=34510, BloodType='AB+',SocialSecurityNumber=13478992501 WHERE EmployeeID = 24;
UPDATE EMPLOYEE_T SET HireDate='12-10-2019', City ='Ýstanbul', District= 'Ataşehir', PostalCode=34510, BloodType='B-',SocialSecurityNumber=10147958931 WHERE EmployeeID = 36;
UPDATE EMPLOYEE_T SET HireDate='05-18-2018', City ='Ýstanbul', District='Üsküdar', PostalCode=34240, BloodType='0+',SocialSecurityNumber=10655351511 WHERE EmployeeID = 37;
UPDATE EMPLOYEE_T SET HireDate='01-14-2015', City ='Ýstanbul', District='Pendik', PostalCode=35340, BloodType='B-', SocialSecurityNumber=10456938071 WHERE EmployeeID = 38;
UPDATE EMPLOYEE_T SET HireDate='11-04-2016', City ='İzmit', District='Gebze', PostalCode=36310, BloodType='AB-',SocialSecurityNumber=62302478525 WHERE EmployeeID = 39;
UPDATE EMPLOYEE_T SET HireDate='02-06-2019', City ='Ýstanbul', District='Altunizade', PostalCode=34510, BloodType='B+',SocialSecurityNumber=14265877752 WHERE EmployeeID = 40;

CREATE TABLE OFFICE_WORKER_T (
    OfficeWorkerID int NOT NULL,
    MonthlySalary int NOT NULL,
	Department varchar(20),
	Email varchar(25),
	HireDate2 date,
    PRIMARY KEY(OfficeWorkerID),
    FOREIGN KEY(OfficeWorkerID) REFERENCES EMPLOYEE_T(EmployeeID),
    );

DROP TABLE OFFICE_WORKER_T;

insert into OFFICE_WORKER_T (OfficeWorkerID, MonthlySalary, Department, Email) values(1, 4000,'General Manager', 'basakyalcin@hotmail.com');
insert into OFFICE_WORKER_T (OfficeWorkerID, MonthlySalary, Department, Email) values(4, 2020,'HR', 'aylagun@hotmail.com');
insert into OFFICE_WORKER_T (OfficeWorkerID, MonthlySalary, Department, Email) values(5, 2020,'IT', 'yarenaltun@hotmail.com');
insert into OFFICE_WORKER_T (OfficeWorkerID, MonthlySalary, Department, Email) values(7, 3000,'IT', 'basakyalcin@hotmail.com');
insert into OFFICE_WORKER_T (OfficeWorkerID, MonthlySalary, Department, Email) values(9, 3500,'Sales', 'afifeyilmaz@hotmail.com');
insert into OFFICE_WORKER_T (OfficeWorkerID, MonthlySalary, Department, Email) values(11, 2500,'Sales', 'emreaydin@hotmail.com');
insert into OFFICE_WORKER_T (OfficeWorkerID, MonthlySalary, Department, Email) values(12, 3000,'IT', 'cevriye@hotmail.com');
insert into OFFICE_WORKER_T (OfficeWorkerID, MonthlySalary, Department, Email) values(14, 2020,'Sales', 'fahriyec@hotmail.com');
insert into OFFICE_WORKER_T (OfficeWorkerID, MonthlySalary, Department, Email) values(36, 2020,'Sales', 'melekyenilmez@hotmail.com');
insert into OFFICE_WORKER_T (OfficeWorkerID, MonthlySalary, Department, Email) values(39, 2020,'Sales', 'nimetova@hotmail.com');
UPDATE OFFICE_WORKER_T set HireDate2 = (select HireDate from employee_t where employee_t.employeeID=1) where OfficeWorkerID=1;
UPDATE OFFICE_WORKER_T set HireDate2 = (select HireDate from employee_t where employee_t.employeeID=4) where OfficeWorkerID=4;
UPDATE OFFICE_WORKER_T set HireDate2 = (select HireDate from employee_t where employee_t.employeeID=5) where OfficeWorkerID=5;
UPDATE OFFICE_WORKER_T set HireDate2 = (select HireDate from employee_t where employee_t.employeeID=7) where OfficeWorkerID=7;
UPDATE OFFICE_WORKER_T set HireDate2 = (select HireDate from employee_t where employee_t.employeeID=9) where OfficeWorkerID=9;
UPDATE OFFICE_WORKER_T set HireDate2 = (select HireDate from employee_t where employee_t.employeeID=11) where OfficeWorkerID=11;
UPDATE OFFICE_WORKER_T set HireDate2 = (select HireDate from employee_t where employee_t.employeeID=12) where OfficeWorkerID=12;
UPDATE OFFICE_WORKER_T set HireDate2 = (select HireDate from employee_t where employee_t.employeeID=14) where OfficeWorkerID=14;
UPDATE OFFICE_WORKER_T set HireDate2 = (select HireDate from employee_t where employee_t.employeeID=36) where OfficeWorkerID=36;
UPDATE OFFICE_WORKER_T set HireDate2 = (select HireDate from employee_t where employee_t.employeeID=39) where OfficeWorkerID=39;

select * from OFFICE_WORKER_T;

--office workers who worked at the company more than 2 years got %15 rise on their salary
declare @currentemp int=0;
declare @nofrows int = (select max  (OfficeWorkerID) from OFFICE_WORKER_T);
while (@currentemp <= @nofrows ) begin 
	update OFFICE_WORKER_T set monthlysalary = monthlysalary * 1.15 where officeworkerID=@currentemp and  (DATEDIFF ( MONTH, HireDate2, GETDATE())/12 > 2);
	set @currentemp +=1;
end
--shows new salary values the ones which got rise
create view [got_rise_workers] as
select OfficeWorkerID, MonthlySalary, HireDate2
from OFFICE_WORKER_T
where DATEDIFF ( MONTH, HireDate2, GETDATE())/12 > 2;

select * from [got_rise_workers];

/*
UPDATE OFFICE_WORKER_T SET MonthlySalary=4000 WHERE OfficeWorkerID = 1;
UPDATE OFFICE_WORKER_T SET MonthlySalary=2020 WHERE OfficeWorkerID = 4;
UPDATE OFFICE_WORKER_T SET MonthlySalary=2020 WHERE OfficeWorkerID = 5;
UPDATE OFFICE_WORKER_T SET MonthlySalary=3000 WHERE OfficeWorkerID = 7;
UPDATE OFFICE_WORKER_T SET MonthlySalary=3500 WHERE OfficeWorkerID = 9;
UPDATE OFFICE_WORKER_T SET MonthlySalary=2500 WHERE OfficeWorkerID = 11;
UPDATE OFFICE_WORKER_T SET MonthlySalary=3000 WHERE OfficeWorkerID = 12;
UPDATE OFFICE_WORKER_T SET MonthlySalary=2020 WHERE OfficeWorkerID = 14;
UPDATE OFFICE_WORKER_T SET MonthlySalary=2020 WHERE OfficeWorkerID = 36;
UPDATE OFFICE_WORKER_T SET MonthlySalary=2020 WHERE OfficeWorkerID = 39;*/

select * from OFFICE_WORKER_T;

CREATE TABLE GRAVEYARD_T (
    GraveyardID int NOT NULL,
    GraveyardName varchar(30) NOT NULL,
    Town varchar(30) NOT NULL,
    District varchar(30) ,
    FamilyGraveCapacity int NOT NULL ,
    SingularGraveCapacity int NOT NULL ,
    PRIMARY KEY(GraveyardID)
);
 
 DROP TABLE GRAVEYARD_T;

insert into GRAVEYARD_T values(345, 'KURUÇEÞME', 'BEÞÝKTAÞ', 'FÝDE SOKAK', 120, 200);
insert into GRAVEYARD_T values(367, 'MAÇKA', 'BEÞÝKTAÞ', 'HARBÝYE', 100, 150);
insert into GRAVEYARD_T values(379, 'FERÝKÖY', 'ÞÝÞLÝ', 'PAÞA', 230, 300);
insert into GRAVEYARD_T values(394, 'ZÝNCÝRLÝKUYU', 'ÞÝÞLÝ', 'ESENTEPE', 140, 220);
insert into GRAVEYARD_T values(445, 'SÜTLÜCE', 'SÜTLÜCE', 'ATMACA SOKAK', 130, 210);
insert into GRAVEYARD_T values(676, 'KÜPLÜCE', 'ÜSKÜDAR', 'BEYLERBEYÝ', 40, 200);
insert into GRAVEYARD_T values(716, 'AYRILIK ÇEÞME', 'KADIKÖY', 'AYRILIK ÇEÞME', 120, 280);
insert into GRAVEYARD_T values(732, 'KADIKÖY ', 'KADIKÖY', 'GÖZTEPE', 50, 250);
insert into GRAVEYARD_T values(752, 'ÝÇERENKÖY', 'ATAÞEHÝR', 'MEZARLIK SOKAK', 60, 200);
insert into GRAVEYARD_T values(768, 'KOCATEPE', 'ÜMRANÝYE', 'ÝNKILAP', 100, 300);
insert into GRAVEYARD_T values(771, 'IHLAMUR KUYU', 'ÜMRANÝYE', 'CEMÝL MERÝÇ', 50, 160);

select * from GRAVEYARD_T;


 CREATE TABLE GRAVE_CARE_SERVICE_T (
    ServiceID int NOT NULL,
    Period int NOT NULL,
    Price int NOT NULL,
    PRIMARY KEY(ServiceID)
);

DROP TABLE GRAVE_CARE_SERVICE_T;

insert into GRAVE_CARE_SERVICE_T values(1, 12, 100);
insert into GRAVE_CARE_SERVICE_T values(2, 11, 200);
insert into GRAVE_CARE_SERVICE_T values(3, 10, 300);
insert into GRAVE_CARE_SERVICE_T values(4, 9, 400);
insert into GRAVE_CARE_SERVICE_T values(5, 8, 500);
insert into GRAVE_CARE_SERVICE_T values(6, 7, 600);
insert into GRAVE_CARE_SERVICE_T values(7, 6, 700);
insert into GRAVE_CARE_SERVICE_T values(8, 5, 800);
insert into GRAVE_CARE_SERVICE_T values(9, 4, 900);
insert into GRAVE_CARE_SERVICE_T values(10, 3, 1000);
insert into GRAVE_CARE_SERVICE_T values(11, 2, 1100);
insert into GRAVE_CARE_SERVICE_T values(12, 1, 1200);

select * from GRAVE_CARE_SERVICE_T;

 CREATE TABLE GRAVE_T (
    GraveID int NOT NULL,
    GraveyardID int NOT NULL,
    ServiceID int,
    Price int NOT NULL,
    PRIMARY KEY(GraveID),
    FOREIGN KEY(GraveyardID) REFERENCES GRAVEYARD_T(GraveyardID),
    FOREIGN KEY(ServiceID) REFERENCES GRAVE_CARE_SERVICE_T(ServiceID)
);

DROP TABLE GRAVE_T;

insert into GRAVE_T values(3451, 345, NULL, 1500);
insert into GRAVE_T values(3452, 345, NULL, 1500);
insert into GRAVE_T values(3453, 345, NULL, 1500);
insert into GRAVE_T values(3454, 345, NULL, 1500);
insert into GRAVE_T values(3671, 367, NULL, 2000);
insert into GRAVE_T values(3672, 367, NULL, 2000);
insert into GRAVE_T values(3673, 367, NULL, 2000);
insert into GRAVE_T values(3674, 367, NULL, 2000);
insert into GRAVE_T values(6766, 676, NULL, 2200);
insert into GRAVE_T values(6767, 676, NULL, 2200);
insert into GRAVE_T values(7712, 771, 1, 2900);
insert into GRAVE_T values(7715, 771, 2, 2500);
insert into GRAVE_T values(7716, 771, 1, 2900);
insert into GRAVE_T values(7717, 771, 2, 2500);
insert into GRAVE_T values(34513, 345, 3, 1500);
insert into GRAVE_T values(36710, 367, 4, 2000);
insert into GRAVE_T values(36712, 367, NULL, 2000);
insert into GRAVE_T values(36721, 367, 6, 2000);
insert into GRAVE_T values(36722, 367, 6, 2000);
insert into GRAVE_T values(36723, 367, 5, 2000);
insert into GRAVE_T values(36733, 367, NULL, 2000);
insert into GRAVE_T values(67616, 676, 7, 2000);
insert into GRAVE_T values(67619, 676, NULL, 2500);
insert into GRAVE_T values(71610, 771, 8, 3000);
insert into GRAVE_T values(76827, 768, 9, 2000);
insert into GRAVE_T values(77136, 771, NULL, 2100);
insert into GRAVE_T values(77149, 771, 11, 2400);
insert into GRAVE_T values(77150, 771, NULL, 2400);
insert into GRAVE_T values(771161, 771, 12, 2800);
insert into GRAVE_T values(771162, 771, NULL, 2800);
insert into GRAVE_T values(445211, 445, 8, 8000);
insert into GRAVE_T values(445212, 445, NULL, 8000);
insert into GRAVE_T values(445213, 445, NULL, 8000);
insert into GRAVE_T values(394300, 394, 11, 7500);
insert into GRAVE_T values(394301, 394, NULL, 7500);
insert into GRAVE_T values(752210, 752, 12, 9000);
insert into GRAVE_T values(752211, 752, 12, 9000);
insert into GRAVE_T values(716312, 716, NULL, 8200);
insert into GRAVE_T values(716313, 716, 5, 8200);
insert into GRAVE_T values(716314, 716, 5, 8200);
insert into GRAVE_T values(716315, 716, 5, 8200);
insert into GRAVE_T values(716316, 716, 5, 8200);

select * from GRAVE_T;
select count(*) from customer_t;
CREATE TABLE CLEANER_T (
    CleanerID int NOT NULL,
    Earnings int default 300,
	CleanedGraveID int, 
    PRIMARY KEY(CleanerID, CleanedGraveID),
    FOREIGN KEY(CleanerID) REFERENCES EMPLOYEE_T(EmployeeID),
	FOREIGN KEY (CleanedGraveID) REFERENCES GRAVE_T(GraveID)
    );

DROP TABLE CLEANER_T;

--increasing earnings of cleaner everytime he cleaned a grave
CREATE TRIGGER	increase_earnings_cleaners on cleaner_t
AFTER INSERT AS BEGIN

DECLARE @CLEANERID INT 
DECLARE @GRAVEID INT 
Select @CLEANERID = ins.CleanerID from INSERTED ins;
Select @GRAVEID = ins.CleanedGraveID from INSERTED ins;
DECLARE @TEMP INT =0;
	while (@TEMP <= @CLEANERID ) begin 
		update Cleaner_t set Earnings = Earnings + 100 where Cleaner_t.CleanerID=@TEMP and  Cleaner_t.CleanerID=@CLEANERID and Cleaner_t.CleanedGraveID!=@GRAVEID;
			set @TEMP +=1;
	end
END

select * from cleaner_t;
select * from GRAVEYARD_T;
insert into CLEANER_T (CleanerID, CleanedGraveID) values(12, 7712);
insert into CLEANER_T (CleanerID, CleanedGraveID) values(12, 716316);
insert into CLEANER_T (CleanerID, CleanedGraveID) values(17, 36721);
insert into CLEANER_T (CleanerID, CleanedGraveID) values(20, 67616);
insert into CLEANER_T (CleanerID, CleanedGraveID) values(23, 77149);
insert into CLEANER_T (CleanerID, CleanedGraveID) values(40, 394300);
insert into CLEANER_T (CleanerID, CleanedGraveID) values(12, 7715);
insert into CLEANER_T (CleanerID, CleanedGraveID) values(12, 34513);
insert into CLEANER_T (CleanerID, CleanedGraveID) values(12, 36710);
insert into CLEANER_T (CleanerID, CleanedGraveID) values(17, 36722);
insert into CLEANER_T (CleanerID, CleanedGraveID) values(17, 36723);
insert into CLEANER_T (CleanerID, CleanedGraveID) values(20, 71610);
insert into CLEANER_T (CleanerID, CleanedGraveID) values(20, 76827);
insert into CLEANER_T (CleanerID, CleanedGraveID) values(23, 716315);
insert into CLEANER_T (CleanerID, CleanedGraveID) values(23, 77161);
insert into CLEANER_T (CleanerID, CleanedGraveID) values(23, 445211);
insert into CLEANER_T (CleanerID, CleanedGraveID) values(40, 752210);
insert into CLEANER_T (CleanerID, CleanedGraveID) values(40, 752211);
insert into CLEANER_T (CleanerID, CleanedGraveID) values(40, 716314);

select * from cleaner_t;

CREATE TABLE FAMILY_GRAVE_T (
    FamilyGraveID int NOT NULL,
    PRIMARY KEY(FamilyGraveID),
    FOREIGN KEY(FamilyGraveID) REFERENCES GRAVE_T(GraveID)
);

DROP TABLE FAMILY_GRAVE_T;

insert into FAMILY_GRAVE_T values(771161);
insert into FAMILY_GRAVE_T values(771162);
insert into FAMILY_GRAVE_T values(445211);
insert into FAMILY_GRAVE_T values(445212);
insert into FAMILY_GRAVE_T values(445213);
insert into FAMILY_GRAVE_T values(394300);
insert into FAMILY_GRAVE_T values(394301);
insert into FAMILY_GRAVE_T values(752210);
insert into FAMILY_GRAVE_T values(752211);
insert into FAMILY_GRAVE_T values(716312);
insert into FAMILY_GRAVE_T values(716313);
insert into FAMILY_GRAVE_T values(716314);
insert into FAMILY_GRAVE_T values(716315);
insert into FAMILY_GRAVE_T values(716316);


select * from FAMILY_GRAVE_T;

CREATE TABLE SINGULAR_GRAVE_T (
    SingularGraveID int NOT NULL,
    PRIMARY KEY(SingularGraveID),
    FOREIGN KEY(SingularGraveID) REFERENCES GRAVE_T(GraveID)
);

DROP TABLE SINGULAR_GRAVE_T;

insert into SINGULAR_GRAVE_T values(3451);
insert into SINGULAR_GRAVE_T values(3452);
insert into SINGULAR_GRAVE_T values(3453);
insert into SINGULAR_GRAVE_T values(3454);
insert into SINGULAR_GRAVE_T values(34513);
insert into SINGULAR_GRAVE_T values(3671);
insert into SINGULAR_GRAVE_T values(3672);
insert into SINGULAR_GRAVE_T values(3673);
insert into SINGULAR_GRAVE_T values(3674);
insert into SINGULAR_GRAVE_T values(3766);
insert into SINGULAR_GRAVE_T values(6766);
insert into SINGULAR_GRAVE_T values(6767);
insert into SINGULAR_GRAVE_T values(7712);
insert into SINGULAR_GRAVE_T values(7715);
insert into SINGULAR_GRAVE_T values(7716);
insert into SINGULAR_GRAVE_T values(7717);
insert into SINGULAR_GRAVE_T values(34513);
insert into SINGULAR_GRAVE_T values(36710);
insert into SINGULAR_GRAVE_T values(36712);
insert into SINGULAR_GRAVE_T values(36721);
insert into SINGULAR_GRAVE_T values(36722);
insert into SINGULAR_GRAVE_T values(36723);
insert into SINGULAR_GRAVE_T values(36733);
insert into SINGULAR_GRAVE_T values(67616);
insert into SINGULAR_GRAVE_T values(67619);
insert into SINGULAR_GRAVE_T values(71610);
insert into SINGULAR_GRAVE_T values(76827);
insert into SINGULAR_GRAVE_T values(77136);
insert into SINGULAR_GRAVE_T values(77149);
insert into SINGULAR_GRAVE_T values(77150);

select count(*) from SINGULAR_GRAVE_T;
select * from SINGULAR_GRAVE_T;



CREATE TABLE CUSTOMER_T (
    CustomerID int NOT NULL,
    GraveID int NOT NULL,
    BirthDate date NOT NULL,
    PRIMARY KEY(CustomerID),
    FOREIGN KEY(CustomerID) REFERENCES PERSON_T(PersonID),
    FOREIGN KEY(GraveID) REFERENCES GRAVE_T(GraveID)
    );  
   
   DROP TABLE CUSTOMER_T;

insert into CUSTOMER_T values(1, 3672, '02-14-1967');
insert into CUSTOMER_T values(2, 3671, '03-13-1980');
insert into CUSTOMER_T values(3, 67619, '02-01-1948');
insert into CUSTOMER_T values(6, 3451, '02-04-1970');
insert into CUSTOMER_T values(8, 77149, '03-14-1960');
insert into CUSTOMER_T values(10, 76827, '02-14-1953');
insert into CUSTOMER_T values(13, 3452, '02-14-1968');
insert into CUSTOMER_T values(14, 6766, '02-14-1955');
insert into CUSTOMER_T values(15, 77136, '02-14-1960');
insert into CUSTOMER_T values(16, 7712, '02-14-1957');
insert into CUSTOMER_T values(19, 71610, '02-14-1949');
insert into CUSTOMER_T values(21, 77150, '05-14-1958');
insert into CUSTOMER_T values(25, 7715, '02-14-1962');
insert into CUSTOMER_T values(26, 67616, '02-14-1966');
insert into CUSTOMER_T values(27, 34513, '02-11-1961');
insert into CUSTOMER_T values(28, 36721, '07-14-1941');
insert into CUSTOMER_T values(29, 36722, '12-14-1950');
insert into CUSTOMER_T values(30, 36733, '02-14-1945');
insert into CUSTOMER_T values(31, 36710, '08-10-1944');
insert into CUSTOMER_T values(32, 36712, '02-14-1963');
insert into CUSTOMER_T values(33, 36723, '02-14-1959');
insert into CUSTOMER_T values(34, 771161, '02-14-1957');
insert into CUSTOMER_T values(35, 771161, '06-14-1975');
select count(*) from customer_T;
	alter table CUSTOMER_T add City varchar(10);
	alter table CUSTOMER_T add District varchar(10);
    alter table CUSTOMER_T add PostalCode int;

UPDATE CUSTOMER_T SET City ='Eskişehir',  District='Beylikova',PostalCode=4110 WHERE CustomerID = 1;
UPDATE CUSTOMER_T SET City ='Sakarya', District='Adapazarı',PostalCode=5410 WHERE CustomerID = 2;
UPDATE CUSTOMER_T SET City ='Çorum', District='Alaca', PostalCode=1930  WHERE CustomerID = 3;
UPDATE CUSTOMER_T SET City ='Trabzon', District='Beşikdüzü', PostalCode=6110  WHERE CustomerID = 6;
UPDATE CUSTOMER_T SET City ='Ýstanbul', District='Pendik', PostalCode=34240 WHERE CustomerID = 8;
UPDATE CUSTOMER_T SET City ='Ýzmit', District='Gebze', PostalCode=41100 WHERE CustomerID = 10;
UPDATE CUSTOMER_T SET City ='Ýstanbul', District='Kadýköy', PostalCode=34520 WHERE CustomerID = 13;
UPDATE CUSTOMER_T SET City ='Ýzmit', District='Gebze', PostalCode=41100 WHERE CustomerID = 14;
UPDATE CUSTOMER_T SET City ='Sakarya', District='Sapanca', PostalCode=54220 WHERE CustomerID = 15;
UPDATE CUSTOMER_T SET City ='İzmir', District='Çeşme',PostalCode=35510 WHERE CustomerID = 16;
UPDATE CUSTOMER_T SET City ='Balıkesir', District= 'Akçay', PostalCode=10110  WHERE CustomerID = 19;
UPDATE CUSTOMER_T SET City ='Ýstanbul', District='Üsküdar', PostalCode=34040  WHERE CustomerID = 21;
UPDATE CUSTOMER_T SET City ='Ýstanbul', District='Pendik', PostalCode=34240  WHERE CustomerID = 25;
UPDATE CUSTOMER_T SET City ='Ýstanbul', District='Kartal', PostalCode=34510  WHERE CustomerID = 26;
UPDATE CUSTOMER_T SET City ='Ýstanbul', District='Kartal', PostalCode=34510  WHERE CustomerID = 27;
UPDATE CUSTOMER_T SET City ='Ýzmit', District='Gebze', PostalCode=41100 WHERE CustomerID = 28;
UPDATE CUSTOMER_T SET City ='Sakarya', District='Sapanca', PostalCode=54220 WHERE CustomerID = 29;
UPDATE CUSTOMER_T SET City ='İzmir', District='Çeşme',PostalCode=35510 WHERE CustomerID = 30;
UPDATE CUSTOMER_T SET City ='Balıkesir', District= 'Akçay', PostalCode=10110  WHERE CustomerID = 31;
UPDATE CUSTOMER_T SET City ='Ýstanbul', District='Üsküdar', PostalCode=34040  WHERE CustomerID = 32;
UPDATE CUSTOMER_T SET City ='Ýstanbul', District='Pendik', PostalCode=34240  WHERE CustomerID = 33;
UPDATE CUSTOMER_T SET City ='Ýstanbul', District='Kartal', PostalCode=34510  WHERE CustomerID = 34;
UPDATE CUSTOMER_T SET City ='Ýstanbul', District='Kartal', PostalCode=34510  WHERE CustomerID = 35;

select count(*) from CUSTOMER_T;

CREATE TABLE DEAD_CUSTOMER_T (
    DeadCustomerID int NOT NULL,
    DeathDate date NOT NULL,
    PRIMARY KEY(DeadCustomerID),
    FOREIGN KEY(DeadCustomerID) REFERENCES CUSTOMER_T(CustomerID)
    );  

	DROP TABLE DEAD_CUSTOMER_T;

insert into DEAD_CUSTOMER_T values(2, '05-14-2019');
insert into DEAD_CUSTOMER_T values(8, '02-14-2010');
insert into DEAD_CUSTOMER_T values(10, '02-11-2015');
insert into DEAD_CUSTOMER_T values(19, '07-14-2019');
insert into DEAD_CUSTOMER_T values(25, '12-14-2011');
insert into DEAD_CUSTOMER_T values(27, '02-14-2013');
insert into DEAD_CUSTOMER_T values(29, '08-10-2019');
insert into DEAD_CUSTOMER_T values(31, '02-14-2014');
insert into DEAD_CUSTOMER_T values(32, '08-10-2014');
insert into DEAD_CUSTOMER_T values(33, '02-14-2019');
   
   SELECT * FROM DEAD_CUSTOMER_T;

CREATE TABLE ALIVE_CUSTOMER_T (
    AliveCustomerID int NOT NULL,
    PRIMARY KEY(AliveCustomerID),
    FOREIGN KEY(AliveCustomerID) REFERENCES CUSTOMER_T(CustomerID)
    ); 
	
	DROP TABLE ALIVE_CUSTOMER_T;

insert into ALIVE_CUSTOMER_T values(1);
insert into ALIVE_CUSTOMER_T values(3);
insert into ALIVE_CUSTOMER_T values(6);
insert into ALIVE_CUSTOMER_T values(13);
insert into ALIVE_CUSTOMER_T values(14);
insert into ALIVE_CUSTOMER_T values(15);
insert into ALIVE_CUSTOMER_T values(16);
insert into ALIVE_CUSTOMER_T values(21);
insert into ALIVE_CUSTOMER_T values(26);
insert into ALIVE_CUSTOMER_T values(28);
insert into ALIVE_CUSTOMER_T values(30);
insert into ALIVE_CUSTOMER_T values(34);
insert into ALIVE_CUSTOMER_T values(35);
   
SELECT * FROM ALIVE_CUSTOMER_T;

/*
SELECT CleanerID, FirstName, LastName, SUM(earnings)
FROM CLEANER_T, PERSON_T
WHERE cleanerID = PersonID;*/

CREATE TABLE DRIVER_T (
    DriverID int NOT NULL,
    Earnings int default 100,
	DrivedCustomer int,
    PRIMARY KEY(DriverID, DrivedCustomer),
    FOREIGN KEY(DriverID) REFERENCES EMPLOYEE_T(EmployeeID),
	FOREIGN KEY(DrivedCustomer) REFERENCES DEAD_CUSTOMER_T(DeadCustomerID)
    );    

DROP TABLE DRIVER_T;

CREATE TRIGGER	increase_earnings_of_drivers on DRIVER_T
AFTER INSERT AS BEGIN

DECLARE @DRIVERID INT 
DECLARE @GRAVEID INT 
Select @DRIVERID = ins.DriverID from INSERTED ins;
Select @GRAVEID = ins.DrivedCustomer from INSERTED ins;
DECLARE @TEMP INT =0;
	while (@TEMP <= @DRIVERID ) begin 
		update DRIVER_T set Earnings = Earnings + 100 where DRIVER_T.DriverID=@TEMP and DRIVER_T.DriverID=@DRIVERID and DRIVER_T.DrivedCustomer!=@GRAVEID;
			set @TEMP +=1;
	end
END

insert into DRIVER_T values(15, 100, 2);
insert into DRIVER_T values(18, 100, 8);
insert into DRIVER_T values(22, 100, 10);
insert into DRIVER_T values(24, 100, 19);
insert into DRIVER_T values(15, 100, 25);
insert into DRIVER_T values(18, 100, 27);
insert into DRIVER_T values(22, 100, 29);
insert into DRIVER_T values(24, 100, 31);
insert into DRIVER_T values(15, 100, 32);
insert into DRIVER_T values(18, 100, 33);
insert into DRIVER_T values(37, 100, NULL);
insert into DRIVER_T values(38, 100, NULL);

select * from DRIVER_T;

CREATE TABLE CAR_T (
	CarID int not null,
    LicensePlate varchar(10) NOT NULL,
    Model varchar(5),
	Brand varchar(10),
	Color varchar(10),
	InspectionDate date,
    PRIMARY KEY(CarID)
    );

	DROP TABLE CAR_T;

insert into CAR_T values(1, '34 YC 235', 'i30', 'HYUNDAI', 'BLACK', '12-04-2019');
insert into CAR_T values(2, '34 BB 235', 'i20', 'HYUNDAI', 'BLACK', '12-04-2019');
insert into CAR_T values(3, '34 FOF 233', 'i30', 'HYUNDAI', 'DARK BLUE', '12-05-2019');
insert into CAR_T values(4, '34 MAR 100', 'i20', 'HYUNDAI', 'DARK BLUE', '09-05-2019');
insert into CAR_T values(5, '34 CAR 200', '2010', 'POLO', 'WHITE', '10-01-2019');
insert into CAR_T values(6, '34 ZM 1441', '2010', 'POLO', 'WHITE', '10-01-2019');
insert into CAR_T values(7, '34 EY 1442', '2011', 'POLO', 'WHITE', '10-01-2019');
insert into CAR_T values(8, '34 YC 1443', '2011', 'POLO', 'WHITE', '10-01-2019');
insert into CAR_T values(9, '34 YC 1445', 'SEDAN', 'OPEL', 'RED', '07-06-2019');
insert into CAR_T values(10, '34 OC 235', 'SEDAN', 'OPEL', 'RED', '07-06-2019');
insert into CAR_T values(11, '34 CSC 100', 'H350', 'HYUNDAI', 'WHITE', '12-05-2019');
insert into CAR_T values(12, '34 CSC 110', 'H350', 'HYUNDAI', 'WHITE', '12-05-2019');
insert into CAR_T values(13, '34 CSC 120', 'H350', 'HYUNDAI', 'WHITE', '12-05-2019');
insert into CAR_T values(14, '34 CSC 130', 'L350', 'FORD', 'GREEN', '07-20-2019');
insert into CAR_T values(15, '34 CSC 140', 'L350', 'FORD', 'GREEN', '07-20-2019');
insert into CAR_T values(16, '34 CSC 150', 'L350', 'FORD', 'GREEN', '07-20-2019');
insert into CAR_T values(17, '34 CSC 160', 'L350', 'FORD', 'GREEN', '07-20-2019');
insert into CAR_T values(18, '34 CSC 170', '315', 'MERCEDES', 'WHITE', '08-18-2019');
insert into CAR_T values(19, '34 CSC 180', '315', 'MERCEDES', 'WHITE', '08-18-2019');
insert into CAR_T values(20, '34 CSC 190', '315', 'MERCEDES', 'WHITE', '08-18-2019');

select * from CAR_T;

CREATE TABLE STAFF_CAR_T (
	StaffCarID int not null, 
    OwnerID int ,
    PRIMARY KEY(StaffCarID),
    FOREIGN KEY(StaffCarID) REFERENCES CAR_T(CarID),
    FOREIGN KEY(OwnerID) REFERENCES OFFICE_WORKER_T(OfficeWorkerID)
    );
	DROP TABLE STAFF_CAR_T;

insert into STAFF_CAR_T values(1, 1);
insert into STAFF_CAR_T values(2, 4);
insert into STAFF_CAR_T values(3, 5);
insert into STAFF_CAR_T values(4, 7);
insert into STAFF_CAR_T values(5, 9);
insert into STAFF_CAR_T values(6, 11);
insert into STAFF_CAR_T values(7, 12);
insert into STAFF_CAR_T values(8, 14);
insert into STAFF_CAR_T values(9, null);
insert into STAFF_CAR_T values(10, null);

select * from staff_car_t;
   
CREATE TABLE HEARSE_T (
    HearseID int NOT NULL,
    DriverID int NOT NULL,
    CarriedCustomerID int NOT NULL,
    PRIMARY KEY(HearseID),
    FOREIGN KEY(HearseID) REFERENCES CAR_T(CarID),
    FOREIGN KEY (DriverID, CarriedCustomerID) REFERENCES DRIVER_T(DriverID, DrivedCustomer),
    );

	DROP TABLE HEARSE_T;

insert into HEARSE_T values(11, 15, 2);
insert into HEARSE_T values(12, 18, 8);
insert into HEARSE_T values(13, 22, 10);
insert into HEARSE_T values(14, 24, 19);
insert into HEARSE_T values(15, 15, 25);
insert into HEARSE_T values(16, 18, 27);
insert into HEARSE_T values(17, 22, 29);
insert into HEARSE_T values(18, 24, 31);
insert into HEARSE_T values(19, 15, 32);
insert into HEARSE_T values(20, 18, 33);
		
select * from hearse_t;

CREATE TABLE MATERIAL_T (
    MaterialID int NOT NULL,
    MaterialName varchar(20) NOT NULL,
	--MaterialAmount int,
    --MaterialPrice int NOT NULL,
    PRIMARY KEY(MaterialID)
);

DROP TABLE MATERIAL_T;

insert into MATERIAL_T values(1, 'Cleaning Sweeper');
insert into MATERIAL_T values(2, 'Hose');
insert into MATERIAL_T values(3, 'Swob');
insert into MATERIAL_T values(4, 'Detergant');
insert into MATERIAL_T values(5, 'Sponge');
insert into MATERIAL_T values(6, 'Pickax');
insert into MATERIAL_T values(7, 'Shovel');
insert into MATERIAL_T values(8, 'Scyhte');
insert into MATERIAL_T values(9, 'Wheelbarrow');
insert into MATERIAL_T values(10, 'Watering Can');
insert into MATERIAL_T values(11, 'Tulip Seed');

select * from MATERIAL_T;

CREATE TABLE CLEANING_MATERIAL_T (
    CleaningMaterialID int NOT NULL,
    PRIMARY KEY(CleaningMaterialID),
    FOREIGN KEY(CleaningMaterialID) REFERENCES MATERIAL_T(MaterialID)
);

DROP TABLE CLEANING_MATERIAL_T;

insert into CLEANING_MATERIAL_T values(1);
insert into CLEANING_MATERIAL_T values(2);
insert into CLEANING_MATERIAL_T values(3);
insert into CLEANING_MATERIAL_T values(4);
insert into CLEANING_MATERIAL_T values(5);

select * from CLEANING_MATERIAL_T;

CREATE TABLE PLANTING_MATERIAL_T (
    PlantingMaterialID int NOT NULL,
    PRIMARY KEY(PlantingMaterialID),
    FOREIGN KEY(PlantingMaterialID) REFERENCES MATERIAL_T(MaterialID)
);

DROP TABLE PLANTING_MATERIAL_T;

insert into PLANTING_MATERIAL_T values(6);
insert into PLANTING_MATERIAL_T values(7);
insert into PLANTING_MATERIAL_T values(8);
insert into PLANTING_MATERIAL_T values(9);
insert into PLANTING_MATERIAL_T values(10);
insert into PLANTING_MATERIAL_T values(11);


select * from PLANTING_MATERIAL_T;

CREATE TABLE SUPPLIER_T (
    SupplierID int NOT NULL,
    SupplierName varchar(20) NOT NULL,
	CompanyName varchar(30) NOT NULL,
	ContactNumber varchar(11),
    PRIMARY KEY(SupplierID)
);

DROP TABLE SUPPLIER_T;

insert into SUPPLIER_T values(1, 'Hüseyin Karaca', 'Karaca Malzeme', 05452787471);
insert into SUPPLIER_T values(2, 'Ahmet Üstün', 'Yaparlar Nalbur', 05455646156);
insert into SUPPLIER_T values(3, 'Melih Kundura', 'Aplus Plastik', 05455896324);
insert into SUPPLIER_T values(4, 'Yasin Fırtına', 'Nalbur Baba', 054545702356);
insert into SUPPLIER_T values(5, 'Fatih Kaynar', 'Kaynar Hırdavat', 05454210368);
insert into SUPPLIER_T values(6, 'İsmail Bostancı', 'Bostancı El Aletleri', 05458503149);
insert into SUPPLIER_T values(7, 'Demir Cumhur', 'Cumhur Çelik El Aletleri', 05457520641);
insert into SUPPLIER_T values(8, 'Metin Usta', 'EnBahçe', 05454752369);
insert into SUPPLIER_T values(9, 'Selim Varlı', 'Varlı Yapı Malzeme', 05452566941);
insert into SUPPLIER_T values(10, 'Hikmet Güler', 'Güler Hijyen Toptan', 05454619773);

select * from SUPPLIER_T;

CREATE TABLE SUPPLY_RELATION_T (
    MaterialID int NOT NULL,
    SupplierID int NOT NULL,
    SupplyDate date NOT NULL,
	SupplyPrice int NOT NULL,
	SupplyAmount int NOT NULL,
    PRIMARY KEY(MaterialID, SupplierID),
    FOREIGN KEY(MaterialID) REFERENCES MATERIAL_T(MaterialID),
    FOREIGN KEY(SupplierID) REFERENCES SUPPLIER_T(SupplierID)
);

DROP TABLE SUPPLY_RELATION_T;

insert into SUPPLY_RELATION_T values(1, 6, '02-14-2019', 200, 10);
insert into SUPPLY_RELATION_T values(2, 2, '05-29-2019', 50, 5);
insert into SUPPLY_RELATION_T values(3, 4, '02-14-2019', 75 ,5);
insert into SUPPLY_RELATION_T values(4, 10, '03-17-2018', 200, 8);
insert into SUPPLY_RELATION_T values(5, 7, '02-14-2019', 300, 10);
insert into SUPPLY_RELATION_T values(6, 5, '08-12-2019', 180, 9);
insert into SUPPLY_RELATION_T values(7, 9, '02-28-2019', 210, 14);
insert into SUPPLY_RELATION_T values(8, 1, '12-14-2016', 120, 4);
insert into SUPPLY_RELATION_T values(9, 8, '02-28-2019', 300, 6);
insert into SUPPLY_RELATION_T values(10, 3, '02-14-2017', 91, 13 );

SELECT *FROM SUPPLY_RELATION_T;

	--shows staff cars which have owners
	Create view [owned_cars] AS
	SELECT OFFICE_WORKER_T.OfficeWorkerID, STAFF_CAR_T.StaffCarID
	FROM OFFICE_WORKER_T, STAFF_CAR_T
	WHERE OfficeWorkerID = OwnerID;

	select * from [owned_cars];


	--office workers which had worked more than 2 years
	SELECT  OfficeWorkerID, HireDate
	FROM  OFFICE_WORKER_T, EMPLOYEE_T 
		WHERE OFFICE_WORKER_T.OfficeWorkerID=EMPLOYEE_T.EmployeeID
		GROUP BY OfficeWorkerID,HireDate
		HAVING  ( DATEDIFF ( MONTH, HireDate, GETDATE())/12 > 2) ;

	--shows people who bought grave with higher than 2500 tl price.
	create view [owned_expens_graves] AS
	SELECT GRAVE_T.GraveID, PERSON_T.FirstName, PERSON_T.LastName, GRAVE_T.Price
	FROM GRAVE_T, PERSON_T, CUSTOMER_T
	where CustomerID=PersonID and GRAVE_T.GraveID=CUSTOMER_T.GraveID and Price>2500;

	select * from [owned_expens_graves];


	CREATE PROCEDURE cheap_grave
		@price int
	AS
	SELECT GraveID, Price FROM GRAVE_T AS grave
	WHERE grave.Price < @price;

	exec cheap_grave 2500;

	CREATE PROCEDURE multi_phone_numbered_person
		@phone_numbers int
	AS
	SELECT firstname, lastname, phonenumber FROM person_t, phone_number_t
	WHERE count( phonenumber_t.personID = person_t.personID) = @phone_numbers;

	exec multi_phone_numbered_person 2;

	create procedure getPrice 
	@grave_id int, @graveyard_id int
	as
	select Price from grave_t where graveyardID=@graveyard_id and graveID=(@grave_id - 1);

	exec getPrice 3453, 345

	--sorting cars first based on brand then based on licenseplate
	CREATE INDEX car_sort
		on car_t (brand, licenseplate);

		select * from car_t WITH(INDEX(car_sort))

	--dead customers who had died more than 2 years ago
	SELECT  FirstName, LastName, DeadCustomerID, DeathDate
	FROM  DEAD_CUSTOMER_T, PERSON_T
		WHERE PERSON_T.PersonID=DEAD_CUSTOMER_T.DeadCustomerID
		GROUP BY FirstName, LastName, DeadCustomerID, DeathDate
		HAVING  ( DATEDIFF ( MONTH, DeathDate, GETDATE())/12 > 2) ;




