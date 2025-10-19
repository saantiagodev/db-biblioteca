SELECT * FROM emprestimo e, usuarios u, livros l

/*
A cláusula WHERE é usada para definir as condições de junção 
entre as tabelas
*/
WHERE e.id_usuario = u.id_usuario AND e.id_livro = l.id_livro;

SELECT * FROM emprestimo e JOIN usuario u
ON e.id_usuario = u.id_usuario JOIN livros l ON
e.id_livro = l.id.livro;