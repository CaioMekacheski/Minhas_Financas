Projeto Integrador do módulo 1 do curso de Análise de Sistemas (Senac EaD). 06/2022-12/2022

Minhas Finanças 
(aplicação desktop por Caio Mekacheski)


Apresentação:

Minhas Finanças é um aplicativo desktop feito para auxiliar o gerenciamento dos rendimentos e despesas do usuário, 
facilitando a organização de suas finanças de forma simples e intuitiva.

Descrição:

A aplicação será dividida em 2 módulos principais:

* Calculo de rendimentos
* Calculo de despesas

No primeiro efetua se o cálculo das entradas por período e de acordo com a profissão selecionada pelo usuário.
No segundo o total de despesas cadastradas, tendo o total de rendimentos como referencia para o limite de despesas. 
Dependendo dos totais, o saldo pode ser positivo ou negativo.

Usuários:

O aplicativo é direcionado ao público geral, que necessita de um controle maior sobre as suas finanças, de maneira simples e prática.

Regras de Negócio:

RN 001: <O salário bruto corresponde a soma do salário base com o adicional.>

RN 002: <O adicional corresponde a uma porcentagem do salário base.>

RN 003: <O salário líquido corresponde a subtração do desconto do salário bruto.>

RN 004: <O desconto corresponde a uma porcentagem do salário bruto.>

RN 005: <O 13º salário corresponde ao valor do salário bruto dividido por 12 e depois multiplicado pelos meses trabalhados.>

RN 006: <As férias correspondem ao valor do salário bruto dividido por 12, depois multiplicado pelos meses trabalhados,
mais 1/3 e menos o desconto.>

RN 007: <O total de rendimentos corresponde a soma do salário, do 13º e das férias>

RN 008: <O total de despesas corresponde a soma de todas as despesas cadastradas>
  
RN 009: <A diferença entre o total de rendimentos e o total de despesas, corresponde a subtração do segundo pelo primeiro>

Necessidade Observada:

Para que os rendimentos sejam calculados de forma precisa, é necessário a criação de um banco de dados para armazenar 
e organizar os valores dos salário de acordo com a profissão selecionada. 

Requisitos Funcionais:

RF 001: <Calcula Salário>
Ator: <Usuário>
Descrição: <Faz o cálculo do salário líquido de acordo com as regras de negócio RN 001, RN 002, RN 003 e a profissão selecionada.>

RF 002: <Calcula 13º>
Ator: <Usuário>
Descrição: <Calcula o 13º de acordo com a regra de negócio RN 007.>

RF 003: <Calcula Férias>
Ator: <Usuário>
Descrição: <Calcula as férias de acordo com a regra de negócio RN 008.>

RF 004: <Salvar Rendimentos>
Ator: <Usuário>
Descrição: <Gera e salva um relatório contendo os totais calculados e a soma total de todos os rendimentos>

RF 005: <Cadastra Despesa>
Ator: <Usuário>
Descrição: <Adiciona um item a lista de despesas, cadastrando o titulo, o valor, a data de vencimento da despesa 
e atualiza o valor total das despesas>

RF 006: <Listar Despesas>
Ator: <Usuário>
Descrição: <Lista todas as despesas cadastradas e suas respectivas informações incluindo o total do valor das despesas, 
o total dos rendimentos e a diferença entre os totais>

RF 007: <Remover despesa>
Ator: <Usuário>
Descrição: <Remove o item selecionado da lista de despesa e atualiza o total de despesas>


Requisitos não Funcionais:

RNF 001: <Atualizar Salário>
Descrição: <Os valores dos salário devem ser atualizados periodicamente de acordo com sua respectiva categoria, 
para assegurar a precisão dos cálculos>

RNF 002: <Linguagem>
Descrição: <Java será a linguagem utilizada no desenvolvimento da aplicação>

RNF 003: <Banco de Dados>
Descrição: <O banco de dados será criado utilizando o MySQL>

Tecnologias Previstas:

Java e MySQL.

Diagrama ER criado no mysql workbench:

![diagrama_er_minhas_financas](https://user-images.githubusercontent.com/106687263/205794167-70ae81f5-ed77-49c6-8205-f4d2b65ddea8.png)

