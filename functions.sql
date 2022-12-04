delimiter $$

# Função que calcula o total de despesas pelo id do usuario 
create function calcula_despesa(user_id int)
returns decimal(9,2) deterministic
begin
	select sum(valor_despesa)
    into @total_despesas
    from despesa 
    where usuario = user_id 
    group by user_id;
    
    return @total_despesas;
end$$

delimiter ;
