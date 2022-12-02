create database minhas_financas;
use minhas_financas;

create table profissao
(
	id int not null auto_increment,
    nome varchar(45),
    valor_base decimal(9,2),
    adicional decimal(9,2),
    total_bruto decimal(9,2),
    desconto decimal(9,2),
    total_liquido decimal(9,2),
    primary key(id)
);

create table salario
(
	id int not null auto_increment,
    profissao int not null,
    dias_trabalhados int,
    total decimal(9,2),
    primary key(id),
    foreign key(profissao) references profissao(id) 
);

create table salario_13
(
	id int not null auto_increment,
    salario int not null,
    data_inicial date,
    data_final date,
    valor_13_salario decimal(9,2),
    primary key(id),
    foreign key(salario) references salario(id)
);

create table ferias
(
	id int not null auto_increment,
    salario int not null,
    data_inicial date,
    data_final date,
    valor_ferias decimal(9,2),
    primary key(id),
    foreign key(salario) references salario(id)
);

create table rendimentos
(
	id int not null auto_increment,
    salario int not null,
    salario_13 int not null,
    ferias int not null,
    total_rendimentos decimal(9,2),
    primary key(id),
    foreign key(salario) references salario(id),
    foreign key(salario_13) references salario_13(id),
    foreign key(ferias) references ferias(id)
);

create table despesa
(
	id int not null auto_increment,
    descricao varchar(45),
    vencimento date,
    valor_despesa decimal(9,2),
    primary key(id)
);

create table lista_despesas
(
	id int not null auto_increment,
    despesa int not null,
    rendimentos int not null,
    total decimal(9,2),
    diferenca decimal(9,2),
    primary key(id),
    foreign key(despesa) references despesa(id),
    foreign key(rendimentos) references rendimentos(id)
);
