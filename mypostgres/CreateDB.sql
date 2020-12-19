CREATE SCHEMA sample;
CREATE SCHEMA questionbank;
CREATE SCHEMA brex;


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


create table date_null(
    date date,
    value integer 
);
COPY date_null from '/sampledata/date_null.csv' DELIMITER ',' CSV HEADER;


create table brex.customer_accounts(
    id varchar(10),
    name varchar(20)
);
COPY brex.customer_accounts from '/sampledata/customer_accounts.csv' DELIMITER ',' CSV HEADER;


create table brex.financial_accounts(
    id varchar(10),
    customer_account_id varchar(10),
    name varchar(30)
);
COPY brex.financial_accounts from '/sampledata/financial_accounts.csv' DELIMITER ',' CSV HEADER;

create table brex.financial_balances(
    id varchar(20),
    account_id varchar(10),
    accrual_date date,
    amount numeric
);
COPY brex.financial_balances from '/sampledata/financial_balances.csv' DELIMITER ',' CSV HEADER;

create table brex.financial_transactions(
    account_id varchar(10),
    accrual_date date,
    amount numeric,
    id varchar(20)
);
COPY brex.financial_transactions from '/sampledata/financial_transactions.csv' DELIMITER ',' CSV HEADER;


create table tips(
    total_bill numeric,
    tip numeric,
    sex varchar(10),
    smoker varchar(10),
    day varchar(10),
    mealtime varchar(10),
    size integer
);
COPY tips from '/sampledata/tips.csv' DELIMITER ',' CSV HEADER;

create table trip(
    id numeric,
    name varchar(20),
    time_ timestamp,
    status varchar(10)
);
COPY trip from '/sampledata/trip.csv' DELIMITER ',' CSV HEADER;

create table goal(
    goal_time timestamp,
    team numeric,
    player varchar(10)
);
COPY goal from '/sampledata/goal.csv' DELIMITER ',' CSV HEADER;

create table user_tag(
    user_id numeric,
    tag varchar(10)
);
COPY user_tag from '/sampledata/user_tag.csv' DELIMITER ',' CSV HEADER;

create table video_view(
    user_id numeric,
    video_id numeric,
    time_ timestamp
);
COPY video_view from '/sampledata/video_view.csv' DELIMITER ',' CSV HEADER;
