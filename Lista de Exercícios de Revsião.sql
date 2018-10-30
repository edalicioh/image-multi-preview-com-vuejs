
CREATE TABLE pessoa(
	id_pessoa integer not null,
	nome varchar(191) not null,
	endereco varchar(255) not null,
	PRIMARY KEY (id_pessoa)
);
CREATE TABLE cliente(
	id_cliente integer not null,
	cpf varchar (11) not null,
	data_nasc timestamp not null,
	nome varchar(191) not null,
	PRIMARY KEY (id_cliente),
	FOREIGN KEY (id_cliente) references pessoa (id_pessoa)
);

CREATE TABLE venda(
	id_venda integer not null,
	data date not null,
	id_cliente integer not null,
	PRIMARY KEY (id_venda),
	FOREIGN KEY (id_cliente) references cliente (id_cliente)
	
);

CREATE TABLE fornecedor (
	id_fornecedor integer not null,
	cnpj varchar(14) not null,
	PRIMARY KEY (id_fornecedor),
	FOREIGN KEY (id_fornecedor) references pessoa (id_pessoa)
);

CREATE TABLE produto (
	id_produto integer not null,
	descricao  varchar(255) not null,
	preco double precision not null,
	id_fornecedor integer not null,
	FOREIGN KEY (id_fornecedor) references fornecedor (id_fornecedor),
	PRIMARY KEY (id_produto)	
);

CREATE TABLE produto_estoque(
	id_estoque integer not null,
	id_produto integer not null,
	PRIMARY KEY (id_estoque),
	FOREIGN KEY (id_produto) references produto (id_produto)
);

CREATE TABLE iten_venda(
	id_venda integer not null,
	id_estoque integer not null,
	PRIMARY KEY (id_venda),
	FOREIGN KEY (id_venda) 	 references venda (id_venda),
	FOREIGN KEY (id_estoque) references produto_estoque (id_estoque)
);

-- Pessoa

INSERT INTO pessoa (id_pessoa ,nome , endereco ) VALUES ( 1, 'Luiz Fernando', ' Rua das Flores' );
INSERT INTO pessoa (id_pessoa ,nome , endereco ) VALUES ( 2, 'Bruce Wayne', 'Mansão Wayne');
INSERT INTO pessoa (id_pessoa ,nome , endereco ) VALUES ( 3, 'Darth Vader ' , ' Força Negra' );
INSERT INTO pessoa (id_pessoa ,nome , endereco ) VALUES ( 4, 'Yoda ' , 'não ter' );
INSERT INTO pessoa (id_pessoa ,nome , endereco ) VALUES ( 5, 'Obi Wan Kenobi' , 'Terra Venus' );
INSERT INTO pessoa (id_pessoa ,nome , endereco ) VALUES ( 6, 'Barry Allen' , 'Central City' );
INSERT INTO pessoa (id_pessoa ,nome , endereco ) VALUES ( 7, 'Felicity Smoak' , 'Star City' );
INSERT INTO pessoa (id_pessoa ,nome , endereco ) VALUES ( 8, 'Solomon Grundy' , 'Cyrus Gold' );
INSERT INTO pessoa (id_pessoa ,nome , endereco ) VALUES ( 9, 'Clark Kent' , 'Metropolis' );
INSERT INTO pessoa (id_pessoa ,nome , endereco ) VALUES ( 10, 'Ted Mosby' , 'New York ' );

-- cliente

INSERT INTO cliente (id_cliente, nome, cpf, data_nasc ) VALUES ( 1, 'Luiz Fernando', 66666666666, '25/03/1989' );
INSERT INTO cliente (id_cliente, nome, cpf, data_nasc ) VALUES ( 3, 'Darth Vader' , 99999999999,'12/05/1910' );
INSERT INTO cliente (id_cliente, nome, cpf, data_nasc ) VALUES ( 6, 'Barry Allen' , 8888888888, '12/05/1990' );
INSERT INTO cliente (id_cliente, nome, cpf, data_nasc ) VALUES ( 7, ' Felicity Smoak' , 8888888888,'12/10/1990' );
INSERT INTO cliente (id_cliente, nome, cpf, data_nasc ) VALUES ( 9, 'Clark Kent' , 33333333333 , '05/05/1950' );

-- Fornecedor

INSERT INTO fornecedor (id_fornecedor, cnpj ) VALUES ( 2,  66666666666 );
INSERT INTO fornecedor (id_fornecedor, cnpj ) VALUES ( 4,  99999999999 );
INSERT INTO fornecedor (id_fornecedor, cnpj ) VALUES ( 5,  88888888888 );
INSERT INTO fornecedor (id_fornecedor, cnpj ) VALUES ( 8,  88888888888 );
INSERT INTO fornecedor (id_fornecedor, cnpj ) VALUES ( 10, 33333333333 );

-- Produtos

INSERT INTO produto (id_produto, descricao, preco, id_fornecedor ) VALUES ( 1, 'ESPADA', 	39.60 ,  2 );
INSERT INTO produto (id_produto, descricao, preco, id_fornecedor ) VALUES ( 2, 'Falconete', 	12.60 ,  4 );
INSERT INTO produto (id_produto, descricao, preco, id_fornecedor ) VALUES ( 3, 'TANQEE', 	5000.03, 5 );
INSERT INTO produto (id_produto, descricao, preco, id_fornecedor ) VALUES ( 4, 'KATANA', 	12.56 ,  8 );
INSERT INTO produto (id_produto, descricao, preco, id_fornecedor ) VALUES ( 5, 'Alabarda', 	200.30 , 10 );
INSERT INTO produto (id_produto, descricao, preco, id_fornecedor ) VALUES ( 6, 'Cotó', 		156.98 , 2 );
INSERT INTO produto (id_produto, descricao, preco, id_fornecedor ) VALUES ( 7, 'Mangual', 	58.90 ,  4 );
INSERT INTO produto (id_produto, descricao, preco, id_fornecedor ) VALUES ( 8, 'Hauberk', 	88.65 ,  2 );
INSERT INTO produto (id_produto, descricao, preco, id_fornecedor ) VALUES ( 9, 'Estrela da Manhã', 66.58,10 );

-- Vendas

INSERT INTO venda (id_venda, id_cliente , data ) VALUES ( 1,  1, '15/05/2015' );
INSERT INTO venda (id_venda, id_cliente , data ) VALUES ( 2,  3, '15/05/2015' );
INSERT INTO venda (id_venda, id_cliente , data ) VALUES ( 3,  6, '15/05/2015' );
INSERT INTO venda (id_venda, id_cliente , data ) VALUES ( 4,  7, '15/05/2015' );
INSERT INTO venda (id_venda, id_cliente , data ) VALUES ( 5,  9, '15/05/2015' );
INSERT INTO venda (id_venda, id_cliente , data ) VALUES ( 6,  1, '16/05/2015' );
INSERT INTO venda (id_venda, id_cliente , data ) VALUES ( 7,  3, '17/05/2015' );
INSERT INTO venda (id_venda, id_cliente , data ) VALUES ( 8,  6, '18/05/2015' );
INSERT INTO venda (id_venda, id_cliente , data ) VALUES ( 9,  7, '19/05/2015' );
INSERT INTO venda (id_venda, id_cliente , data ) VALUES ( 10, 9, '20/05/2015' );
INSERT INTO venda (id_venda, id_cliente , data ) VALUES ( 11, 1, '17/05/2015' );
INSERT INTO venda (id_venda, id_cliente , data ) VALUES ( 12, 3, '18/05/2015' );
INSERT INTO venda (id_venda, id_cliente , data ) VALUES ( 13, 6, '15/05/2015' );
INSERT INTO venda (id_venda, id_cliente , data ) VALUES ( 14, 7, '17/05/2015' );
INSERT INTO venda (id_venda, id_cliente , data ) VALUES ( 15, 9, '18/05/2017' );
INSERT INTO venda (id_venda, id_cliente , data ) VALUES ( 16, 1, '15/05/2017' );
INSERT INTO venda (id_venda, id_cliente , data ) VALUES ( 17, 3, '15/05/2017' );
INSERT INTO venda (id_venda, id_cliente , data ) VALUES ( 18, 6, '15/05/2017' );
INSERT INTO venda (id_venda, id_cliente , data ) VALUES ( 19, 7, '15/05/2017' );
INSERT INTO venda (id_venda, id_cliente , data ) VALUES ( 20, 9, '15/05/2017' );
INSERT INTO venda (id_venda, id_cliente , data ) VALUES ( 21, 1, '16/05/2017' );
INSERT INTO venda (id_venda, id_cliente , data ) VALUES ( 22, 3, '17/05/2017' );
INSERT INTO venda (id_venda, id_cliente , data ) VALUES ( 23, 6, '18/05/2017' );
INSERT INTO venda (id_venda, id_cliente , data ) VALUES ( 24, 7, '19/05/2017' );
INSERT INTO venda (id_venda, id_cliente , data ) VALUES ( 25, 9, '20/05/2017' );
INSERT INTO venda (id_venda, id_cliente , data ) VALUES ( 26, 1, '18/05/2017' );
INSERT INTO venda (id_venda, id_cliente , data ) VALUES ( 27, 3, '19/05/2017' );
INSERT INTO venda (id_venda, id_cliente , data ) VALUES ( 28, 6, '15/05/2017' );
INSERT INTO venda (id_venda, id_cliente , data ) VALUES ( 29, 7, '17/05/2017' );
INSERT INTO venda (id_venda, id_cliente , data ) VALUES ( 30, 9, '18/05/2017' );

-- Produto do Estoque

INSERT INTO produto_estoque (id_produto , id_estoque ) VALUES ( 1 , 1 );
INSERT INTO produto_estoque (id_produto , id_estoque ) VALUES ( 2 , 2 );
INSERT INTO produto_estoque (id_produto , id_estoque ) VALUES ( 3 , 3 );
INSERT INTO produto_estoque (id_produto , id_estoque ) VALUES ( 4 , 4 );
INSERT INTO produto_estoque (id_produto , id_estoque ) VALUES ( 5 , 5 );
INSERT INTO produto_estoque (id_produto , id_estoque ) VALUES ( 6 , 6 );
INSERT INTO produto_estoque (id_produto , id_estoque ) VALUES ( 7 , 7 );
INSERT INTO produto_estoque (id_produto , id_estoque ) VALUES ( 8 , 8 );
INSERT INTO produto_estoque (id_produto , id_estoque ) VALUES ( 9 , 9 );
INSERT INTO produto_estoque (id_produto , id_estoque ) VALUES ( 1 , 10 );
INSERT INTO produto_estoque (id_produto , id_estoque ) VALUES ( 2 , 11 );
INSERT INTO produto_estoque (id_produto , id_estoque ) VALUES ( 3 , 12 );
INSERT INTO produto_estoque (id_produto , id_estoque ) VALUES ( 4 , 13 );
INSERT INTO produto_estoque (id_produto , id_estoque ) VALUES ( 5 , 14 );
INSERT INTO produto_estoque (id_produto , id_estoque ) VALUES ( 6 , 15 );
INSERT INTO produto_estoque (id_produto , id_estoque ) VALUES ( 7 , 16 );
INSERT INTO produto_estoque (id_produto , id_estoque ) VALUES ( 8 , 17 );
INSERT INTO produto_estoque (id_produto , id_estoque ) VALUES ( 9 , 18 );
INSERT INTO produto_estoque (id_produto , id_estoque ) VALUES ( 1 , 19 );
INSERT INTO produto_estoque (id_produto , id_estoque ) VALUES ( 2 , 20 );
INSERT INTO produto_estoque (id_produto , id_estoque ) VALUES ( 3 , 21 );
INSERT INTO produto_estoque (id_produto , id_estoque ) VALUES ( 4 , 22 );
INSERT INTO produto_estoque (id_produto , id_estoque ) VALUES ( 5 , 23 );
INSERT INTO produto_estoque (id_produto , id_estoque ) VALUES ( 6 , 24 );
INSERT INTO produto_estoque (id_produto , id_estoque ) VALUES ( 7 , 25 );
INSERT INTO produto_estoque (id_produto , id_estoque ) VALUES ( 8 , 26 );
INSERT INTO produto_estoque (id_produto , id_estoque ) VALUES ( 9 , 27 );
INSERT INTO produto_estoque (id_produto , id_estoque ) VALUES ( 1 , 28 );
INSERT INTO produto_estoque (id_produto , id_estoque ) VALUES ( 2 , 29 );
INSERT INTO produto_estoque (id_produto , id_estoque ) VALUES ( 3 , 30 );
INSERT INTO produto_estoque (id_produto , id_estoque ) VALUES ( 4 , 31 );
INSERT INTO produto_estoque (id_produto , id_estoque ) VALUES ( 5 , 32 );
INSERT INTO produto_estoque (id_produto , id_estoque ) VALUES ( 6 , 33 );
INSERT INTO produto_estoque (id_produto , id_estoque ) VALUES ( 7 , 34 );
INSERT INTO produto_estoque (id_produto , id_estoque ) VALUES ( 8 , 35 );

-- Itens Vendas

INSERT INTO iten_venda (id_venda , id_estoque ) VALUES ( 1 , 1 );
INSERT INTO iten_venda (id_venda , id_estoque ) VALUES ( 2 , 2 );
INSERT INTO iten_venda (id_venda , id_estoque ) VALUES ( 3 , 3 );
INSERT INTO iten_venda (id_venda , id_estoque ) VALUES ( 4 , 4 );
INSERT INTO iten_venda (id_venda , id_estoque ) VALUES ( 5 , 5 );
INSERT INTO iten_venda (id_venda , id_estoque ) VALUES ( 6 , 6 );
INSERT INTO iten_venda (id_venda , id_estoque ) VALUES ( 7 , 7 );
INSERT INTO iten_venda (id_venda , id_estoque ) VALUES ( 8 , 8 );
INSERT INTO iten_venda (id_venda , id_estoque ) VALUES ( 9 , 9 );
INSERT INTO iten_venda (id_venda , id_estoque ) VALUES ( 10 , 10 );
INSERT INTO iten_venda (id_venda , id_estoque ) VALUES ( 11 , 11 );
INSERT INTO iten_venda (id_venda , id_estoque ) VALUES ( 12 , 12 );
INSERT INTO iten_venda (id_venda , id_estoque ) VALUES ( 13 , 13 );
INSERT INTO iten_venda (id_venda , id_estoque ) VALUES ( 14 , 14 );
