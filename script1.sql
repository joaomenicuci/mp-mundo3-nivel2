USE Loja;
GO

CREATE SEQUENCE orderPessoa
AS INT
START WITH 1
INCREMENT BY 1;

CREATE TABLE Pessoa(
  idPessoa INTEGER NOT NULL,
  nome VARCHAR(255),
  endereco VARCHAR(255),
  cidade VARCHAR(255),
  estado CHAR(2),
  telefone VARCHAR(15),
  email VARCHAR(255),
  CONSTRAINT Pessoa PRIMARY KEY CLUSTERED(idPessoa ASC)
);
GO

CREATE TABLE PessoaFisica(
  Pessoa_idPessoa INTEGER NOT NULL,
  cpf VARCHAR(11) NOT NULL,
  CONSTRAINT PessoaFisica PRIMARY KEY CLUSTERED(Pessoa_idPessoa ASC),
  CONSTRAINT Pessoa_PessoaFisica FOREIGN KEY(Pessoa_idPessoa) REFERENCES Pessoa(idPessoa)
    ON UPDATE CASCADE
    ON DELETE CASCADE
);
GO

CREATE TABLE PessoaJuridica(
  Pessoa_idPessoa INTEGER NOT NULL,
  cnpj VARCHAR(14) NOT NULL,
  CONSTRAINT PessoaJuridica PRIMARY KEY CLUSTERED(Pessoa_idPessoa ASC),
  CONSTRAINT Pessoa_PessoaJuridica FOREIGN KEY(Pessoa_idPessoa) REFERENCES Pessoa(idPessoa)
    ON UPDATE CASCADE
    ON DELETE CASCADE
);
GO

CREATE TABLE Usuario(
  idUsuario INTEGER NOT NULL IDENTITY,
  loginName VARCHAR(20) NOT NULL,
  senha VARCHAR(20) NOT NULL,
  CONSTRAINT CPK_Usuario PRIMARY KEY CLUSTERED(idUsuario ASC)
);
GO

CREATE TABLE Produto(
  idProduto INTEGER NOT NULL IDENTITY,
  nome VARCHAR(255) NOT NULL,
  quantidade INTEGER,
  precoVenda NUMERIC,
  CONSTRAINT Produto PRIMARY KEY CLUSTERED(idProduto ASC)
);
GO

CREATE TABLE Movimento(
  idMovimento INTEGER  NOT NULL IDENTITY,
  Usuario_idUsuario INTEGER NOT NULL,
  Pessoa_idPessoa INTEGER NOT NULL,
  Produto_idProduto INTEGER NOT NULL,
  quantidade INTEGER,
  tipo CHAR(1),
  precoUnitario NUMERIC,
  CONSTRAINT Movimento PRIMARY KEY CLUSTERED(idMovimento ASC),
  CONSTRAINT Usuario_Movimento FOREIGN KEY(Usuario_idUsuario) REFERENCES Usuario(idUsuario)
    ON UPDATE CASCADE
    ON DELETE CASCADE,
  CONSTRAINT Pessoa_Movimento FOREIGN KEY(Pessoa_idPessoa) REFERENCES Pessoa(idPessoa)
    ON UPDATE CASCADE
    ON DELETE CASCADE,
  CONSTRAINT Produto_Movimento FOREIGN KEY(Produto_idProduto) REFERENCES Produto(idProduto)
    ON UPDATE CASCADE
    ON DELETE CASCADE
);
GO
