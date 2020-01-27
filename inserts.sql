-- INSERT DEPARTAMENTO
insert into departamento values (null, 'Desenvolvimento', 1);
insert into departamento values (null, 'Administracao', 2);
insert into departamento values (null, 'Infra', 3);
insert into departamento values (null, 'Suporte', 4);
insert into departamento values (null, 'RH', 5);

-- INSERT FUNCIONÁRIO
insert into funcionario values (null, 'Funcionario 1-1', 'email11@firma.com', '1111-1111', 1);
insert into funcionario values (null, 'Funcionario 1-2', 'email12@firma.com', '1111-1111', 1);
insert into funcionario values (null, 'Funcionario 2-1', 'email21@firma.com', '1111-1111', 2);
insert into funcionario values (null, 'Funcionario 2-2', 'email22@firma.com', '1111-1111', 2);
insert into funcionario values (null, 'Funcionario 3-1', 'email31@firma.com', '1111-1111', 3);
insert into funcionario values (null, 'Funcionario 3-2', 'email32@firma.com', '1111-1111', 3);
insert into funcionario values (null, 'Funcionario 4-1', 'email41@firma.com', '1111-1111', 4);
insert into funcionario values (null, 'Funcionario 4-2', 'email42@firma.com', '1111-1111', 4);
insert into funcionario values (null, 'Funcionario 5-1', 'email51@firma.com', '1111-1111', 5);
insert into funcionario values (null, 'Funcionario 5-2', 'email52@firma.com', '1111-1111', 5);
insert into funcionario values (null, 'Funcionario 6-1', 'email61@firma.com', '1111-1111', null);
insert into funcionario values (null, 'Funcionario 6-2', 'email62@firma.com', '1111-1111', null);


-- INSERT PROJETO
insert into projeto values (12, 'Projeto 1', '2020-01-01', 1, 'Cliente 1');
insert into projeto values (22, 'Projeto 2', '2020-01-01', 2, 'Cliente 2');
insert into projeto values (33, 'Projeto 3', '2020-01-01', 3, 'Cliente 3');

-- INSERT PARTICIPA
insert into participa values (1, 12, '2020-01-01','2020-12-31');
insert into participa values (5, 12, '2020-01-01','2020-12-31');
insert into participa values (8, 12, '2020-01-01','2020-12-31');
insert into participa values (2, 22, '2020-01-10','2020-12-31');
insert into participa values (6, 22, '2020-01-10','2020-12-31');
insert into participa values (7, 22, '2020-01-10','2020-12-31');
insert into participa values (3, 33, '2020-01-20','2020-12-31');
insert into participa values (9, 33, '2020-01-20','2020-12-31');

