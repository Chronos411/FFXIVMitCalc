update roles
set name = 'Healer'
where id = 1;

insert into Actions (name)
values	('Temperence'),
		('Asylum')

insert into JobActions (actionid, jobid)
select a.id as actionid, j.id as jobid
from Jobs j cross join Actions a


insert into Rules (actionid, info, category, val)
values	(1, 'Increases healing magic potency by 20%, while reducing damage taken by self and all party members within a radius of 30 yalms by 10%. Duration: 20s', 'Percentage', .9),
		(2, 'Envelops a designated area in a veil of succor, granting healing over time to self and any party members who enter. Cure Potency: 100 Duration: 24s Additional Effect: Increases HP recovery via healing actions on party members in the designated area by 10%', 'Buff', 1.1)