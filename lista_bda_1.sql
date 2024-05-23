use avaliacao_22a;

/*Lista de Atividades:

Inserir um Novo Livro: Insira um livro chamado "As Crônicas de Nárnia", de C.S. Lewis, publicado em 1950, disponível, na categoria "Fantasia", com ISBN '978-0064471190', editora "HarperCollins", 768 páginas, idioma "Inglês".

Inserir Múltiplos Livros: Insira três livros de uma vez:

"Cem Anos de Solidão", Gabriel Garcia Marquez, 1967, disponível, "Ficção", '978-0241968581', "Penguin Books", 422, "Espanhol".
"Harry Potter e a Pedra Filosofal", J.K. Rowling, 1997, disponível, "Fantasia", '978-0439708180', "Bloomsbury", 309, "Inglês".
"O Senhor dos Anéis: A Sociedade do Anel", J.R.R. Tolkien, 1954, disponível, "Fantasia", '978-0618640157', "HarperCollins", 423, "Inglês".

Inserir Livro com Categoria Específica: Adicione um livro na categoria "História" com detalhes fictícios.

Atualizar Disponibilidade: Altere o status de disponibilidade de todos os livros publicados antes de 2000 para FALSE.

Atualizar Editora: Atualize a editora do livro "1984" para "Plume Books".

Atualizar Idioma: Mude o idioma de todos os livros da editora "Penguin Books" para "Inglês".

Atualizar Título: Altere o título do livro com ISBN '978-0439708180' para "Harry Potter e a Pedra Filosofal (Edição Especial)".

Deletar por Categoria: Delete todos os livros da categoria "Terror".

Deletar por Idioma e Ano: Delete todos os livros em "Francês" que foram publicados antes de 1970.

Deletar Livro Específico: Remova o livro com título "As Crônicas de Nárnia".

Deletar por Editora: Apague todos os livros publicados pela editora "Penguin Books".

Selecionar com WHERE: Encontre todos os livros cujo número de páginas é superior a 500.

Selecionar com GROUP BY: Agrupe os livros por categoria e conte quantos livros existem em cada categoria.

Selecionar com LIMIT: Liste os 5 primeiros livros adicionados à tabela.

Selecionar com SUM e COUNT: Calcule o total e a média de páginas dos livros na categoria "Drama".

Selecionar com AVG: Encontre a média de ano de publicação dos livros disponíveis.

Selecionar com MAX e MIN: Determine o livro mais recente e o mais antigo na tabela.

Selecionar com ORDER BY: Ordene todos os livros pelo ano de publicação em ordem decrescente.

Selecionar com UNION: Combine uma lista de todos os títulos de livros em "Inglês" com todos os títulos em "Português".

Selecionar Livros de um Autor Específico*/

#1

INSERT INTO Livros (titulo, autor, ano_publicacao, disponivel, categoria, isbn, editora, quantidade_paginas, idioma) VALUES
('As Crônicas de Nárnia', 'C.S. Lewis', 1950, TRUE, 'Fantasia', '978-0064471190', 'HarperCollins', 768, 'Frances');

#2
INSERT INTO Livros (titulo, autor, ano_publicacao, disponivel, categoria, isbn, editora, quantidade_paginas, idioma) VALUES
('Cem Anos de Solidão', 'Gabriel Garcia Marquez', 1967, TRUE, 'Ficção', '978-0241968581', 'Penguin Books', 422, 'Espanhol'),
('Harry Potter e a Pedra Filosofal', 'J.K. Rowling', 1997, TRUE, 'Fantasia', '978-0439708180', 'Bloomsbury', 309, 'Inglês'),
('O Senhor dos Anéis: A Sociedade do Anel', 'J.R.R. Tolkien', 1954, TRUE, 'Fantasia', '978-0618640157', 'HarperCollins', 423, 'Inglês');

#3

INSERT INTO Livros (titulo, autor, ano_publicacao, disponivel, categoria, isbn, editora, quantidade_paginas, idioma) VALUES
('Corrupt', 'Penelope Douglas', 2010, TRUE, 'história', '978-0064471180', 'Galera', 1180, 'Frances');

#4

UPDATE Livros
SET Disponibilidade = FALSE
WHERE Ano_Publicação < 2000;

#5

UPDATE Livros
SET Editora = 'Plume Books'
WHERE Título = '1984';

#6

UPDATE Livros
SET Idioma = 'Inglês'
WHERE Editora = 'Penguin Books';

#7

UPDATE Livros 
SET titulo = 'Harry Potter e a Pedra Filosofal (Edição Especial)'
WHERE isbn =  '978-0439708180';

#8

DELETE FROM Livros WHERE categoria = 'Terror';

#9

DELETE FROM Livros WHERE idioma and ano_publicacao = 'Francês' < '1970';

#10

DELETE FROM Livros WHERE titulo = 'As cronicas de Narnia';

#11
  
DELETE FROM Livros WHERE editora = 'Penguin Books';

#12

SELECT * FROM Livros
WHERE quantidade_paginas > '500';

#13
 
SELECT categoria, count(*) AS quantidade_paginas 
FROM Livros 
GROUP BY categoria;

#14

SELECT* 
FROM Livros
LIMIT 5;

#15

SELECT sum(quantidade_paginas), avg(quantidade_paginas)
FROM Livros
WHERE categoria ='Drama';

#17

SELECT MAX(ano_publicacao), MIN(ano_publicacao)
FROM Livros;

#18

SELECT*
FROM Livros
ORDER BY ano_publicacao DESC;

#19

(SELECT titulo FROM Livros WHERE idioma = 'Inglês')
UNION
(SELECT titulo FROM Livros WHERE idioma = 'Português');

#20
  
SELECT * FROM Livros 
WHERE autor = 'J.K. Rowling';



