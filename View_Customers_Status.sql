use sakila;
create view clients_Status as
select
	cus.customer_id,
    cus.first_name,
    pay.amount,
    'VIP' as status
from customer cus
join payment pay on
	cus.customer_id = pay.payment_id
    where pay.amount >=10.99
    
union
select
	cus.customer_id,
    cus.first_name,
    pay.amount,
    'NON VIP' as status
from customer cus
join payment pay on
	cus.customer_id = pay.payment_id
    where pay.amount <10.99
    order by amount desc;