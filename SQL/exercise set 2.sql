select * from Classes;
select * from ships;
select * from battles;
select * from outcomes;

e) Find the names of the ships whose number
 of guns was the largest for those
  ships of the same bore.

SELECT s.ship_name
FROM ships s
JOIN classes c ON s.ship_class = c.classes_class
WHERE c.numGuns = (
    SELECT MAX(c2.numGuns)
    FROM ships s2
    JOIN classes c2 ON s2.ship_class = c2.classes_class
    WHERE c2.bore = c.bore
);


Select ships.ship_name from ships
join classes on ships.ship_class = classes.classes_class
where 



Find the battles in which ships of the Kongo class participated
Select battles_name from battles
join on battles.battles_name = outcomes.outcomes_battles
join on outcomes.outcomes_ship = ships.ship_name
where ships.ship_class = 'Kongo';

SELECT battles.battles_name
FROM battles
JOIN outcomes ON battles.battles_name = outcomes.outcomes_battles
JOIN ships ON outcomes.outcomes_ship = ships.ship_name
WHERE ships.ship_class = 'Kongo';


Find the names of the ships with a 16-inch bore. 

select ship_name from ships
join classes on ships.ship_class = classes.classes_class
where classes.bore >=16;

select * from classes 
group by country
having Max(numGuns);

SELECT country, MAX(numGuns) AS maxNumGuns
FROM classes
GROUP BY country
ORDER BY maxNumGuns DESC;

b) Find the classes of ships 
at least one of which was sunk in a battle. 

Select class from ships
Join outcomes on ships.name = outcomes.ship
where outcomes.result = 'Loose';

SELECT ships.ship_class
FROM ships
JOIN outcomes ON ships.ship_name = outcomes.outcomes_ship
WHERE outcomes.outcomes_result = 'Loose';
