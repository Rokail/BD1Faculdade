-- 1_ 
select to_char(dt_nasc_ator, 'mm') 
from tb_ator
where 
nome_ator = (select nome_ator from tb_ator where lower(nome_ator) = 'josh gad');

-- 2_
select nome_filme 
from tb_filme
where 
dt_lancamento = (select max(dt_lancamento) from tb_filme);

--8 - Quais atores participaram dos filmes em que o ator Josh Gad NAO participou?
select distinct nome_ator --retorna os atores que não estão nos filmes que ele não participou
from tb_ator x, tb_lista_ator l
where x.cod_ator = l.cod_ator
and l.cod_ator not in (select cod_ator -- retorna o filme que ele não participou
from tb_lista_ator
where cod_filme not in (select cod_filme --retorna os filme em que ele participou
from tb_ator x, tb_lista_ator l
where x.cod_ator = l.cod_ator
and lower(nome_ator) = 'josh gad'));

--9 - Qual ator participou do filme 'Os Vingadores' e não participou do filme
--'Vingadores: Guerra Infinita'?
select nome_ator
from tb_ator x, tb_lista_ator l, tb_filme f
where x.cod_ator = l.cod_ator
and l.cod_filme = f.cod_filme
and lower(nome_filme) = 'os vingadores'
and l.cod_ator not in (select cod_ator
from tb_lista_ator l, tb_filme f
where l.cod_filme = f.cod_filme
and lower(nome_filme) = 'vingadores: guerra infinita');