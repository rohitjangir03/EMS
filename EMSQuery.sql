Create Database EMS;
Use EMS;

Create table Employee (Emp_No int Primary Key auto_increment ,
FirstName varchar(20) not null,LastName Varchar(20) not null,
Email varchar(20) unique, Mobile_No bigint unique,
Address varchar(20),Salary double(9,2),Hire_Date date , Manager_Id int,
Dept_No int references department(dept_no));

Alter Table Employee auto_increment=101;

Create table Department(Dept_no int Primary Key, Dname varchar(20),Location varchar(15));

create table Project(Proj_Id int primary key, Proj_Name Varchar(20), Proj_Desc varchar(25));

Create table Emp_Proj(Emp_No int references Employee(Emp_No),Proj_Id int references Project(Proj_Id),
ProjJoin_Date Date, ProjLeave_Date Date );

delimiter //

create procedure insrt_emp_details(vfname varchar(20),
vlname varchar(20),Vmail varchar(20),Vmno bigint(10),vaddress
varchar(25),vsal double(9,2),vhiredate date,vmid int,vdeptno int)
Begin
Insert into Employee(FirstName,LastName,Email,Mobile_No,Address,Salary,
Hire_Date,Manager_Id,Dept_No) values(vfname,vlname,Vmail,Vmno,vaddress,vsal,vhiredate,vmid,vdeptno);
End //

delimiter ;

call insrt_emp_details("Akash","Singh","akash.singh@emp.com",6785566403,
"Wadgaon Sheri,Pune",80000.00,'2000-04-08',104,1001);

call insrt_emp_details("Rohan","kumar","rohan.kumar@emp.com",9785566407,
"Hinjewadi,Pune",60000.00,'2000-08-20',105,1002);

call insrt_emp_details("Suraj","kumar","suraj.kumar@emp.com",6385566498,
"Baner,Pune",80000.00,'2000-07-22',106,1003);

call insrt_emp_details("Anand","Singh","anand.singh@emp.com",9985576403,
"Hinjewadi,Pune",60000.00,'2001-11-17',107,1004);

call insrt_emp_details("Aashish","Raj","aashish.raj@emp.com",6300566905,
"Baner,Pune",60000.00,'2001-05-08',104,1001);

call insrt_emp_details("Tanya","Sinha","tanya.sinha@emp.com",8340066709,
"Wakad,Pune",70000.00,'2002-08-05',105,1003);

call insrt_emp_details("Kirti","Sinha","kirti.sinha@emp.com",9985566509,
"Kharadi,Pune",70000.00,'2003-09-11',106,1002);

call insrt_emp_details("Krishna","kumar","krishna.@emp.com",8797566405,
"FC Road,Pune",40000.00,'2004-06-15',105,1003);

call insrt_emp_details("Anish","Singh","anish.singh@emp.com",6785566902,
"Baner,Pune",60000.00,'2002-09-17',104,1004);

call insrt_emp_details("Aman","Kumar","aman.kumar@emp.com",9345566709,
"Akurdi,Pune",50000.00,'2001-04-22',107,1002);

call insrt_emp_details("Rohit","jangir","rohit.jangir@emp.com",6785567403,
"Pimprichwad,Pune",80000.00,'2002-07-19',106,1001);

call insrt_emp_details("Priyanka","sinha","priyanka.@emp.com",8785569409,
"Kalyani,Pune",60000.00,'2005-11-26',104,1003);

call insrt_emp_details("Honey","kumari","honey.kumari@emp.com",9785576605,
"Lohgaon,Pune",40000.00,'2004-07-22',107,1005);

call insrt_emp_details("Rohan","singh","rohan.singh@emp.com",9785566403,
"Hinjewadi,Pune",60000.00,'2002-08-20',105,1002);

call insrt_emp_details("Mohan","Agarwal","mohan.wal@emp.com",9948856703,
"Viman Nagar,Pune",30000.00,'2001-02-26',104,1004);

call insrt_emp_details("Sharad","khatri","sharad.@emp.com",6869862909,
"Keshav Nagar,Pune",50000.00,'2002-03-25',106,1003);

call insrt_emp_details("Mohit","talwar","mohit.talwar@emp.com",9787566477,
"Satara,Pune",60000.00,'2005-02-11',105,1004);

call insrt_emp_details("Priya","Dubey","priya.dubey@emp.com",9645569503,
"Hinjewadi,Pune",70000.00,'2000-11-19',102,1002);

call insrt_emp_details("Ravi","Gupta","ravi.gupta@emp.com",8345566433,
"Lohgaon,Pune",40000.00,'2003-05-10',105,1001);

call insrt_emp_details("Animesh","Aman","animesh.aman@emp.com",9987743122,
"Kalyani,Pune",60000.00,'2005-07-14',106,1002);


insert into Project values(10,'Project-SB','State Bank Server');
insert into Project values(20,'Project-TCS','Techinal Support to TCS');
Insert into Project values(30,'Project-DS','Defense Security Check');
insert into Project values(40,'Project-CC','Serving cc servies');

insert into Department values(1001,'Accounts','Nashik');
insert into Department values(1002,'Development','Pune');
insert into Department values(1003,'Sales','Nagpur');
insert into Department values(1004,'Admin','Mumbai');

insert into Emp_Proj values(101,10,'2018-03-09','2020-03-14');
insert into Emp_Proj values(102,40,'2019-07-23','2020-07-16');
insert into Emp_Proj values(103,30,'2010-06-26','2022-03-16');
insert into Emp_Proj values(104,20,'2019-09-11','2021-05-17');
insert into Emp_Proj values(105,20,'2020-08-09','2023-02-14');
insert into Emp_Proj values(106,30,'2018-03-03','2021-03-11');
insert into Emp_Proj values(107,40,'2018-05-15','2020-01-12');
insert into Emp_Proj values(108,30,'2018-01-19','2020-06-22');
insert into Emp_Proj values(109,10,'2019-03-17','2020-09-16');
insert into Emp_Proj values(110,40,'2018-03-21','2023-03-11');
insert into Emp_Proj values(111,20,'2019-07-13','2021-08-11');
insert into Emp_Proj values(112,30,'2022-03-17','2022-03-11');
insert into Emp_Proj values(113,10,'2021-05-11','2020-05-21');
insert into Emp_Proj values(114,30,'2020-06-21','2021-06-01');
insert into Emp_Proj values(115,30,'2020-06-03','2021-06-03');
insert into Emp_Proj values(116,40,'2020-05-26','2021-12-22');
insert into Emp_Proj values(117,10,'2020-04-19','2021-11-07');
insert into Emp_Proj values(118,20,'2018-11-13','2021-06-23');
insert into Emp_Proj values(119,20,'2021-12-04','2021-12-23');
insert into Emp_Proj values(120,40,'2021-09-14','2021-11-01');
insert into Emp_Proj values(121,10,'2020-03-14','2021-12-01');
insert into Emp_Proj values(122,40,'2020-09-14','2021-12-12');

