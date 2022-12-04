delimiter $$

# Procedimento que exibe todas as informações financeiras pelo id do usuário
create procedure totais_usuario(user_id int)
begin
    select usuario.id, usuario.nome, 
    profissao.nome 
    as profissao, 
    salario.total 
    as salario, 
    salario_13.valor_13_salario, ferias.valor_ferias, 
    (salario.total + salario_13.valor_13_salario + ferias.valor_ferias) 
    as rendimento_total,
    calcula_despesa(user_id) 
    as despesa_total, 
    ((salario.total + salario_13.valor_13_salario + ferias.valor_ferias) - calcula_despesa(user_id)) 
    as saldo
    from rendimentos
    join usuario on usuario.id = user_id
	join salario on salario.id = rendimentos.salario
    join profissao on profissao.id = salario.profissao
    join salario_13 on salario_13.id = rendimentos.salario_13
    join ferias on ferias.id = rendimentos.ferias
    where rendimentos.usuario = user_id;
end$$

delimiter ;

call totais_usuario(2);
