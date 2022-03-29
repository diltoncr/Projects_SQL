use sakila;

select
	fil.title,
    fil.release_year,
    fil.rental_duration,
    fil.rating
from film fil
where fil.rental_duration<4 and fil.rating = "PG";

use sakila;

	update film
    set
		release_year = 2008
	where
		release_year = 2007