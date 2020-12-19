create table naive_login(
    id integer,
    login_date date 
);
COPY naive_login from '/sampledata/naive_login.csv' DELIMITER ',' CSV HEADER;
