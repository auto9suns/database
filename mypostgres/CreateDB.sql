CREATE SCHEMA sample;
CREATE SCHEMA questionbank;


create table visit(
    visit_date  date,
    people  integer 
);

COPY visit from '/sampledata/visit.csv' DELIMITER ',' CSV HEADER;
create table product_rev_summary(
    department  integer,
    product  varchar(5),
    revenue  integer,
    channel  varchar(10)
);
COPY product_rev_summary from '/sampledata/product_rev_summary.csv' DELIMITER ',' CSV HEADER;

create table member_order(
    member_id integer,
    order_id integer,
    order_date date 
);

COPY member_order from '/sampledata/member_order.csv' DELIMITER ',' CSV HEADER;

create table server_repair(
    server_id integer,
    repair_status varchar(10),
    as_of_date date 
);
COPY server_repair from '/sampledata/server_repair.csv' DELIMITER ',' CSV HEADER;


create table user_salary(
    id integer,
    salary integer,
    bonus integer 
);
COPY user_salary from '/sampledata/user_salary.csv' DELIMITER ',' CSV HEADER;



create table student_seat(
    id integer,
    student varchar(10)
);
COPY student_seat from '/sampledata/student_seat.csv' DELIMITER ',' CSV HEADER;


create table user_login(
    id integer,
    name varchar(40),
    login_time timestamp
);
COPY user_login from '/sampledata/user_login.csv' DELIMITER ',' CSV HEADER;


create table naive_login(
    id integer,
    login_date date 
);
COPY naive_login from '/sampledata/naive_login.csv' DELIMITER ',' CSV HEADER;


