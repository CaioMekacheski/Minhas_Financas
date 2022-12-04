delimiter $$

# Trigger que aplica criptografia do tipo md5 em novas senhas cadastradas
	create trigger aplica_md5 before insert
	on usuario
	for each row
	begin
		set new.senha = md5(new.senha);
	end$$

delimiter ;

select * from usuario;
