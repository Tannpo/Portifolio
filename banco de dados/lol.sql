create table item(
preço int,
nome varchar primary key,
mitico boolean
)
 —----------------------------------------------------------------
create table campeao(
nome varchar primary key,
classe varchar,
lane varchar,
tipo_de_dano varchar)
 —----------------------------------------------------------------
create table comprado(
item varchar references item(nome),
campeao varchar references campeao(nome))
 —----------------------------------------------------------------

create table runa(
nome_pagina varchar primary key,
Arvore_de_runas varchar,
Runa varchar,
runa_essencial1 varchar,
runa_essencial2 varchar,
runa_essencial3 varchar,
Arvore_secundaria varchar,
runa_secundaria1 varchar,
runa_secundaria2 varchar,
ataque varchar,
flex varchar,
defesa varchar
)
 —----------------------------------------------------------------
create table jogador(
nick varchar primary key,
nivel int,
winrate varchar,
elo varchar
runa varchar references runa)
 —----------------------------------------------------------------
create table equipe_azul(
jogadores varchar references jogador(nick),
campeao varchar references campeao(nome),
lane varchar references campeao(lane)
farm int,
placar de visao int)



 —----------------------------------------------------------------
create table equipe_vermelha(
nick varchar references jogador(nick),
campeao varchar,
lane varchar,
farm int,
placar_de_visao int)



select * from campeao where tipo_de_dano like  'fisico%'
select * from item where mitico = true
select * from campeao where lane like  'sup%'
select * from item where preço <= 400
select * from jogador where nivel <= 100
select * from comprado where campeao like  'karma%'
