-- comentarios
-- a linha abaixo cria um banco de dados
create database dbinfox;
-- a linha abaixo escolhe o banco de dados
use dbinfox;
-- o bloco de instrucoes abaixo cria uma tabela 
create table tbusuarios(
iduser int primary key,
usuario varchar(50) not null,
fone varchar(15),
login varchar(15) not null unique,
senha varchar(15) not null
);

-- o comando abaixo descreve a tabela

describe tbusuarios;

-- a linha abaixo insere dados na tabela (CRUD)
-- CREATE -> INSERT
insert into tbusuarios(iduser,usuario,fone,login,senha)
values(1,'joao moreira','9999-9999','joaomoreira','123456');

insert into tbusuarios(iduser,usuario,fone,login,senha)
values(2,'administrador','9999-9999','admin','admin');

insert into tbusuarios(iduser,usuario,fone,login,senha)
values(3,'Bill Gates','9999-9999','bill','123456');

-- a linha abaixo exibe os dados da tabela (CRUD)
-- READ -> SELECT
select * from tbusuarios; 

-- a linha abaixo modifica dados na tabela (CRUD)
-- update -> UPDATE
update	tbusuarios set fone='8888-8888' where iduser=2;

-- a linha abaixo apaga um registro da tabela (CRUD)
-- delete -> DELETE
delete from tbusuarios where iduser=3;

create table tbclientes(
idcli int primary key auto_increment,
nomecli varchar(50) not null,
endcli varchar(100),
fonecli varchar(50) not null,
emailcli varchar(50)
);
describe tbclientes;

-- crud -> insert
insert into tbclientes(nomecli,endcli,fonecli,emailcli)
values('Linus Torvalds','Rua Tux, 2015','9999-9999','linux@linux.com');

select * from tbclientes;

use dbinfox;
create table tbos(
os int primary key auto_increment,
data_os timestamp default current_timestamp,
equipamento varchar(150) not null,
defeito varchar(150) not null,
servico varchar(150),
tecnico varchar(30),
valor decimal(10,2),
idcli int not null,
foreign key(idcli) references tbclientes(idcli)
);

insert into tbos (equipamento,defeito,servico,tecnico,valor,idcli)
values('notebook','nao liga','troca da fonte','ze',87.50,1);


use dbinfox;
select * from tbusuarios;
select * from tbusuarios where login='admin' and senha='admin';

describe tbclientes;

-- crud -> insert
insert into tbclientes(nomecli,endcli,fonecli,emailcli)
values('Linus Torvalds','Rua Tux, 2015','9999-9999','linux@linux.com');


-- a linha abaixo insere dados na tabela (CRUD)
-- CREATE -> INSERT
insert into tbusuarios(iduser,usuario,fone,login,senha)
values(3,'Leandro Lima','9999-9999','leandro','123456');

use dbinfox;
describe tbusuarios;
select * from tbusuarios;
select * from tbusuarios where iduser=2;

-- a linha abaixo adiciona campo a tabela 
alter table tbusuarios add column perfil varchar(20) not null;
-- a linha abaixo remove um campo
alter table tbusuarios drop column perfil;

update tbusuarios set perfil="admin" where iduser=1;
update tbusuarios set perfil="admin" where iduser=2;
update tbusuarios set perfil="user" where iduser=3;

select	* from tbusuarios;
describe tbusuarios;

select	* from tbclientes;
describe tbclientes;
select	* from tbclientes where nomecli like 'jo%';