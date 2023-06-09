create database smash;
use smash;

create table personagem (
idPersonagem int primary key auto_increment,
nome varchar(45),
curtida int
);

create table usuario (
idUsuario int primary key auto_increment,
nome varchar(45),
email varchar(50),
senha varchar(45),
fkPersonagem int,
constraint fkPersonagem foreign key (fkPersonagem) references personagem(idPersonagem)
);

insert into personagem values
	(null, 'Mario', 0),
	(null, 'Donkey Kong', 0),
	(null, 'Link', 0),
	(null, 'Samus', 0),
	(null, 'Dark Samus', 0),
	(null, 'Yoshi', 0),
	(null, 'Kirby', 0),
	(null, 'Fox', 0),
	(null, 'Pikachu', 0),
	(null, 'Luigi', 0),
	(null, 'Ness', 0),
	(null, 'Capitan Falcon', 0),
	(null, 'Jigglypuff', 0),
	(null, 'Peach', 0),
	(null, 'Daisy', 0),
	(null, 'Bowser', 0),
	(null, 'Ice Climbers', 0),
	(null, 'Sheik', 0),
	(null, 'Zelda', 0),
	(null, 'Dr. Mario', 0),
	(null, 'Pichu', 0),
	(null, 'Falco', 0),
	(null, 'Marth', 0),
	(null, 'Lucina', 0),
	(null, 'Young Link', 0),
	(null, 'Ganondorf', 0),
	(null, 'Mewtwo', 0),
	(null, 'Roy', 0),
	(null, 'Chrom', 0),
	(null, 'Mr. Game & Watch', 0),
	(null, 'Meta Knight', 0),
	(null, 'Pit', 0),
	(null, 'Dark Pit', 0),
	(null, 'Zero Suit Samus', 0),
	(null, 'Wario', 0),
	(null, 'Snake', 0),
	(null, 'Ike', 0),
	(null, 'Pokémon Trainer', 0),
	(null, 'Diddy Kong', 0),
	(null, 'Lucas', 0),
	(null, 'Sonic', 0),
	(null, 'King Dedede', 0),
	(null, 'Olimar', 0),
	(null, 'Lucario', 0),
	(null, 'R.O.B.', 0),
	(null, 'Toon Link', 0),
	(null, 'Wolf', 0),
	(null, 'Villager', 0),
	(null, 'Mega Man', 0),
	(null, 'Wii Fit TRAINER', 0),
	(null, 'Rosalina & Luma', 0),
	(null, 'Little Mac', 0),
	(null, 'Greninja', 0),
	(null, 'Mii Fighter', 0),
	(null, 'Palutena', 0),
	(null, 'Pac-Man', 0),
	(null, 'Robin', 0),
	(null, 'Shulk', 0),
	(null, 'Bowser Jr.', 0),
	(null, 'Duck Hunt', 0),
	(null, 'Ryu', 0),
	(null, 'Ken', 0),
	(null, 'Cloud', 0),
	(null, 'Corrin', 0),
	(null, 'Bayonetta', 0),
	(null, 'Inkling', 0),
	(null, 'Ridley', 0),
	(null, 'Simon', 0),
	(null, 'Richter', 0),
	(null, 'King K. Rool', 0),
	(null, 'Isabelle', 0),
	(null, 'Incineroar', 0),
	(null, 'Piranha Plant', 0),
	(null, 'Joker', 0),
	(null, 'Hero', 0),
	(null, 'Banjo & Kazooie', 0),
	(null, 'Terry', 0),
	(null, 'Byleth', 0),
	(null, 'Min Min', 0),
	(null, 'Steve', 0),
	(null, 'Sephiroth', 0),
	(null, 'Pyra/Mythra', 0),
	(null, 'Kazuya', 0),
	(null, 'Sora', 0);

select * from usuario;

select * from personagem;

UPDATE personagem SET curtida = curtida + 1 WHERE idPersonagem = 1;

select count(usuario.fkPersonagem) as voto, personagem.nome as personagem from usuario join personagem
	on personagem.idPersonagem = usuario.fkPersonagem group by usuario.fkPersonagem;