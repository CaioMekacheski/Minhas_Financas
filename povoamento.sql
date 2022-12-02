use minhas_financas;

insert into profissao
(nome, valor_base, adicional, total_bruto, desconto, total_liquido)
values
('Frentista', 1500.00, 500.00, 2000.00, 170.00, 1830.00),
('Programador Júnior', 2500.00, 625.00, 3125.00, 310.00, 2815.00),
('Marceneiro', 1800.00, 450.00, 2250.00, 220.00, 2030.00),
('Programador Senior', 7500.00, 1875.00, 9375.00, 910.00, 8465.00);

insert into salario
(profissao, dias_trabalhados, total)
values
(1, 30, (1830.00/30) * 30),
(2, 30, (2815.00/30) * 30),
(3, 45, (2030.00/30) * 45),
(4, 15, (8465.00/30) * 15);

insert into salario_13
(salario, data_inicial, data_final, valor_13_salario)
values
(1, '2015-01-01', '2016-01-01', (1830.00 / 12.0) * 12.0),
(2, '2016-07-01', '2017-06-30', (2815.00 / 12.0) * 11.0),
(3, '2018-03-15', '2018-12-30', (2030.00 / 12.0) * 9.0),
(4, '2020-11-15', '2021-11-30', (8465.00 / 12.0) * 12.0);

insert into ferias
(salario, data_inicial, data_final, valor_ferias)
values
(1, '2015-01-01', '2016-01-01', ((1830.00 / 12.0) * 12.0) + (1830.00 / 3)),
(2, '2016-07-01', '2017-06-30', ((2815.00 / 12.0) * 11.0) + (2815.00 / 3)),
(3, '2018-03-15', '2018-12-30', ((2030.00 / 12.0) * 9.0) + (2030.00 / 3)),
(4, '2020-11-15', '2021-11-30', ((8465.00 / 12.0) * 12.0) + (8465.00 / 3));

insert into rendimentos
(salario, salario_13, ferias)
values
(1, 1, 1, 6100.00),
(2, 2, 2, 8914.17),
(3, 3, 3, 6766.67),
(4, 4, 4, 23984.17);

insert into despesa
(descricao, vencimento, valor_despesa)
values
('Água', '2016-02-15', 63.69),
('Luz', '2016-02-20', 154.23),
('Internet', '2016-02-10', 104.35),
('Aluguel', '2016-02-25', 400.00);

insert into lista_depesas
(despesa, rendimentos)
values
(1, 1), (2, 1), (3, 1), (4, 1),
(1, 2), (2, 2), (3, 2), (4, 2),
(1, 3), (2, 3), (3, 3), (4, 3),
(1, 4), (2, 4), (3, 4), (4, 4);


