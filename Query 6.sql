USE SYS;
CREATE TABLE pairs(
A int,
B int
);
insert into pairs values (1,2),(2,4),(2,1),(3,2),(4,2),(5,6),
(6,5),(7,8);
-- select * from pairs;
-- Delete duplicate pairs from table ie (2,1),(4,2) etc..

-- 1st way (JOIN METHOD)
select lt.* from pairs lt LEFT JOIN pairs rt ON lt.A = rt.B AND
lt.B = rt.A where rt.A is NULL OR lt.A <rt.A;

-- 2nd way (CORRELATED SUBQUERY)
select * from pairs p1 where not exists 
(select * from pairs p2 where p1.B = p2.A and p1.A = p2.B and p1.A > p2.A );


-- total values on joining from which we have to select(for understanding)
select * from pairs lt LEFT JOIN pairs rt ON lt.A = rt.B AND rt.A

-- 
