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
	foreign key (id_fornecedor) references fornecedor (id_fornecedor),
	primary key (id_produto)	
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



INSERT INTO cliente (id_cliente, nome, cpf, data_nasc ) VALUES ( 1, 'Luiz Fernando', 66666666666, '25/03/1989' );
INSERT INTO cliente (id_cliente, nome, cpf, data_nasc ) VALUES ( 3, 'Darth Vader' , 99999999999,'12/05/1910' );
INSERT INTO cliente (id_cliente, nome, cpf, data_nasc ) VALUES ( 6, 'Barry Allen' , 8888888888, '12/05/1990' );
INSERT INTO cliente (id_cliente, nome, cpf, data_nasc ) VALUES ( 7, ' Felicity Smoak' , 8888888888,'12/10/1990' );
INSERT INTO cliente (id_cliente, nome, cpf, data_nasc ) VALUES ( 9, 'Clark Kent' , 33333333333 , '05/05/1950' );




INSERT INTO fornecedor (id_fornecedor, cnpj ) VALUES ( 2,  66666666666 );
INSERT INTO fornecedor (id_fornecedor, cnpj ) VALUES ( 4,  99999999999 );
INSERT INTO fornecedor (id_fornecedor, cnpj ) VALUES ( 5,  88888888888 );
INSERT INTO fornecedor (id_fornecedor, cnpj ) VALUES ( 8,  88888888888 );
INSERT INTO fornecedor (id_fornecedor, cnpj ) VALUES ( 10, 33333333333 );



INSERT INTO produto (id_produto, descricao, preco, id_fornecedor ) VALUES ( 1, 'ESPADA', 	39.60 ,  2 );
INSERT INTO produto (id_produto, descricao, preco, id_fornecedor ) VALUES ( 2, 'Falconete', 	12.60 ,  4 );
INSERT INTO produto (id_produto, descricao, preco, id_fornecedor ) VALUES ( 3, 'TANQEE', 	5000.03, 5 );
INSERT INTO produto (id_produto, descricao, preco, id_fornecedor ) VALUES ( 4, 'KATANA', 	12.56 ,  8 );
INSERT INTO produto (id_produto, descricao, preco, id_fornecedor ) VALUES ( 5, 'Alabarda', 	200.30 , 10 );
INSERT INTO produto (id_produto, descricao, preco, id_fornecedor ) VALUES ( 6, 'Cotó', 		156.98 , 2 );
INSERT INTO produto (id_produto, descricao, preco, id_fornecedor ) VALUES ( 7, 'Mangual', 	58.90 ,  4 );
INSERT INTO produto (id_produto, descricao, preco, id_fornecedor ) VALUES ( 8, 'Hauberk', 	88.65 ,  2 );
INSERT INTO produto (id_produto, descricao, preco, id_fornecedor ) VALUES ( 9, 'Estrela da Manhã', 66.58,10 );






















