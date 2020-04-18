create table visit(
    visit_date  date,
    people  integer 
);

COPY visit from '/sampledata/visit.csv' DELIMITER ',' CSV HEADER;
create table product_rev_summary(
    department  integer,
    product  varchar(5),
    revenue  integer
);
COPY product_rev_summary from '/sampledata/product_rev_summary.csv' DELIMITER ',' CSV HEADER;

