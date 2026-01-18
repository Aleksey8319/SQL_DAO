create schema if not exists netology;

create table if not exists CUSTOMERS (
    id int auto_increment primary key,
    name varchar(255),
    surname varchar(255),
    age int,
    phone_number int
    );

create table if not exists ORDERS (
    id           int PRIMARY KEY auto_increment,
    date         date,
    FOREIGN KEY (customer_id) references CUSTOMERS (id),
    product_name varchar(100),
    amount       int
    );