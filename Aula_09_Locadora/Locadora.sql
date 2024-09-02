create DATABASE LOCADORA

use LOCADORA

CREATE TABLE filmes(
codFilme int identity primary key,
nome varchar(50) not null, 
categoria varchar(30) not null,
copias int not null,
ano char(8) not null,
sinopse text,
censura varchar(10) not null
)

ALTER TABLE filmes ALTER COLUMN ano int

insert into filmes (nome, categoria, copias, ano,censura) values('Bater ou Correr em Londres','Comédia',5,'2003','13')
insert into filmes (nome, categoria, copias, ano,censura) values('Lágrimas do Sol','Ação',5,'2003','13')
insert into filmes (nome, categoria, copias, ano,censura) values('Tratamento de Choque','Comédia',5,'2003','Livre')
insert into filmes (nome, categoria, copias, ano,censura) values('A Última Noite','Drama',5,'2002','16')
insert into filmes (nome, categoria, copias, ano,censura) values('Procurando Nemo','Comédia',5,'2003','Livre')
insert into filmes (nome, categoria, copias, ano,censura) values('Britney Spears ao Vivo de Las Vegas','Show',5,'2001','Livre')
insert into filmes (nome, categoria, copias, ano,censura) values('Sinais','Suspense',5,'2002','13')
insert into filmes (nome, categoria, copias, ano,censura) values('Contato','Suspense',5,'1997','16')
insert into filmes (nome, categoria, copias, ano,censura) values('Máquina Mortífera','Ação',5,'1987','16')
insert into filmes (nome, categoria, copias, ano,censura) values('Códigos de Guerra','Ação',5,'2002','13')
insert into filmes (nome, categoria, copias, ano,censura) values('Uma saída de Mestre','Ação',5,'2003','13')
insert into filmes (nome, categoria, copias, ano,censura) values('Cubo','Ficção',5,'1997','16')
insert into filmes (nome, categoria, copias, ano,censura) values('Duro de Matar','Ação',5,'1988','16')
insert into filmes (nome, categoria, copias, ano,censura) values('O Chamado','Suspense',5,'2002','16')
insert into filmes (nome, categoria, copias, ano,censura) values('Premonição 2','Suspense',5,'2003','13')
insert into filmes (nome, categoria, copias, ano,censura) values('Em Má Companhia','Ação',5,'2002','13')
insert into filmes (nome, categoria, copias, ano,censura) values('Atrás das Linhas Inimigas','Ação',5,'2001','16')
insert into filmes (nome, categoria, copias, ano,censura) values('Um Ato de Coragem','Drama',5,'2002','16')
insert into filmes (nome, categoria, copias, ano,censura) values('Extermínio','Suspense',5,'2002','13')
insert into filmes (nome, categoria, copias, ano,censura) values('O Vingador','Ação',5,'2003','13')
insert into filmes (nome, categoria, copias, ano,censura) values('SWAT - Comando Especial','Ação',5,'2003','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Duro de Matar 2','Ação',5,'1990','0')
insert into filmes (nome, categoria, copias, ano,censura) values('O Atirador 2','Ação',5,'2002','16')
insert into filmes (nome, categoria, copias, ano,censura) values('American Pie O Casamento','Comédia',5,'2003','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Identidade','Suspense',5,'2003','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Navio Fantasma','Suspense',5,'2002','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Estrada Para Perdição','Drama',5,'2002','18')
insert into filmes (nome, categoria, copias, ano,censura) values('Bon Jovi Crush Tour','Show',5,'2000','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Resident Evil - O Hospedeiro Maldito','Suspense',5,'2002','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Falcão Negro em Perigo','Ação',5,'2001','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Reino de Fogo','Aventura',5,'2002','0')
insert into filmes (nome, categoria, copias, ano,censura) values('O Novato','Ação',5,'2003','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Chefe de Estado','Comédia',5,'2003','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Contra o Tempo','Ação',5,'2003','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Os Viajantes do Tempo','Comédia',5,'2001','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Revelação','Suspense',5,'2000','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Por Um Fio','Ação',5,'2002','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Ao Cair da Noite','Suspense',5,'2003','0')
insert into filmes (nome, categoria, copias, ano,censura) values('A Identidade de Bourne','Ação',5,'2002','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Violação de Conduta','Ação',5,'2003','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Amor à Segunda Vista','Comédia',5,'2002','0')
insert into filmes (nome, categoria, copias, ano,censura) values('A Soma de Todos os Medos','Ação',5,'2002','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Avril Lavigne Try To Shut Me Up Tour','Ação',5,'2003','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Die Hard: A Vingança','Ação',5,'1995','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Tudo Que Uma Garota Quer','Comédia',5,'2003','0')
insert into filmes (nome, categoria, copias, ano,censura) values('O Senhor dos Anéis: A Sociedade do Anel','Aventura',5,'2001','0')
insert into filmes (nome, categoria, copias, ano,censura) values('A Face Oculta Da Lei','Ação',5,'2002','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Gladiador','Ação',5,'2000','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Devorador de Pecados','Drama',5,'2003','0')
insert into filmes (nome, categoria, copias, ano,censura) values('O Olho Que Tudo Vê','Suspense',5,'2002','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Aos treze','Drama',5,'2003','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Máquina Mortífera 2','Ação',5,'1989','0')
insert into filmes (nome, categoria, copias, ano,censura) values('O Senhor dos Anéis: As Duas Torres','Aventura',5,'2002','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Monstros S.A.','Comédia',5,'2001','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Voando Alto','Comédia',5,'2003','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Alex & Emma','Romance',5,'2003','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Caçado','Ação',5,'2003','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Deixe Me Viver','Drama',5,'2002','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Máquina Mortífera 3','Ação',5,'1992','0')
insert into filmes (nome, categoria, copias, ano,censura) values('The O.C. Season 01','Série',5,'2003','0')
insert into filmes (nome, categoria, copias, ano,censura) values('City of God','Drama',5,'2002','0')
insert into filmes (nome, categoria, copias, ano,censura) values('A Filha do Chefe','Comédia',5,'2003','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Máquina Mortífera 4','Ação',5,'1998','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Bon Jovi This Left Feels Right','Show',5,'2003','0')
insert into filmes (nome, categoria, copias, ano,censura) values('O Juri','Drama',5,'2003','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Sexta-Feira Muito Louca','Coméida',5,'2003','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Simplesmente Amor','Romance',5,'2003','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Medo Da Escuridão','Terror',5,'2002','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Mestre dos Mares: O Lado Mais Distante do Mundo','Aventura',5,'2003','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Matrix Revoluções','Ação',5,'2003','0')
insert into filmes (nome, categoria, copias, ano,censura) values('O Senhor dos Anéis: O Retorno do Rei','Aventura',5,'2003','0')
insert into filmes (nome, categoria, copias, ano,censura) values('O Último Samurai','Ação',5,'2003','0')
insert into filmes (nome, categoria, copias, ano,censura) values('So Normal','Comédia',5,'2003','0')
insert into filmes (nome, categoria, copias, ano,censura) values('13 Fantasmas','Suspense',5,'2001','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Minha Vida Sem Mim','Drama',5,'2003','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Assassinos Substitutos','Ação',5,'1998','0')
insert into filmes (nome, categoria, copias, ano,censura) values('À Espera de Um Milagre','Drama',5,'1999','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Congo','Aventura',5,'1995','0')
insert into filmes (nome, categoria, copias, ano,censura) values('House Of The Dead','Ação',5,'2003','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Círculo De Fogo','Ação',5,'2001','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Vampiros de John Carpenter 2: Los Muertos','Ação',5,'2002','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Anjos Da Noite','Ação',5,'2003','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Independence Day','Ação',5,'1996','0')
insert into filmes (nome, categoria, copias, ano,censura) values('X-Men','Ação',5,'2000','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Tomb Raider','Ação',5,'2001','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Garotas Selvagens 2','Suspense',5,'2004','0')
insert into filmes (nome, categoria, copias, ano,censura) values('O Rei Leão 1¹/²','Comédia',5,'2004','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Bem-Vindo à Selva','Aventura',5,'2003','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Fora De Controle','Drama',5,'2002','0')
insert into filmes (nome, categoria, copias, ano,censura) values('O Pagamento','Aventura',5,'2003','0')
insert into filmes (nome, categoria, copias, ano,censura) values('O Sexto Sentido','Suspense',5,'1999','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Inteligência Artificial','Drama',5,'2001','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Todo Mundo em Pânico 3','Comédia',5,'2003','0')
insert into filmes (nome, categoria, copias, ano,censura) values('A Liga Extraordinária','Aventura',5,'2003','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Euro Pudding','Comédia',5,'2002','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Quero Ficar Com Polly','Comédia',5,'2004','0')
insert into filmes (nome, categoria, copias, ano,censura) values('X-Men 2','Ação',5,'2003','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Tomb Raider A Origem da Vida','Ação',5,'2003','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Impacto Profundo','Drama',5,'1998','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Como Se Fosse A Primeira Vez','Comédia',5,'2004','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Armageddon','Aventura',5,'1998','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Pearl Harbor','Ação',5,'2001','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Show de Vizinha','Comédia',5,'2004','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Rios Vermelhos','Ação',5,'2000','0')
insert into filmes (nome, categoria, copias, ano,censura) values('60 Segundos','Ação',5,'2000','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Garganta do Diabo','Suspense',5,'2003','0')
insert into filmes (nome, categoria, copias, ano,censura) values('As Invasões Bárbaras','Drama',5,'2003','0')
insert into filmes (nome, categoria, copias, ano,censura) values('A Vingança do Mosqueteiro','Ação',5,'2001','0')
insert into filmes (nome, categoria, copias, ano,censura) values('PI','Suspense',5,'1998','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Cavaleiros do Zodíaco - Prólogo do Céu','Ação',5,'1986','0')
insert into filmes (nome, categoria, copias, ano,censura) values('De Repente 30','Comédia',5,'2004','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Madrugada Dos Mortos','Terror',5,'2004','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Kill Bill: Volume 1','Ação',5,'2003','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Kill Bill: Volume 2','Ação',5,'2004','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Uma Amizade Sem Fronteiras','Drama',5,'2003','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Irmão Urso','Comédia',5,'2003','0')
insert into filmes (nome, categoria, copias, ano,censura) values('O Justiceiro','Ação',5,'2004','0')
insert into filmes (nome, categoria, copias, ano,censura) values('O Enviado','Drama',5,'2004','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Seven: Os 7 pecados Capitais','Suspense',5,'1995','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Doze é Demais','Comédia',5,'2003','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Godzilla','Ficção',5,'1998','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Tróia','Ação',5,'2004','0')
insert into filmes (nome, categoria, copias, ano,censura) values('American Pie','Comédia',5,'1999','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Garfield: The Movie','Comédia',5,'2004','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Hellboy','Aventura',5,'2004','0')
insert into filmes (nome, categoria, copias, ano,censura) values('O Dia Depois de Amanhã','Aventura',5,'2004','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Mimic','Ficção',5,'1997','0')
insert into filmes (nome, categoria, copias, ano,censura) values('No Pique de Nova York','Comédia',5,'2004','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Meninas Malvadas','Comédia',5,'2004','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Van Helsing - O Caçador de Monstros','Ação',5,'2004','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Eurotrip','Comédia',5,'2004','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Aladdin','Animação',5,'1992','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Meu Vizinho Mafioso','Comédia',5,'2000','0')
insert into filmes (nome, categoria, copias, ano,censura) values('DJ Tiësto im Concert','Show',5,'2003','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Fahrenheit 11 de Setembro','Documentário',5,'2004','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Contra Tudo e Contra Todos','Drama',5,'2004','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Immortel','Drama',5,'2004','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Confidence - O Golpe Perfeito','Drama',5,'2003','0')
insert into filmes (nome, categoria, copias, ano,censura) values('21 Gramas','Drama',5,'2003','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Resident Evil 2','Ação',5,'2004','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Demolidor - O Homem sem Medo','Ação',5,'2003','0')
insert into filmes (nome, categoria, copias, ano,censura) values('A Supremacia De Bourne','Ação',5,'2004','0')
insert into filmes (nome, categoria, copias, ano,censura) values('American Pie 2','Comédia',5,'2001','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Menina dos Olhos','Comédia',5,'2004','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Efeito Borboleta','Suspense',5,'2004','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Pecado Original','Drama',5,'2001','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Janela Secreta','Suspense',5,'2004','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Resgate Sem Limites','Ação',5,'2003','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Show Bar','Comédia',5,'2000','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Com A Bola Toda','Comédia',5,'2004','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Com As Próprias Mãos','Ação',5,'2004','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Doce Novembro','Drama',5,'2001','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Chamas da Vingança','Ação',5,'2004','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Táxi','Comédia',5,'2004','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Star Wars: Episódio I - A Ameaça Fantasma','Ficção',5,'1999','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Star Wars: Episódio II - Ataque dos Clones','Ficção',5,'2002','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Spartan','Crime',5,'2004','0')
insert into filmes (nome, categoria, copias, ano,censura) values('A Serviço de Sara','Comédia',5,'2002','0')
insert into filmes (nome, categoria, copias, ano,censura) values('O Rei Da Água','Comédia',5,'1998','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Shaun Of The Dead','Comédia',5,'2004','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Sniper 3 - O Atirador','Ação',5,'2004','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Eu, Robô','Ação',5,'2004','0')
insert into filmes (nome, categoria, copias, ano,censura) values('O Terminal','Drama',5,'2004','0')
insert into filmes (nome, categoria, copias, ano,censura) values('A Vila','Suspense',5,'2004','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Rios Vermelhos 2: Os Anjos do Apocalipse','Suspense',5,'2004','0')
insert into filmes (nome, categoria, copias, ano,censura) values('O Grito','Terror',5,'2004','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Meu Vizinho Mafioso 2','Comédia',5,'2004','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Mindhunters','Suspense',5,'2004','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Colateral','Ação',5,'2004','0')
insert into filmes (nome, categoria, copias, ano,censura) values('O Âncora','Comédia',5,'2004','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Espanglês','Romance',5,'2004','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Jogos Mortais','Suspense',5,'2004','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Brigada 49','Ação',5,'2004','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Exorcista: O Início','Terror',5,'2004','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Papai Noel às Avessas','Comédia',5,'2003','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Os Esquecidos','Suspense',5,'2004','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Elektra','Ação',5,'2005','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Assalto ao Carro Forte','Drama',5,'2004','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Evanescence - Anywhere But Home','Show',5,'2004','0')
insert into filmes (nome, categoria, copias, ano,censura) values('12 Homens e outro Segredo','Comédia',5,'2004','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Minority Report - A Nova Lei','Ação',5,'2002','0')
insert into filmes (nome, categoria, copias, ano,censura) values('A Mulher-Gato','Ação',5,'2004','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Dormindo Fora de Casa','Comédia',5,'2004','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Alexandre','Ação',5,'2004','0')
insert into filmes (nome, categoria, copias, ano,censura) values('A Lenda do Tesouro Perdido','Aventura',5,'2004','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Constantine','Ação',5,'2005','0')
insert into filmes (nome, categoria, copias, ano,censura) values('O Resgate Do Soldade Ryan','Ação',5,'1998','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Três Reis','Guerra',5,'1999','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Vozes Do Além','Drama',5,'2005','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Querem Acabar Comigo','Comédia',5,'2005','0')
insert into filmes (nome, categoria, copias, ano,censura) values('O Outro Nome do Jogo','Comédia',5,'2005','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Amigo Oculto','Suspense',5,'2005','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Just A Kiss','Drama',5,'2004','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Vingança','Ação',5,'2004','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Divisão de Homicídios','Ação',5,'2003','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Entrando Numa Fria Maior Ainda','Comédia',5,'2004','0')
insert into filmes (nome, categoria, copias, ano,censura) values('24 Horas Season 01','Série',5,'2001','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Carga Explosiva','Ação',5,'2002','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Alone In The Dark','Ação',5,'2005','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Secret Agents','Ação',5,'2004','0')
insert into filmes (nome, categoria, copias, ano,censura) values('O Chamado 2','Terror',5,'2005','0')
insert into filmes (nome, categoria, copias, ano,censura) values('American Soldiers - A Vida em Um Dia','Ação',5,'2005','0')
insert into filmes (nome, categoria, copias, ano,censura) values('O Clã das Adagas Voadoras','Ação',5,'2004','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Encurralada','Crime',5,'2002','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Celular - Um Grito de Socorro','Ação',5,'2004','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Herói','Ação',5,'2002','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Menina De Ouro','Drama',5,'2004','0')
insert into filmes (nome, categoria, copias, ano,censura) values('A Batalha de Riddick','Aventura',5,'2004','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Sin City A Cidade do Pecado','Ação',5,'2005','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Assalto à 13º DP','Ação',5,'2005','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Antes Que O Dia Termine','Drama',5,'2004','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Prova De Amor','Drama',5,'2003','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Nsync Ao Vivo de Madison Square Garden','Show',5,'2000','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Miss Simpatia 2 - Armada e Poderosa','Comédia',5,'2005','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Operação Babá','Comédia',5,'2005','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Sonhos No Gelo','Comédia',5,'2005','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Querido Frankie','Drama',5,'2004','0')
insert into filmes (nome, categoria, copias, ano,censura) values('XXX - Estado de Emergência','Ação',5,'2005','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Vanilla Sky','Drama',5,'2001','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Encontros e Desencontros','Drama',5,'2003','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Por Um Triz','Ação',5,'2003','0')
insert into filmes (nome, categoria, copias, ano,censura) values('O Operário','Drama',5,'2004','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Sahara','Aventura',5,'2005','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Star Wars: Episódio III - A Vingança do Sith','Ação',5,'2005','0')
insert into filmes (nome, categoria, copias, ano,censura) values('A Casa De Cera','Terror',5,'2005','0')
insert into filmes (nome, categoria, copias, ano,censura) values('A Queda - As Últimas Horas de Hitler','Drama',5,'2004','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Horror Em Amityville','Terror',5,'2005','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Corra Que a Polícia Vem Aí','Comédia',5,'1988','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Guerra Dos Mundos','Ação',5,'2003','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Água Negra','Suspense',5,'2005','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Jogos Mortais II','Terror',5,'2005','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Batman Begins','Ação',5,'2005','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Sob O Domínio Do Mal','Drama',5,'2004','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Refém','Ação',5,'2005','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Noiva Cadáver','Comédia',5,'2005','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Stealth - A Ameaça Invisível','Ação',5,'2005','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Hotel Ruanda','Drama',5,'2004','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Golpe Baixo','Comédia',5,'2005','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Uma Casa No Fim do Mundo','Drama',5,'2004','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Um Gigolô Europeu Por Acidente','Comédia',5,'2005','0')
insert into filmes (nome, categoria, copias, ano,censura) values('A Nova Onda Do Imperador','Comédia',5,'2000','0')
insert into filmes (nome, categoria, copias, ano,censura) values('7 Múmias','Aventura',5,'2005','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Nem Tudo é o Que Parece','Crime',5,'2004','0')
insert into filmes (nome, categoria, copias, ano,censura) values('A Chave Mestra','Drama',5,'2005','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Doom - A Porta do Inferno','Ação',5,'2005','0')
insert into filmes (nome, categoria, copias, ano,censura) values('O Exorcismo de Emily Rose','Drama',5,'2005','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Marcas Da Violência','Ação',5,'2005','0')
insert into filmes (nome, categoria, copias, ano,censura) values('A Névoa','Ação',5,'2005','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Sr. & Sra. Smith','Ação',5,'2005','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Kung Fusão','Comédia',5,'2004','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Plano de Vôo','Drama',5,'2005','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Carga Explosiva 2','Ação',5,'2005','0')
insert into filmes (nome, categoria, copias, ano,censura) values('O Defensor - Protegendo o Inimigo','Ação',5,'2004','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Monty Phyton em Busca do Cálice Sagrado','Comédia',5,'1975','0')
insert into filmes (nome, categoria, copias, ano,censura) values('O Guia do Mochileiro das Galáxias','Aventura',5,'2005','0')
insert into filmes (nome, categoria, copias, ano,censura) values('A Caverna','Aventura',5,'2005','0')
insert into filmes (nome, categoria, copias, ano,censura) values('A Intérprete','Crime',5,'2005','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Armin Only - The Next Level','Show',5,'2006','0')
insert into filmes (nome, categoria, copias, ano,censura) values('X-Men - O Filme','Ação',5,'2000','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Uma Mente Brilhante','Drama',5,'2001','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Tudo Por Dinheiro','Drama',5,'2005','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Os Irmãos Grimm','Aventura',5,'2005','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Tudo Acontece Em Elizabethtown','Drama',5,'2005','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Wolf Creek - Viagem Ao Inferno','Suspense',5,'2005','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Penetras Bons De Bico','Comédia',5,'2005','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Antes Do Pôr-Do-Sol','Romance',5,'2004','0')
insert into filmes (nome, categoria, copias, ano,censura) values('As Gladiadoras','Comédia',5,'2004','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Senhor Das Armas','Ação',5,'2005','0')
insert into filmes (nome, categoria, copias, ano,censura) values('E Se Fosse Verdade','Romance',5,'2005','0')
insert into filmes (nome, categoria, copias, ano,censura) values('Em Seu Lugar','Comédia',5,'2005','0')
insert into filmes (nome, categoria, copias, ano,censura) values('X-Men 2','Ação',5,'2003','0')
insert into filmes (nome, categoria, copias, ano,censura) values('A Pantera Cor De Rosa','Comédia',5,'2006','Livre')
insert into filmes (nome, categoria, copias, ano,censura) values('24 Horas Season 02','Série',5,'2002','0')

SELECT * FROM filmes

-- 1) A quantidade de filmes de cada categoria.
SELECT categoria, COUNT(*) AS QTD FROM filmes
GROUP BY categoria

-- 2) A quantidade de filmes lançados após 2002 agrupados por categoria.
SELECT categoria, COUNT (*) AS QTD_PÓS_2002 FROM FILMES
WHERE ano >= 2002
GROUP BY categoria

-- 3) Os anos de lançamento e as respectivas quantidades lançadas de filmes lançadas em cada ano.
SELECT ano AS Ano_Lançamento, COUNT(*) AS QTD_POR_ANO FROM FILMES
GROUP BY ano

-- 4) Os anos de lançamento e as respectivas quantidades lançadas de filmes lançadas em cada ano, desconsiderando aqueles lançados antes de 2003.
SELECT ano AS Ano_Lançamento, COUNT(*) AS QTD_POR_ANO FROM FILMES
WHERE ano >= 2003
GROUP BY ano

-- 5) A quantidade de filmes categorizados por ano que tenham sido lançados após o valor médio dos anos de lançamento de todos os filmes da locadora.
SELECT ano, COUNT(*) AS QTD FROM filmes
WHERE ano >= (SELECT AVG(ano) FROM filmes)
GROUP BY ano

-- 6) A quantidade de filmes que possuam em seu título a palavra “Noite”.
SELECT nome AS Título, COUNT(*) AS QTD_NOITE FROM filmes
WHERE nome like '%Noite%'
GROUP BY nome

-- 7) Mostrar o nome do filme e a categoria do filme que possua a palavra “Noite”.
SELECT nome, categoria FROM filmes
WHERE nome like '%noite%'

-- 8) Quais as categorias e as respectivas quantidades de filmes que possuam as palavras “Noite” ou “Amor” em cada uma
SELECT categoria, COUNT(*) AS QTD FROM filmes
WHERE nome like '%noite%' OR nome like '%amor%'
GROUP BY categoria

-- 9) Qual o título e o ano de lançamento do filme mais antigo existente na locadora?
SELECT nome, ano FROM filmes
WHERE ano = (SELECT MIN(ano) FROM filmes)

--10) Quais os títulos e o respectivo ano de lançamento dos filmes mais novos existentes na locadora, ordenados por ordem alfabética de título?
SELECT nome, ano FROM filmes
WHERE ano = (SELECT MAX(ano) FROM filmes)
ORDER BY nome

-- 11) A quantidade de filmes lançados entre 1993 e 1999, classificados por categoria.
SELECT categoria, COUNT (*) AS QTD FROM filmes
WHERE ano >= 1993 AND ano <= 1999
GROUP BY categoria

--12) Selecionar todos os filmes (por ordem crescente da chave primária Código)
SELECT * FROM FILMES 
ORDER BY codFilme

--13) Selecionar todos os filmes por ordem de título (crescente)
SELECT * FROM FILMES
ORDER BY nome

--14) Selecionar todos os filmes por ordem decrescente de título
SELECT * FROM FILMES
ORDER BY nome DESC

-- 15) Selecionar o título, categoria e ano de lançamento dos filmes, por ordem crescente do ano de lançamento
SELECT nome, categoria, ano FROM FILMES
ORDER BY ano

-- 16) Selecionar o título, categoria e ano de lançamento dos filmes, por ordem crescente do ano de lançamento e ordem decrescente de categoria
SELECT nome, categoria, ano FROM FILMES
ORDER BY ano, categoria DESC

--17) Selecionar o título, categoria e ano de lançamento dos filmes, por ordem crescente do ano de lançamento e ordem decrescente de categoria e ordem crescente de título
SELECT nome, categoria, ano FROM filmes
ORDER BY ano, categoria DESC, nome

--18) Selecionar todos os filmes de suspense
SELECT * FROM FILMES
WHERE categoria = 'suspense'

--19) Selecionar todos os filmes de suspense por ordem alfabética do título
SELECT * FROM FILMES
WHERE categoria = 'suspense'
ORDER BY nome

--20) Selecionar todos os filmes lançados antes do ano 2000
SELECT * FROM FILMES 
WHERE ano <= 2000

--21) Selecionar todos os filmes lançados antes de 2000 em ordem crescente do ano de lançamento
SELECT * FROM FILMES 
WHERE ano <= 2000
ORDER BY ano

--22) Selecionar todas as comédias lançadas após 2004, por ordem crescente de ano de lançamento
SELECT * FROM FILMES
WHERE categoria = 'comédia' AND
ano >= 2004 
ORDER BY ano

--23) Selecionar todos os filmes lançados entre 2001 e 2003
SELECT * FROM FILMES 
WHERE ano BETWEEN 2001 AND 2003

--24) Selecionar todos os filmes lançados entre 2001 e 2003 por ordem crescente de ano de lançamento
SELECT * FROM FILMES 
WHERE ano BETWEEN 2001 AND 2003
ORDER BY ano

--25) Selecionar todos os filmes cujo título possua a palavra AMOR
SELECT * FROM filmes
WHERE nome like '%amor%'

--26) Selecionar todos os filmes que contenham a palavra VINGANÇA e que foram lançados em 2004
SELECT * FROM filmes
WHERE nome like '%vingança%'
AND ano = 2004

--27) Contar a quantidade de títulos por censura
SELECT censura, COUNT(*) AS QTD FROM filmes
GROUP BY censura

--28) Contar a quantidade de títulos por censura onde a censura seja igual de 0
SELECT censura, COUNT(*) AS QTD FROM filmes
WHERE censura = '0'
GROUP BY censura

--29) Contar a quantidade de títulos por censura onde a censura seja diferente de 0
SELECT censura, COUNT(*) AS QTD FROM filmes
WHERE censura != '0'
GROUP BY censura
