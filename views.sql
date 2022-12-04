# Lista todas as profissoes e seus salarios liquidos
create view view_salario_liquido as
	select nome, total_liquido from profissao;

select * from view_salario_liquido;

#Lista os rendimentos de cada usuario
create view view_rendimentos as
	select usuario.id, usuario.nome, salario.total, salario_13.valor_13_salario, ferias.valor_ferias, 
    (salario.total + salario_13.valor_13_salario + ferias.valor_ferias) as total_rendimentos
    from rendimentos
    join usuario on usuario.id = rendimentos.usuario
	join salario on salario.id = rendimentos.salario
    join salario_13 on salario_13.id = rendimentos.salario_13
    join ferias on ferias.id = rendimentos.ferias;

select * from view_rendimentos;

# Lista as despesas de cada usuario
create view view_despesas as
	select usuario.nome, despesa.descricao, despesa.vencimento, despesa.valor_despesa, 
	(select sum(valor_despesa) from despesa where usuario = usuario.id) as total_despesas
    from usuario, despesa
	where usuario.id = despesa.usuario
	group by usuario.id, despesa.id;

select * from view_despesas;
