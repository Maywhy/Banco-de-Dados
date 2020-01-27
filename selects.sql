					-- PERGUNTAS PARA CONSULTAS
-- 1) Quantos funcionarios temos na empresa?
-- a funcao count contatará a quantidade de funcionários que existe no banco
-- modo 1 para consultar a quantidade
select count(idFunc) from funcionario;

-- modo 1 para consultar a quantidade
select nomefunc, nomedepto from funcionario inner join departamento using (iddepto); -- inner join é usado para os registros que obedecem as relações

-- 2) Existem funcionarios sem departamento atribuido? quatos são?
select count (idFunc) as funcionario_sem_depto from funcionario where idDepto is null;

-- 3) Existem funcionarios sem departamento atribuido? quais são?
select nomefunc as funcionario_sem_depto from funcionario where idDepto is null;

-- 4) Quais funcionários estão trabalhando em quais projetos?
select nomefunc, titulo from funcionario inner join participa using (idfunc) inner join projeto using (idproj);

-- 5) Quais departamentos da empresa estão envolvidos nos projetos?
select nomeproj, count(nomeDepto) from funcionario inner join departamento;

-- 6) Quantos funcionários não estão alocados em projetos?
select nomefunc, titulo from funcionario inner join participa using (idfunc) inner join projeto using (idproj);


-- 7) Quais funcionários não estão alocados em projetos?


-- 8) Há quanto tempo cada funcionário está alocado em cada projeto?

select * from projeto;
