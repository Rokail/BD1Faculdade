-- Lista 7a

-- 1_ Luizinho
select nome_livro from livro l
join lista_livro li on l.cod_livro = li.cod_livro
join emprestimo em on li.cod_emprestimo = em.cod_emprestimo
join usuario u on em.cod_usuario = u.cod_usuario
where u.nome_usuario = 'Luizinho';

-- 2_
select distinct( nome_usuario ), nome_livro, nome_autor from usuario u
join emprestimo em on u.cod_usuario = em.cod_usuario
join lista_livro li on  em.cod_emprestimo = li.cod_emprestimo
join livro l on li.cod_livro = l.cod_livro
join autor a on l.cod_autor = a.cod_autor
where a.nome_autor = 'Fred Flintstone';
