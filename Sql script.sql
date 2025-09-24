
create table customer (
    customerid int primary key,
    name varchar(100) not null,
    email varchar(100) unique not null,
    phone varchar(15),
    address varchar(255)
);

insert into customer (customerid, name, email, phone, address) values
(1, 'rahul sharma', 'rahul@mail.com', '9876543210', 'delhi'),
(2, 'neha patel', 'neha@mail.com', '9123456780', 'ahmedabad'),
(3, 'vikas singh', 'vikas@mail.com', '9988776655', 'mumbai'),
(4, 'isha gupta', 'isha@mail.com', '9090909090', 'bangalore'),
(5, 'arjun rao', 'arjun@mail.com', '9345678901', 'hyderabad');

create table product (
    productid int primary key,
    name varchar(100) not null,
    category varchar(50),
    price decimal(10,2) not null,
    stockquantity int not null
);

insert into product (productid, name, category, price, stockquantity) values
(1, 'laptop', 'electronics', 55000.00, 10),
(2, 'smartphone', 'electronics', 30000.00, 20),
(3, 'headphones', 'accessories', 2000.00, 50),
(4, 'shoes', 'fashion', 3500.00, 15),
(5, 'backpack', 'fashion', 1500.00, 30);


create table `order` (
    orderid int primary key,
    customerid int,
    orderdate date not null,
    status varchar(50),
    totalamount decimal(10,2),
    foreign key (customerid) references customer(customerid)
);

insert into `order` (orderid, customerid, orderdate, status, totalamount) values
(1, 1, '2025-09-01', 'delivered', 58000.00),
(2, 2, '2025-09-05', 'pending', 30000.00),
(3, 3, '2025-09-10', 'delivered', 5500.00),
(4, 4, '2025-09-15', 'shipped', 2000.00),
(5, 5, '2025-09-20', 'pending', 36500.00);


create table orderitem (
    orderitemid int primary key,
    orderid int,
    productid int,
    quantity int not null,
    subtotal decimal(10,2),
    foreign key (orderid) references `order`(orderid),
    foreign key (productid) references product(productid)
);

insert into orderitem (orderitemid, orderid, productid, quantity, subtotal) values
(1, 1, 1, 1, 55000.00),
(2, 1, 3, 1, 3000.00),
(3, 2, 2, 1, 30000.00),
(4, 3, 4, 1, 3500.00),
(5, 3, 5, 1, 2000.00),
(6, 4, 3, 1, 2000.00),
(7, 5, 2, 1, 30000.00),
(8, 5, 4, 1, 3500.00),
(9, 5, 5, 1, 3000.00);


create table payment (
    paymentid int primary key,
    orderid int,
    paymentdate date not null,
    amount decimal(10,2),
    method varchar(50),
    status varchar(50),
    foreign key (orderid) references `order`(orderid)
);

insert into payment (paymentid, orderid, paymentdate, amount, method, status) values
(1, 1, '2025-09-01', 58000.00, 'credit card', 'completed'),
(2, 2, '2025-09-06', 30000.00, 'upi', 'pending'),
(3, 3, '2025-09-10', 5500.00, 'debit card', 'completed'),
(4, 4, '2025-09-16', 2000.00, 'cash', 'completed'),
(5, 5, '2025-09-21', 36500.00, 'credit card', 'pending');



select * from customer;

select * from product;

select o.orderid, c.name as customer_name, o.orderdate, o.status, o.totalamount
from orders o
join customer c on o.customerid = c.customerid;

select oi.orderitemid, p.name as product_name, oi.quantity, oi.subtotal
from orderitem oi
join product p on oi.productid = p.productid
where oi.orderid = 1;

select pay.paymentid, o.orderid, c.name as customer_name, pay.amount, pay.status
from payment pay
join orders o on pay.orderid = o.orderid
join customer c on o.customerid = c.customerid;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     