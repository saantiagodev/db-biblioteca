#SELECT * FROM usuarios;
#INSERT INTO usuarios (nome, email, data_nascimento) VALUES
#('Maru', 'batzu@gmail.com', '1982-09-01'),
#('Cinna', 'cinna@gmail.com', '2005-01-27'),
#('Masyu', 'masyuumaru@email.com', '2014-01-09'),
#('Keroppi', 'keroero@gmail.com', '2011-01-01');

#ALTER TABLE livros MODIFY COLUMN ano_publicacao VARCHAR(4);

SELECT * FROM autor JOIN livros ON livros.id_autor=autor.id_autor;

#SELECT * FROM autor a, livros l WHERE a.idautor = i.id_autor;