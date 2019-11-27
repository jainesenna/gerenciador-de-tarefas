#create database trabalhobd2019_2;
use trabalhobd2019_2;

create table usuario(
	id int primary key auto_increment not null,
    nome varchar(100) not null,
    email varchar(255) not null,
    senha varchar(255) not null
);

create table materia(
	id int primary key auto_increment,
    horario varchar(22), # 1T34 2M12 ou 12M34
    nome varchar(255)
);

create table gradeEstudo( #grade de horários de cada usuario
	aluno int not null,
    materias int not null,
    primary key (aluno, materias)
);

create table atividade(
	id int auto_increment primary key,
	aluno int not null,
    materia int,
    conteudo varchar(255)
);

alter table gradeEstudo
	add constraint alunos foreign key (aluno) references usuario(id),
    add constraint materia foreign key (materias) references materia(id);

alter table atividade
	add constraint aluna foreign key (aluno) references usuario(id),
    add constraint materias foreign key (materia) references materia(id);

#SET FOREIGN_KEY_CHECKS=0;
#drop tables gradeEstudo, usuario, materia, atividade;
#SET FOREIGN_KEY_CHECKS=1;