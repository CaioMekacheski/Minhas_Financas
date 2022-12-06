
#Database
create database if not exists minhas_financas;
use minhas_financas;

# Tabela Profissão
create table if not exists minhas_financas.profissao
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

# Tabela Usuario
create table if not exists minhas_financas.usuario
(
	id int not null auto_increment,
    nome varchar(45),
    senha varchar(100),
    primary key(id)
);

# Tabela Salário
create table if not exists minhas_financas.salario
(
	id int not null auto_increment,
    usuario int not null,
    profissao int not null,
    dias_trabalhados int,
    total decimal(9,2),
    primary key(id, usuario),
	foreign key(usuario) references usuario(id),
    foreign key(profissao) references profissao(id) 
);

# Tabela 13º Salário
create table if not exists minhas_financas.salario_13
(
	id int not null auto_increment,
    salario int not null,
    data_inicial date,
    data_final date,
    valor_13_salario decimal(9,2),
    primary key(id),
    foreign key(salario) references salario(id)
);

# Tabela Férias
create table if not exists minhas_financas.ferias
(
	id int not null auto_increment,
    salario int not null,
    data_inicial date,
    data_final date,
    valor_ferias decimal(9,2),
    primary key(id),
    foreign key(salario) references salario(id)
);

# Tabela Rendimentos
create table if not exists minhas_financas.rendimentos
(
	id int not null auto_increment,
    usuario int not null,
    salario int not null,
    salario_13 int not null,
    ferias int not null,
    total_rendimentos decimal(9,2),
    primary key(id, usuario),
	foreign key(usuario) references salario(usuario),
    foreign key(salario) references salario(id),
    foreign key(salario_13) references salario_13(id),
    foreign key(ferias) references ferias(id)
);

# Tabela Despesa
create table if not exists minhas_financas.despesa
(
	id int not null auto_increment,
    usuario int not null,
    descricao varchar(45),
    vencimento date,
    valor_despesa decimal(9,2),
    primary key(id),
    foreign key(usuario) references rendimentos(usuario)
);

# Tabela Lista Despesas
create table if not exists minhas_financas.lista_despesas
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
