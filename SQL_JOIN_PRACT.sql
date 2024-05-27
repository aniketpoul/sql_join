create database join_pract;
create table one_1(
     order_id varchar(255),
     customerid varchar(255),
     order_date date);
show tables;
insert into one_1 (order_id, customerid, order_date) values (10308, 2, '1996-09-18' );
insert into one_1 (order_id, customerid, order_date) values (10309, 37, '1996-09-19' );
insert into one_1 (order_id, customerid, order_date) values (10310, 77, '1996-09-20' );

select * from one_1;

create table cus_1(customerid varchar(255),
				customername varchar(255),
                contactname varchar(255),
                country varchar(255));
show tables;
insert into cus_1 (customerid, customername, contactname, country) values (1 , 'amit', 'john', 'india' );
insert into cus_1 (customerid, customername, contactname, country) values (2 , 'ajay', 'patrik', 'England' );
insert into cus_1 (customerid, customername, contactname, country) values (3 , 'ajit', 'adi', 'US' );

select * from cus_1;

select one_1.order_id, cus_1.customername, one_1.order_date
From one_1
INNER JOIN cus_1 on one_1.customerid = cus_1.customerid;


select one_1.order_id, cus_1.customername, one_1.order_date
From one_1
LEFT JOIN cus_1 on one_1.customerid = cus_1.customerid;

select one_1.order_id, cus_1.customername, one_1.order_date
From one_1
RIGHT JOIN cus_1 on one_1.customerid = cus_1.customerid;
