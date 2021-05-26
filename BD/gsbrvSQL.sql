
/*3*/
select vis_matricule , tra_role 
from Travailler 
where tra_role like 'Délegué';


/*4*/
select vis_matricule , jjmmaa, tra_role 
from Travailler as t 
where tra_role like 'Délégué' and jjmmaa = 
	(select Max(jjmmaa) 
	from Travailler as t2 
	where t.vis_matricule = t2.vis_matricule);

/*5*/
select * 
from Travailler as t 
inner join Visiteur as v on t.vis_matricule = v.vis_matricule 
where tra_role like 'Délégué' and jjmmaa = 
	(select Max(jjmmaa) 
	from Travailler as t2 
	where t.vis_matricule = t2.vis_matricule 
	and vis_matricule = 'c14' 
	and vis_mdp = 'azerty');
/* 2eme requète avec b34 */
