
--  V.
  insert into turma(id_turma, num_periodo, id_professor) VALUES(3, 20201, 3);
--  ERROR: Key (id_professor)=(3) is not present in table "professor".
 
-- VI.
  insert into turma(id_turma, num_periodo, id_professor) VALUES(3, 20202, 1);
--  SUCCESS!  
 
-- VII.
  UPDATE disciplina set id_disciplina=3 where nome_disciplina='BANCO DE DADOS I';
--  ERROR: Key (id_disciplina)=(1) is still referenced from table "turma".
 
-- VIII.
  UPDATE historico set num_faltas=0 where id_aluno=1 and id_turma=1;
--  SUCCESS!
 
-- IX.
  delete from aluno where nome_aluno='PEDRO';
--  SUCCESS!
 
-- X.
  delete from disciplina where nome_disciplina='BANCO DE DADOS II';
--  SUCCESS!
