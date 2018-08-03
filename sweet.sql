create database sweet_delight;

Create table DIM_LOJAS (
	cod_loja int(5) primary key,
	nome varchar(30) not null,
	tamanho float(6,2) not null
);

Create table DIM_PROMOCOES (
	cod_promocao int(5) primary key,
	promocao varchar(30) not null,
	desconto int(2) not null
);

Create table DIM_CLIENTES (
	cod_cliente int(5) primary key,
	nome varchar(30) not null,
	endereco varchar(50) not null
);

Create table DIM_PRODUTOS (
	cod_produto int(5) primary key,
	sabor varchar(30) not null,
	embalagem varchar(30) not null,
    custo float (6,2) not null,
    data_atualizacao datetime not null
);

Create table DIM_PERIODO (
	cod_periodo int(5) primary key,
	data_periodo date not null,
	fim_semana varchar(3) not null
);

Create table DIM_FUNCIONARIO (
	cod_funcionario int(5) primary key,
	nome_funcionario varchar(30) not null,
	tempo_funcionario int(2) not null,
    cidade_loja varchar (30) not null
);

Create table DIM_DELIVERY (
	cod_delivery int(5) primary key,
	app_delivery varchar(30) not null,
	avaliacao_delivery int(1) not null
);

Create table FATO_VENDAS (
	cod_loja int(5) references DIM_LOJAS (cod_loja),
	cod_promocao int(5) references DIM_PROMOCOES (cod_promocao),
    cod_cliente int(5) references DIM_CLIENTES (cod_cliente),
    cod_produto int(5) references DIM_PRODUTOS (cod_produto),
    cod_periodo int(5) references DIM_PERIODO (cod_periodo),
    cod_delivery int(5) references DIM_DELIVERY (cod_delivery),
    cod_funcionario int(5) references DIM_FUNCIONARIO (cod_funcionario),
    qde_vendida int(5),
    receita float (7,2),
    CMV float (6,2),
    margem float (4,2)
);


