-- write your queries here
--1--
SELECT * from owners FULL OUTER JOIN vehicles ON owner_id = owners.id;
--2--
 SELECT first_name, last_name, COUNT(*) as total_vehicles FROM owners JOIN vehicles ON owners.id = owner_id GROUP BY (first_name, last_name) ORDER BY owners.first_name;
 --3--
 SELECT o.first_name, o.last_name, ROUND(AVG(v.price)) AS average_price, COUNT(*) as count FROM owners o JOIN vehicles v ON o.id = v.owner_id GROUP BY (o.first_name, o.last_name) HAVING o.count > 1 AND ROUND(AVG(v.price)) > 10000 ORDER BY o.first_name DESC;