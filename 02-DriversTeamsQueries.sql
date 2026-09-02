INSERT INTO teams (teamid, teamname, teamprincipal)
VALUES
('MCLAREN', 'McLaren Mastercard Formula 1 Team', 'Andrea Stella'),
('MERCEDES', 'Mercedes AMG Petronas Formula 1 Team', 'Toto Wolff'),
('REDBULL', 'Oracle Red Bull Racing', 'Laurent Mekies'),
('FERRARI', 'Scuderia Ferrari', 'Fred Vasseur'),
('WILLIAMS', 'Atlassian Williams F1 Team', 'James Vowles'),
('VCARB', 'Visa Cash App Racing Bulls F1 Team', 'Laurent Mekies'),
('ASTONMARTIN', 'Aston Martin Aramco Formula 1 Team', 'Mike Krack'),
('HAAS', 'Haas Formula 1 Team', 'Ayao Komatsu'),
('AUDI', 'Audi Formula 1 Team', 'Andreas Seidl'),
('ALPINE', 'BWT Alpine Formula 1 Team', 'Bruno Famin'),
('CADILLAC', 'Cadillac Formula 1 Team','');

INSERT INTO drivers (driverid, drivername, drivernum, driverhc, teamid)
VALUES
('NOR','Lando Norris',1,'United Kingdom','MCLAREN'),
('PIA','Oscar Piastri',81,'Australia','MCLAREN'),
('RUS','George Russell',63,'United Kingdom','MERCEDES'),
('ANT','Kimi Antonelli',12,'Italy','MERCEDES'),
('VER','Max Verstappen',3,'Netherlands','REDBULL'),
('HAD','Isack Hadjar',6,'France','REDBULL'),
('LEC','Charles Leclerc',16,'Monaco','FERRARI'),
('HAM','Lewis Hamilton',44,'United Kingdom','FERRARI'),
('SAI','Carlos Sainz',55,'Spain','WILLIAMS'),
('ALB','Alexander Albon',23,'Thailand','WILLIAMS'),
('LAW','Liam Lawson',30,'New Zealand','VCARB'),
('LIN','Arvid Lindblad',41,'United Kingdom','VCARB'),
('ALO','Fernando Alonso',14,'Spain','ASTONMARTIN'),
('STR','Lance Stroll',18,'Canada','ASTONMARTIN'),
('OCO','Esteban Ocon',31,'France','HAAS'),
('BEA','Oliver Bearman',87,'United Kingdom','HAAS'),
('HUL','Nico Hülkenberg',27,'Germany','AUDI'),
('BOR','Gabriel Bortoleto',5,'Brazil','AUDI'),
('GAS','Pierre Gasly',10,'France','ALPINE'),
('COL','Franco Colapinto',43,'Argentina','ALPINE'),
('PER','Sergio Pérez',11,'Mexico','CADILLAC'),
('BOT','Valtteri Bottas',77,'Finland','CADILLAC');

-- Sample queries
SELECT drivername, drivernum FROM drivers WHERE teamid='MCLAREN';
SELECT teamprincipal from teams;
SELECT drivername, teamid FROM drivers WHERE drivernum>=10 AND drivernum<=20;
SELECT drivernum, driverid FROM drivers WHERE driverid BETWEEN 'ALB' AND 'P%' ORDER BY 2;
SELECT * FROM drivers ORDER BY teamid ASC;
SELECT drivername, driverid, drivernum FROM drivers ORDER BY 3 DESC; --uses the third column
SELECT teamid, count(driverid) FROM drivers GROUP BY teamid ORDER BY teamid DESC;

-- insert Yuki Tsunoda
INSERT INTO drivers(driverid, drivername, drivernum, driverhc, teamid)
VALUES ('TSU', 'Yuki Tsunoda', 22, 'Japan', 'VCARB');

SELECT driverhc, count(driverhc) AS count FROM drivers
GROUP BY driverhc HAVING count(driverhc)>=2 ORDER BY count(driverhc) DESC LIMIT 2 OFFSET 1;
SELECT driverid FROM drivers WHERE driverhc='Spain';

