-- 1 Recriar as tabelas de correntista e fluxo_de_caixa
-- 2 inserir 4 registros na tabela de correntista
-- 3 inserir 10 registros na tabela de fluxo_de_caixa
-- 4 vai mostrar a seleção dos registros relacionando as tabelas

create database revisao;

use revisao;

-- Tabela de Correntista
create table correntista(
ag int not null,
conta int not null,
nome varchar(50) not null,
email varchar(80) not null,
telefone char(11) not null,
saldo decimal(8,2) not null,
primary key (ag,conta));

describe correntista;

insert into correntista
(ag,conta,nome,email,telefone,saldo)
values
(8956,04686,"Nicole","nicole@itau-unibanco.com.br","545685269",20000.00),
(5995,04696,"Dudu","dudu@itau-unibanco.com.br","545685895",20000.00),
(2685,04656,"Tuba","tuba@itau-unibanco.com.br","545685885",20000.00),
(8785,04657,"Tom","tom@itau-unibanco.com.br","545685889",20000.00);


select * from correntista;

create table fluxo_caixa(
ag int not null,
conta int not null,
fluxo int not null,
entrada decimal(8,2) not null,
saida decimal(8,2) not null,
primary key(ag,conta,fluxo));

insert into fluxo_caixa
(ag,conta,fluxo,entrada,saida)
values
(8956,04686,8,10000,0),
(5995,04696,8,10000,0),
(2685,04656,8,10000,0),
(8785,04657,8,10000,0);

select * from fluxo_caixa;

-- Relacionando as tabelas de correntista ao fluxo de caixa
select c.ag,c.conta,c.nome,f.entrada,f.saida
from correntista as c,
fluxo_caixa as f
where (c.ag=f.ag) and (c.conta=f.conta);

-- Relacionando as tabelas com inner join
select c.ag,c.conta,c.nome,f.entrada,f.saida
from correntista as c
inner join fluxo_caixa as f
on(c.ag=f.ag) and (c.conta=f.conta);

select c.ag,c.conta,c.nome,f.entrada,f.saida
from correntista as c
inner join fluxo_caixa as f
on(c.a=f=1) and (c.conta=f=1);

select count(*) as total_registros from correntista;

select count(*) as total_registros from fluxo_caixa;