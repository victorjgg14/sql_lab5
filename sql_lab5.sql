use sakila;


-- 1


select *
from
film
where film.title = "Hunchback Impossible";


select 
count(film_id) as HunchbackImpossible_copies
from
inventory
where inventory.film_id = 439
group by film_id;


-- 2

SELECT 
length as mas_largas_que_la_media
from 
film
where length >
(SELECT 
avg(film.length) as length_mean
FROM
film);

-- 3


select 
film.title,
concat(actor.first_name, ' ', actor.last_name) as actores
from
film
left join film_actor as act
on film.film_id = act.film_id
left join sakila.actor
on act.actor_id = actor.actor_id
where title = 'Alone Trip'
;




