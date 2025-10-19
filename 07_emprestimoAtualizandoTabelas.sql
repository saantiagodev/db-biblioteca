SELECT * FROM emprestimo;
INSERT INTO emprestimo (id_usuario, id_livro, data_emprestimo, 
data_devolucao) VALUES (1, 2, '2025-02-19', '2025-01-21');

INSERT INTO emprestimo (id_usuario, id_livro, data_emprestimo,
data_devolucao) VALUES (2, 3, '2025-02-19', '2025-02-21');

/*
UPDATE é usado para atualizar valores em uma tabela, nesse caso,
queremos fazer alterações nos dados da tabela LIVROS

SET é utilizado para especificar qual coluna você deseja atualizar 
e qual valor você quer atribuir a ela
estou autalizando a coluna DISPONIVEL

Usamos o WHERE para especificar a condição que define quais registros
seram atualizados
! o WHERE preicsa ser usado, senão todas os registros na tabela livros
seram atualizados
*/
UPDATE livros SET disponivel = FALSE WHERE id_livro = 2;
UPDATE livros SET disponivel = FALSE WHERE id_livro = 3;

