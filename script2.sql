INSERT INTO Pessoa(idPessoa,nome,endereco,cidade,estado,telefone,email)
  VALUES (NEXT VALUE FOR orderPessoa, 'Alfredo','Rua A, 100','São Paulo','SP','3891-1000','alfredo@gmail.com'),
    (NEXT VALUE FOR orderPessoa, 'Bruno','Rua B, 200','Rio de Janeiro','RJ','3891-2000','bruno@gmail.com'),
    (NEXT VALUE FOR orderPessoa, 'Carla','Rua C, 300','Belo Horizonte','MG','3891-3000','carla@gmail.com'),
    (NEXT VALUE FOR orderPessoa, 'Domingos Supermercado','Rua D, 400','Curitiba','PR','3891-4000','domingos@gmail.com'),
    (NEXT VALUE FOR orderPessoa, 'Escritório 5','Rua E, 500','Vitoria','ES','3891-5000','escritorio@gmail.com');

INSERT INTO PessoaFisica(Pessoa_idPessoa,cpf)
  VALUES (1,'11111111111'),
    (2,'22222222222'),
    (3,'33333333333');

INSERT INTO PessoaJuridica(Pessoa_idPessoa,cnpj)
  VALUES (4,'44444444444444'),
    (5,'55555555555555');

INSERT INTO Usuario(loginName,senha)
  VALUES ('op1','op1'),
    ('op2','op2');

INSERT INTO Produto(nome,quantidade,precoVenda)
  VALUES ('Arroz',10,'15.00'),
    ('Feijão',20,'8.00'),
    ('Farofa',25,'5.00');

INSERT INTO Movimento(Usuario_idUsuario,Pessoa_idPessoa,Produto_idProduto,quantidade,tipo,precoUnitario)
  VALUES (1,1,1,10,'E',15.00),
    (2,2,2,20,'S',8.00),
    (1,3,3,30,'E',5.00);