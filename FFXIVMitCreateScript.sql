create table Roles (
 id int identity(1,1) primary key,
 name varchar(256),
 createdat datetime default getdate(),
 updatedat datetime
);

create table Jobs (
 id int identity(1,1) primary key,
 name varchar(256),
 roleid int not null, 
 createdat datetime default getdate(),
 updatedat datetime
);

create table Actions (
 id int identity(1,1) primary key,
 name varchar(256),
 createdat datetime default getdate(),
 updatedat datetime
);

create table JobActions (
 id int identity(1,1) primary key,
 actionid int,
 jobid int,
 createdat datetime default getdate(),
 updatedat datetime
);

create table PartyComp (
 id int identity(1,1) primary key,
 info varchar(max),
 userid int,
 createdat datetime default getdate(),
 updatedat datetime
);

create table Rules (
 id int identity(1,1) primary key,
 actionid int,
 info varchar(max),
 category varchar(100),
 val float,
 createdat datetime default getdate(),
 updatedat datetime
);

create table Users (
 id int identity(1,1) primary key,
 username varchar(max) default newid(),
 createdat datetime default getdate(),
 updatedat datetime
);
