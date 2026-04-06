-- Lista 3
-- A)
select cod_proposta, to_char(data_assembleia, 'DD/MM/YYYY') as Data
from proposta 
join assembleia on proposta.cod_assembleia = assembleia.cod_assembleia
where to_char(data_assembleia, 'DD/MM/YYYY') = '06/08/2010';

-- B)
select * from morador
order by morador.nome_morador;

-- C)
select nome_morador from morador m
inner join apartamento ap on m.cod_apto = ap.cod_apto
inner join predio p on ap.cod_predio = p.cod_predio
where p.nome_predio = 'Coqueiral';


-- D)
select nome_morador, nome_predio
from morador m
inner join apartamento ap
on m.cod_apto = ap.cod_apto
inner join predio p
on ap.cod_predio = p.cod_predio
order by 2;

-- E)
select nome_morador
from morador m
inner join apartamento ap
on m.cod_apto = ap.cod_apto
inner join predio p
on ap.cod_predio = p.cod_predio
where ap.numero_apto = '201' and
p.nome_predio = 'Laranjeiras';

--  
