CREATE TABLE usuarios (
	id_usuario INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(150) NOT NULL,
    email VARCHAR(150) UNIQUE,
    data_nascimento DATE,
    idade INT
);

CREATE TABLE livros (
	id_livro INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(150),
    descricao TEXT,
    id_autor INT,
    ano_publicacao YEAR,
    disponivel BOOLEAN DEFAULT TRUE,
    FOREIGN KEY (id_autor) REFERENCES autor(id_autor) ON DELETE CASCADE
    
    /*
    ON DELETE CASCADE faz com que os registros da tabela filha 
    sejam automaticamente excluídos
    */
);


CREATE TABLE autor (
	id_autor int PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(150) NOT NULL,
    sobrenome VARCHAR(150),
    nacionalidade VARCHAR(70)
);

CREATE TABLE emprestimo (
	id_emprestimo INT PRIMARY KEY AUTO_INCREMENT,
    id_usuario INT,
    id_livro INT,
    data_emprestimo DATE DEFAULT CURRENT_TIMESTAMP,
    data_devolucao DATE NULL,
    FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario),
    FOREIGN KEY (id_livro) REFERENCES livros(id_livro)
);