CREATE DATABASE Minecraft

CREATE TABLE Aldea
(
	idAldea serial primary key,
	estilo varchar(50) not null,
	evento varchar(50) not null,
	botin varchar(50) not null,
	estatus boolean not null default true
);

CREATE TABLE Amigo
(
	idAmigo serial primary key,
	gamertag varchar(50) not null,
	aspecto Varchar(50)not null,
	estatus boolean not null default true
);

CREATE TABLE Animal
(
	idAnimal serial primary key,
	puntosVida varchar(50) not null,
	botin varchar(50) not null,
	tipoAnimal varchar(50),
	estatus boolean not null default true
);

CREATE TABLE Arma
(
	idArma serial primary key,
	tipoArma varchar(50) not null,
	nombre varchar(50) not null,
	material varchar(50) not null,
	daño int not null,
	resistencia int not null,
	estatus boolean not null default true
);

CREATE TABLE Armadura
(
	idArmadura serial primary key,
	material varchar(50) not null,
	nombre varchar(50)not null,
	resistencia int not null,
	idInventario int not null,
	estatus boolean not null default true
);

CREATE TABLE Bloque
(
	idBloque serial primary key,
	material varchar(50) not null,
	nombre varchar(50) not null,
	estatus boolean not null default true
);

CREATE TABLE Chat
(
	idChat serial primary key,
	fuente varchar(50) not null,
	color varchar(50) not null,
	espaciadoLinea int not null,
	estatus boolean not null default true
);

CREATE TABLE Chunk
(
	idChunk serial primary key,
	limite int not null,
	formato varchar not null,
	estatus boolean not null default true
);

CREATE TABLE Comercio
(
	idComercio serial primary key,
	tipoComercio varchar(50) not null,
	tipoIntercambio varchar(50) not null,
	estatus boolean not null default true
);

CREATE TABLE Comida
(
	idComida serial primary key,
	tipo varchar not null,
	valorNutrimental int not null,
	nombre varchar(50) not null,
	ingredientes varchar(50) not null,
	estatus boolean not null default true
);

CREATE TABLE ConfigMundo
(
	idConfigMundo serial primary key,
	modoJuego varchar(50) not null,
	dificultad varchar(50) not null,
	preferencia varchar(50) not null,
	semilla varchar(50) not null,
	tipo int not null,
	estatus boolean not null default true
);

CREATE TABLE ConfigUsuario
(
	idConfigUsuario serial primary key ,
	gamertag varchar(50) not null,
	idioma varchar(50) not null,
	estatus boolean not null default true
);

CREATE TABLE Coordenada
(
	idCoordenada serial primary key,
	ejeX int not null,
	ejeY int not null,
	ejeZ int not null,
	estatus boolean not null default true
);

CREATE TABLE Crafteo
(
	idCrafteo serial primary key,
	tipo varchar(50)not null,
	detalle varchar(50) not null,
	idMesaTrabajo int not null,
	idInventario int not null,
	estatus boolean not null default true
);

CREATE TABLE Cultivo
(
	idCultivo serial primary key ,
	tiempoCultivo varchar(50) not null,
	tipo varchar(50) not null,
	estatus boolean not null default true
);

CREATE TABLE Dimension
(
	idDimension serial primary key,
	nombre varchar(30) not null,
	estilo varchar(50) not null,
	cicloDelDia varchar(50) not null,
	estatus boolean not null default true
);

CREATE TABLE Ecosistema
(
	idEcosistema serial primary key,
	tipo varchar(50) not null,
	tamaño int not null,
	bioma varchar(50) not null,
	clima varchar(50) not null,
	estatus boolean not null default true
);

CREATE TABLE Efecto
(
	idEfecto serial primary key,
	tipo varchar(50) not null,
	durabilidad int not null,
	nombre varchar(50) not null,
	estatus boolean not null default true
);

CREATE TABLE Encantamiento
(
	idEncantamiento serial primary key,
	tipo varchar(50) not null,
	durabilidad int not null,
	nombre varchar(50) not null,
	estatus boolean not null default true
);

CREATE TABLE Estadistica
(
	idEstadistica serial primary key,
	dsitanciaRecorrida int not null,
	distanciaVolada int not null,
	distanciaCaida int not null,
	saltos int not null,
	numeroMuertes int not null,
	estatus boolean not null default true
);

CREATE TABLE Estructura
(
	idEstructura serial primary key,
	tipo varchar(50) not null,
	estilo varchar not null,
	estatus boolean not null default true
);

CREATE TABLE Evento
(
	idEvento serial primary key,
	tipo varchar(50) not null,
	fechainicio timestamp not null,
	fechaCierre timestamp not null,
	duarbilidad int not null,
	estatus boolean not null default true
);

CREATE TABLE Fluido
(
	idFluido serial primary key,
	tipo int not null,
	nombre varchar(50)not null,
	nivelFluido int not null,
	estatus boolean not null default true 
);

CREATE TABLE Fortaleza
(
	idFortaleza serial primary key,
	botin timestamp not null,
	nombre varchar(50) not null,
	estilo int not null,
	estatus boolean not null default true
);

CREATE TABLE Generacion
(
	idGeneracion serial primary key,
	tipo timestamp not null,
	lugarGeneracion varchar(50) not null,
	estatus boolean not null default true
);

CREATE TABLE Herramienta
(
	idHerramienta serial primary key,
	material varchar(50) not null,
	nombre varchar(50) not null,
	resistencia int not null,
	tipo varchar(50) not null,
	estatus boolean not null default true
);

CREATE TABLE Inventario
(
	idInventario serial primary key,
	espacio int not null,
	estatus boolean not null default true
);

CREATE TABLE Item
(
	idItem serial primary key,
	tipo varchar(50) not null,
	nombre varchar(50) not null,
	estatus boolean not null default true
);

CREATE TABLE Jefe
(
	idJefe serial primary key,
	dimension varchar(50) not null,
	habilidad varchar(50) not null,
	puntosVida int not null,
	nombre varchar(50) not null,
	estatus boolean not null default true
);

CREATE TABLE Jugador
(
	idJugador serial primary key,
	gamertag varchar(50) not null,
	aspecto varchar(50) not null,
	puntosVida int not null,
	puntosAlimento int not null,
	puntosExperiencia int not null,
	idInventario int not null,
	idConfigMundo int not null,
	idMenu int not null,
	idEstadistica int not null,
	idConfigUsuario int not null,
	estatus boolean not null default true
);

CREATE TABLE Logro
(
	idLogro serial primary key,
	nombre varchar(50) not null,
	recompensa varchar(50) not null,
	puntosJugador int not null,
	tiempoJuego int not null,
	tipo varchar(50) not null,
	idJugador int not null,
	estatus boolean not null default true
);

CREATE TABLE Mascota
(
	idMascota serial primary key,
	nombre varchar(50) not null,
	tipo int not null,
	puntosVida int not null,
	comida int not null,
	idJugador int not null,
	estatus boolean not null default true
);

CREATE TABLE Menu
(
	idMenu serial primary key,
	accion varchar(50) not null,
	estatus boolean not null default true
);


CREATE TABLE MesaTrabajo
(
	idMesaTrabajo serial primary key,
	tipo varchar(50) not null,
	idInventario int not null,
	estatus boolean not null default true
);

CREATE TABLE Mob
(
	idMob serial primary key,
	puntosVida int not null,
	botin varchar(50) not null,
	habilidad varchar(50) not null,
	tipo varchar(50) not null,
	nombre varchar(50) not null,
	puntosDaño int not null,
	estatus boolean not null default true
);

CREATE TABLE Modd
(
	idModd serial primary key,
	nombre varchar(50) not null,
	versionMod int not null,
	formato varchar(50) not null,
	estatus boolean not null default true
);

CREATE TABLE ModoJuego
(
	idModoJuego serial primary key,
	tipo varchar(50) not null,
	dificultad varchar(50) not null,
	preferencia varchar(50) not null,
	estatus boolean not null default true
);

CREATE TABLE ModoServidor
(
	idModoServidor serial primary key,
	tipo int not null,
	estatus boolean not null
);

CREATE TABLE Mundo
(
	idMundo serial primary key,
	nombre varchar(50) not null,
	tipo varchar(50) not null,
	idParche int not null,
	estatus boolean not null default true
);

CREATE TABLE Sonido
(
	idSonido serial primary key,
	principal varchar(50) not null,
	musica int not null,
	ambiente varchar(50) not null,
	bloque int not null,
	criatura int not null,
	estatus boolean not null default true
);

CREATE TABLE PackRecurso
(
	idPackRecurso serial primary key,
	nombre varchar(50) not null,
	formato varchar(50) not null,
	estatus boolean not null default true
);

CREATE TABLE PackTextura
(
	idPackTextura serial primary key,
	nombre varchar(50) not null,
	formato varchar(50) not null,
	estatus boolean not null default true
);

CREATE TABLE Parche
(
	idParche serial primary key,
	versioParche int not null,
	formato varchar(50) not null,
	fechaActualizacion timestamp not null,
	estatus boolean not null default true
);

CREATE TABLE Pesca
(
	idPesca serial primary key,
	tipo varchar(50) not null,
	botin varchar(50) not null,
	estatus boolean not null default true
);


CREATE TABLE Plugin
(
	idPlugin serial primary key,
	nombre varchar(50) not null,
	main varchar(50) not null,
	versionPlugin int not null,
	estatus boolean not null default true
);

CREATE TABLE Pocion
(
	idPocion serial primary key,
	nombre varchar(50) not null,
	tipo varchar(50) not null,
	puntosDaño int not null,
	puntosVida int not null,
	estatus boolean not null default true
);

CREATE TABLE Servidor
(
	idServidor serial primary key,
	nombre varchar(50) not null,
	dificultad varchar(50) not null,
	idModoServidor int not null,
	estatus boolean not null default true
);

CREATE TABLE Stack
(
	idStack serial primary key,
	nombre varchar(50) not null,
	limiteItem int not null,
	idInventario int not null,
	estatus boolean not null default true
);

--Foraneas Pendientes
--Crafteo
ALTER TABLE Crafteo ADD CONSTRAINT FK_CrafteoMesaTrabajo FOREIGN KEY (idMesaTrabajo) REFERENCES 
MesaTrabajo(idMesaTrabajo);
ALTER TABLE Crafteo ADD CONSTRAINT FK_CrafteoInventario FOREIGN KEY (idInventario) REFERENCES 
Inventario(idInventario);
--Jugador
ALTER TABLE Jugador ADD CONSTRAINT FK_JugadorInventario FOREIGN KEY (idInventario) REFERENCES 
Inventario(idInventario);
ALTER TABLE Jugador ADD CONSTRAINT FK_JugadorConfigMundo FOREIGN KEY (idConfigMundo) REFERENCES 
ConfigMundo(idConfigMundo);
ALTER TABLE Jugador ADD CONSTRAINT FK_JugadorMenu FOREIGN KEY (idMenu) REFERENCES 
Menu(idMenu);
ALTER TABLE Jugador ADD CONSTRAINT FK_JugadorEstadistica FOREIGN KEY (idEstadistica) REFERENCES 
Estadistica(idEstadistica);
ALTER TABLE Jugador ADD CONSTRAINT FK_JugadorConfigUsuario FOREIGN KEY (idConfigUsuario) REFERENCES 
ConfigUsuario(idConfigUsuario);
--Logro
ALTER TABLE Logro ADD CONSTRAINT FK_LogroJugador FOREIGN KEY (idJugador) REFERENCES 
Jugador(idJugador);
--Mascota
ALTER TABLE Mascota ADD CONSTRAINT FK_MascotaJugador FOREIGN KEY (idJugador) REFERENCES 
Jugador(idJugador);
--MesaTrabajo
ALTER TABLE MesaTrabajo ADD CONSTRAINT FK_MesaTrabajoInventario FOREIGN KEY (idInventario) REFERENCES 
Inventario(idInventario);
--Mundo
ALTER TABLE Mundo ADD CONSTRAINT FK_MundoParche FOREIGN KEY (idParche) REFERENCES 
Parche(idParche);
--Servidor
ALTER TABLE Servidor ADD CONSTRAINT FK_idServidorModoServidor FOREIGN KEY (idModoServidor) REFERENCES 
ModoServidor(idModoServidor);
--Stack
ALTER TABLE Stack ADD CONSTRAINT FK_StackInventario FOREIGN KEY (idInventario) REFERENCES 
Inventario(idInventario);
--MundoParche
ALTER TABLE MundoParche ADD CONSTRAINT FK_MundoParcheMundo FOREIGN KEY (idMundo) REFERENCES 
Mundo(idMundo);
ALTER TABLE MundoParche ADD CONSTRAINT FK_MundoParcheParche FOREIGN KEY (idParche) REFERENCES 
Parche(idParche);
--EncantamientoEfecto
ALTER TABLE EncantamientoEfecto ADD CONSTRAINT FK_EncantamientoEfectoEfecto FOREIGN KEY (idEfecto) REFERENCES 
Efecto(idEfecto);
ALTER TABLE EncantamientoEfecto ADD CONSTRAINT FK_EncantamientoEfectoEncantamiento FOREIGN KEY (idEncantamiento) REFERENCES 
Encantamiento(idEncantamiento);
--JugadorAmigo
ALTER TABLE JugadorAmigo ADD CONSTRAINT FK_JugadorAmigoAmigo FOREIGN KEY (idAmigo) REFERENCES 
Amigo(idAmigo);
ALTER TABLE JugadorAmigo ADD CONSTRAINT FK_JugadorAmigoJugador FOREIGN KEY (idJugador) REFERENCES 
Jugador(idJugador);
--JugadorComercio
ALTER TABLE JugadorComercio ADD CONSTRAINT FK_JugadorComercioComercio FOREIGN KEY (idComercio) REFERENCES 
Comercio(idComercio);
ALTER TABLE JugadorComercio ADD CONSTRAINT FK_JugadorComercioJugador FOREIGN KEY (idJugador) REFERENCES 
Jugador(idJugador);
--JugadorItem
ALTER TABLE JugadorItem ADD CONSTRAINT FK_JugadorItemItem FOREIGN KEY (idItem) REFERENCES 
Item(idItem);
ALTER TABLE JugadorItem ADD CONSTRAINT FK_JugadorItemJugador FOREIGN KEY (idJugador) REFERENCES 
Jugador(idJugador);
--JugadorServidor
ALTER TABLE JugadorServidor ADD CONSTRAINT FK_JugadorServidorServidor FOREIGN KEY (idServidor) REFERENCES 
Servidor(idServidor);
ALTER TABLE JugadorServidor ADD CONSTRAINT FK_JugadorServidorJugador FOREIGN KEY (idJugador) REFERENCES 
Jugador(idJugador);
--MesaTrabajoEncantamiento
ALTER TABLE MesaTrabajoEncantamiento ADD CONSTRAINT FK_MesaTrabajoEncantamientoEncantamiento FOREIGN KEY (idEncantamiento) REFERENCES 
Encantamiento(idEncantamiento);
ALTER TABLE MesaTrabajoEncantamiento ADD CONSTRAINT FK_MesaTrabajoEncantamientoMesaTrabajo FOREIGN KEY (idMesatrabajo) REFERENCES 
MesaTrabajo(idMesaTrabajo);
--MesaTrabajoJugador
ALTER TABLE MesaTrabajoJugador ADD CONSTRAINT FK_MesaTrabajoJugadorJugador FOREIGN KEY (idJugador) REFERENCES 
Jugador(idJugador);
ALTER TABLE MesaTrabajoJugador ADD CONSTRAINT FK_MesaTrabajoJugadorMesaTrabajo FOREIGN KEY (idMesaTrabajo) REFERENCES 
MesaTrabajo(idMesaTrabajo);
--MundoAldea
ALTER TABLE MundoAldea ADD CONSTRAINT FK_MundoAldeaAldea FOREIGN KEY (idAldea) REFERENCES 
Aldea(idAldea);
ALTER TABLE MundoAldea ADD CONSTRAINT FK_MundoAldeaMundo FOREIGN KEY (idMundo) REFERENCES 
Mundo(idMundo);
--MundoBloque
ALTER TABLE MundoBloque ADD CONSTRAINT FK_MundoBloqueMundo FOREIGN KEY (idMundo) REFERENCES 
Mundo(idMundo);
ALTER TABLE MundoBloque ADD CONSTRAINT FK_MundoBloqueBloque FOREIGN KEY (idBloque) REFERENCES 
Bloque(idBloque);
--MundoDimension
ALTER TABLE MundoDimension ADD CONSTRAINT FK_MundoDimension FOREIGN KEY (idDimension) REFERENCES 
Dimension(idDimension);
--MundoEcosistema
ALTER TABLE MundoEcosistema ADD CONSTRAINT FK_MundoEcosistemaMundo FOREIGN KEY (idMundo) REFERENCES 
Mundo(idMundo);
ALTER TABLE MundoEcosistema ADD CONSTRAINT FK_MundoEcosistemaEcosistema FOREIGN KEY (idEcosistema) REFERENCES 
Ecosistema(idEcosistema);
--MundoEstructura
ALTER TABLE MundoEstructura ADD CONSTRAINT FK_MundoEsctructuraMundo FOREIGN KEY (idMundo) REFERENCES 
Mundo(idMundo);
ALTER TABLE MundoEstructura ADD CONSTRAINT FK_MundoEstructura FOREIGN KEY (idEstructura) REFERENCES 
Estructura(idEstructura);
--MundoFluido
ALTER TABLE MundoFluido ADD CONSTRAINT FK_MundoFluidoMundo FOREIGN KEY (idMundo) REFERENCES 
Mundo(idMundo);
ALTER TABLE MundoFluido ADD CONSTRAINT FK_MundoFluidoFluido FOREIGN KEY (idFluido) REFERENCES 
Fluido(idFluido);
--MundoFortaleza
ALTER TABLE MundoFortaleza ADD CONSTRAINT FK_MundoFortalezaMundo FOREIGN KEY (idMundo) REFERENCES 
Mundo(idMundo);
ALTER TABLE MundoFortaleza ADD CONSTRAINT FK_MundoFortalezaFortaleza FOREIGN KEY (idFortaleza) REFERENCES 
Fortaleza(idFortaleza);
--MundoGeneracion
ALTER TABLE MundoGeneracion ADD CONSTRAINT FK_MundoGeneracionGeneracion FOREIGN KEY (idGeneracion) REFERENCES 
Generacion(idGeneracion);
ALTER TABLE MundoGeneracion ADD CONSTRAINT FK_MundoGeneracionMundo FOREIGN KEY (idMundo) REFERENCES 
Mundo(idMundo);
--MundoJefe
ALTER TABLE MundoJefe ADD CONSTRAINT FK_MundoJefeMundo FOREIGN KEY (idMundo) REFERENCES 
Mundo(idMundo);
ALTER TABLE MundoJefe ADD CONSTRAINT FK_MundoJefeJefe FOREIGN KEY (idJefe) REFERENCES 
Jefe(idJefe);
--MundoJugador
ALTER TABLE MundoJugador ADD CONSTRAINT FK_MundoJugadorMundo FOREIGN KEY (idMundo) REFERENCES 
Mundo(idMundo);
ALTER TABLE MundoJugador ADD CONSTRAINT FK_MundoJugadorJugador FOREIGN KEY (idJugador) REFERENCES 
Jugador(idJugador);
--MundoMob
ALTER TABLE MundoMob ADD CONSTRAINT FK_MundoMobMundo FOREIGN KEY (idMundo) REFERENCES 
Mundo(idMundo);
ALTER TABLE MundoMob ADD CONSTRAINT FK_MundoMobMob FOREIGN KEY (idMob) REFERENCES 
Mob(idMob);
--MundoMod
ALTER TABLE MundoModd ADD CONSTRAINT FK_MundoModdMundo FOREIGN KEY (idMundo) REFERENCES 
Mundo(idMundo);
ALTER TABLE MundoModd ADD CONSTRAINT FK_MundoModdModd FOREIGN KEY (idModd) REFERENCES 
Modd(idModd);
--MundoPackRecurso
ALTER TABLE MundoPackRecurso ADD CONSTRAINT FK_MundoPackRecursoMundo FOREIGN KEY (idMundo) REFERENCES 
Encantamiento(idEncantamiento);
ALTER TABLE MundoPackRecurso ADD CONSTRAINT FK_MundoPackRecursoPackRecurso FOREIGN KEY (idPackRecurso) REFERENCES 
PackRecurso(idPackrecurso);
--MundoPackTextura
ALTER TABLE MundoPackTextura ADD CONSTRAINT FK_MundoPackTexturaMundo FOREIGN KEY (idMundo) REFERENCES 
Mundo(idMundo);
ALTER TABLE MundoPackTextura ADD CONSTRAINT FK_MundoPackTexturaPackTextura FOREIGN KEY (idPackTextura) REFERENCES 
PackTextura(idPackTextura);
--MundoTemplo
ALTER TABLE MundoTemplo ADD CONSTRAINT FK_MundoTemploMundo FOREIGN KEY (idMundo) REFERENCES 
Mundo(idMundo);
ALTER TABLE MundoTemplo ADD CONSTRAINT FK_MundoTemploTemplo FOREIGN KEY (idTemplo) REFERENCES 
Templo(idTemplo);


--Index
CREATE INDEX IX_Aldea ON Aldea(idAldea);
CREATE INDEX IX_Amigo ON Amigo(idAmigo);
CREATE INDEX IX_Animal ON Animal(idAnimal);
CREATE INDEX IX_Arma ON Arma(idArma);
CREATE INDEX IX_Armadura ON Armadura(idArmadura);
CREATE INDEX IX_Bloque ON Bloque(idBloque);
CREATE INDEX IX_Chat ON Chat (idChat);
CREATE INDEX IX_Chunk ON Chunk(idChunk);
CREATE INDEX IX_Comida ON Comida (idComida);
CREATE INDEX IX_Comercio ON Comercio (idComercio);
CREATE INDEX IX_ConfigMundo ON ConfigMundo(idConfigMundo);
CREATE INDEX IX_ConfigUsuario ON ConfigUsuario(idConfigUsuario);
CREATE INDEX IX_Coordenada ON Coordenada(idCoordenada);
CREATE INDEX IX_Crafteo ON Crafteo(idCrafteo);
CREATE INDEX IX_Cultivo ON Cultivo(idCultivo);
CREATE INDEX IX_Dimension ON Dimension(idDimension);
CREATE INDEX IX_Ecosistema ON Ecosistema(idEcosistema);
CREATE INDEX IX_Efecto ON Efecto(idEfecto);
CREATE INDEX IX_Encantamiento ON Encantamiento(idEncantamiento);
CREATE INDEX IX_Estadistica ON Estadistica(idEstadistica);
CREATE INDEX IX_Estructura ON Estructura(idEstructura);
CREATE INDEX IX_Evento ON Evento(idEvento);
CREATE INDEX IX_Fluido ON Fluido(idFluido);
CREATE INDEX IX_Fortaleza ON Fortaleza(idFortaleza);
CREATE INDEX IX_Generacion ON Generacion(idGeneracion);
CREATE INDEX IX_Herramienta ON Herramienta(idHerramienta);
CREATE INDEX IX_Inventario ON Inventario(idInventario);
CREATE INDEX IX_Item ON Item(idItem);
CREATE INDEX IX_Jefe ON Jefe(idJefe);
CREATE INDEX IX_Jugador ON Jugador(idJugador);
CREATE INDEX IX_Logro ON Logro(idLogro);
CREATE INDEX IX_Mascota ON Mascota(idMascota);
CREATE INDEX IX_Menu ON Menu(idMenu);
CREATE INDEX IX_MesaTrabajo ON MesaTrabajo(idMesaTrabajo);
CREATE INDEX IX_Mob ON Mob(idMob);
CREATE INDEX IX_Modd ON Modd(idModd);
CREATE INDEX IX_ModoJuego ON ModoJuego(idModoJuego);
CREATE INDEX IX_ModoServidor ON ModoServidor(idModoServidor);
CREATE INDEX IX_Mundo ON Mundo(idMundo);
CREATE INDEX IX_Sonido ON Sonido(idSonido);
CREATE INDEX IX_PackRecurso ON PackRecurso(idPackRecurso);
CREATE INDEX IX_PackTextura ON PackTextura(idPackTextura);
CREATE INDEX IX_Parche ON Parche(idParche);
CREATE INDEX IX_Pesca ON Pesca(idPesca);
CREATE INDEX IX_Plugin ON Plugin(idPlugin);
CREATE INDEX IX_Pocion ON Pocion(idPocion);
CREATE INDEX IX_Servidor ON Servidor(idServidor);
CREATE INDEX IX_Templo ON Templo(idTemplo);
CREATE INDEX IX_Stack ON Stack(idStack);
CREATE INDEX IX_Tesoro ON Tesoro(idTesoro);

--Aldea
INSERT INTO Aldea(estilo, evento, botin) values ('Desierto','Asalto', 'Pala de hierro');

INSERT INTO Aldea(estilo, evento, botin) values ('Llanura','Cultivo', 'papa');

INSERT INTO Aldea(estilo, evento, botin) values ('Prado','Asalto', 'Pala de piedra');

INSERT INTO Aldea(estilo, evento, botin) values ('Sabana','Asalto', 'Azada de hierro');

INSERT INTO Aldea(estilo, evento, botin) values ('Taiga nevada','Hordas', 'carne podrida');

INSERT INTO Aldea(estilo, evento, botin) values ('Llanura','Asalto', 'pan');

INSERT INTO Aldea(estilo, evento, botin) values ('Taiga','Cultivo', 'Zanahorias');

INSERT INTO Aldea(estilo, evento, botin) values ('LLanura nevada','Cultivo', 'Remolachas');

INSERT INTO Aldea(estilo, evento, botin) values ('Desierto','Asalto', 'Libros');

INSERT INTO Aldea(estilo, evento, botin) values ('Taiga nevada','Asalto', 'Mapa');

--Amigo
INSERT INTO Amigo(gamertag, aspecto) values ('Barbiqiu', 'Calamardo');

INSERT INTO Amigo(gamertag, aspecto) values ('AxRadiel', 'Personalizado');

INSERT INTO Amigo(gamertag, aspecto) values ('juso', 'Zombie');

INSERT INTO Amigo(gamertag, aspecto) values ('Roles', 'Creeper');

INSERT INTO Amigo(gamertag, aspecto) values ('yosare', 'Endeman');

INSERT INTO Amigo(gamertag, aspecto) values ('lucho', 'Personalizado');

INSERT INTO Amigo(gamertag, aspecto) values ('rino', 'Jirafa');

INSERT INTO Amigo(gamertag, aspecto) values ('losa', 'Creeper');

INSERT INTO Amigo(gamertag, aspecto) values ('serrato', 'Zombie');

INSERT INTO Amigo(gamertag, aspecto) values ('Yusiniu', 'Personalizado');

--Animal
INSERT INTO Animal(puntosVida, botin, tipoAnimal) values (4, 'Cuero', 'Vaca');

INSERT INTO Animal(puntosVida, botin, tipoAnimal) values (4, 'Leche', 'Vaca');

INSERT INTO Animal(puntosVida, botin, tipoAnimal) values (5, 'Ternera', 'Oveja');

INSERT INTO Animal(puntosVida, botin, tipoAnimal) values (4, 'Carne de res', 'Vaca');

INSERT INTO Animal(puntosVida, botin, tipoAnimal) values (4, 'Carne de cerdo', 'Cerdo');

INSERT INTO Animal(puntosVida, botin, tipoAnimal) values (1, 'Bacalao', 'Pez');

INSERT INTO Animal(puntosVida, botin, tipoAnimal) values (2, 'Pluma', 'pollo');

INSERT INTO Animal(puntosVida, botin, tipoAnimal) values (5, 'Cuero', 'Caballo');

INSERT INTO Animal(puntosVida, botin, tipoAnimal) values (3, 'Cuero de conejo', 'Conejo');

INSERT INTO Animal(puntosVida, botin, tipoAnimal) values (3, 'carne de conejo', 'Conejo');

--Arma
INSERT INTO Arma(tipoArma, nombre, material, daño, resistencia) Values ('arco', 'arco', 'palos', 5, 6);

INSERT INTO Arma(tipoArma, nombre, material, daño, resistencia) Values ('espada', 'espada de diamante', 'diamante', 6, 7);

INSERT INTO Arma(tipoArma, nombre, material, daño, resistencia) Values ('ballesta', 'ballesta', 'palos', 5, 6);

INSERT INTO Arma(tipoArma, nombre, material, daño, resistencia) Values ('espada', 'espada de oro', 'oro', 5, 4);

INSERT INTO Arma(tipoArma, nombre, material, daño, resistencia) Values ('acha', 'acha de hierro', 'hierro', 6, 6);

INSERT INTO Arma(tipoArma, nombre, material, daño, resistencia) Values ('espada', 'espada de netherita', 'netherita', 5, 6);

INSERT INTO Arma(tipoArma, nombre, material, daño, resistencia) Values ('espada', 'espada de hierro', 'hierro', 5, 6);

INSERT INTO Arma(tipoArma, nombre, material, daño, resistencia) Values ('espada', 'espada de piedra', 'piedra', 4, 5);

INSERT INTO Arma(tipoArma, nombre, material, daño, resistencia) Values ('acha', 'acha de piedra', 'piedra', 4, 5);

INSERT INTO Arma(tipoArma, nombre, material, daño, resistencia) Values ('acha', 'acha de diamante', 'diamante', 6, 7);

--Armadura
INSERT INTO Armadura(material, nombre, resistencia, idInventario) values ('Diamante', 'Armadura de diamante', 6, 1);

INSERT INTO Armadura(material, nombre, resistencia, idInventario) values ('Oro', 'Armadura de oro', 3, 2);

INSERT INTO Armadura(material, nombre, resistencia, idInventario) values ('Hierro', 'Armadura de hierro', 4,3);

INSERT INTO Armadura(material, nombre, resistencia, idInventario) values ('Cuero', 'Armadura de cuero',  2,4);

INSERT INTO Armadura(material, nombre, resistencia, idInventario) values ('Maya', 'Armadura de Maya', 1,5);

INSERT INTO Armadura(material, nombre, resistencia, idInventario) values ('Netherita', 'Armadura de netherita', 7,6);

INSERT INTO Armadura(material, nombre, resistencia, idInventario) values ('Diamante', 'Armadura de diamante para caballo', 6,7);

INSERT INTO Armadura(material, nombre, resistencia, idInventario) values ('Oro', 'Armadura de oro para caballo',3,8);

INSERT INTO Armadura(material, nombre, resistencia, idInventario) values ('Hierro', 'Armadura de hierro para caballo', 4,9);

INSERT INTO Armadura(material, nombre, resistencia, idInventario) values ('Cuero', 'Armadura de cuero para caballo', 2,10);


--Bloque
INSERT INTO Bloque(material, nombre) values ('piedra','bloque de piedra');

INSERT INTO Bloque(material, nombre) values ('cuarzo','bloque de cuarzo');

INSERT INTO Bloque(material, nombre) values ('madera','bloque de madera');

INSERT INTO Bloque(material, nombre) values ('hojas','bloque de hojas');

INSERT INTO Bloque(material, nombre) values ('piedra','bloque de piedra');

INSERT INTO Bloque(material, nombre) values ('arena','bloque de arena');

INSERT INTO Bloque(material, nombre) values ('tierra','bloque de tierra');

INSERT INTO Bloque(material, nombre) values ('hierro','bloque de hierro');

INSERT INTO Bloque(material, nombre) values ('obsidiana','bloque de obsidiana');

INSERT INTO Bloque(material, nombre) values ('cuarzo','bloque de cuarzo');

--Chat
INSERT INTO Chat(fuente, color,espaciadolinea) values ('arial', 'negro', 1);

INSERT INTO Chat(fuente, color,espaciadolinea) values ('calibri', 'rojo', 1.5);

INSERT INTO Chat(fuente, color,espaciadolinea) values ('times new roman', 'negro', 1);

INSERT INTO Chat(fuente, color,espaciadolinea) values ('arial narrow', 'verde', 1);

INSERT INTO Chat(fuente, color,espaciadolinea) values ('algerian', 'negro', 1.5);

INSERT INTO Chat(fuente, color,espaciadolinea) values ('georgia', 'azul', 1);

INSERT INTO Chat(fuente, color,espaciadolinea) values ('arial', 'rojo', 1);

INSERT INTO Chat(fuente, color,espaciadolinea) values ('calibri', 'negro', 1);

INSERT INTO Chat(fuente, color,espaciadolinea) values ('times new roman', 'amarillo', 1.5);

INSERT INTO Chat(fuente, color,espaciadolinea) values ('arial', 'negro', 1.5);

--Chunk
INSERT INTO Chunk(limite, formato) values (10, 'png');

INSERT INTO Chunk(limite, formato) values (32, 'avi');

INSERT INTO Chunk(limite, formato) values (22, 'png');

INSERT INTO Chunk(limite, formato) values (10, 'mp3');

INSERT INTO Chunk(limite, formato) values (30, 'avi');

INSERT INTO Chunk(limite, formato) values (25, 'avi');

INSERT INTO Chunk(limite, formato) values (32, 'png');

INSERT INTO Chunk(limite, formato) values (28, 'png');

INSERT INTO Chunk(limite, formato) values (30, 'png');

--Comercio
INSERT INTO Comercio(tipoComercio, tipoIntercambio) values ('vendedor ambulante', 'zanahoria');

INSERT INTO Comercio(tipoComercio, tipoIntercambio) values ('cartografo', 'esmeralda');

INSERT INTO Comercio(tipoComercio, tipoIntercambio) values ('herrero', 'lingote de hierro');

INSERT INTO Comercio(tipoComercio, tipoIntercambio) values ('carnicero', 'esmeralda');

INSERT INTO Comercio(tipoComercio, tipoIntercambio) values ('granjero', 'semillas de trigo');

INSERT INTO Comercio(tipoComercio, tipoIntercambio) values ('bibliotecario', 'cuero');

INSERT INTO Comercio(tipoComercio, tipoIntercambio) values ('carnicero', 'esmeralda');

INSERT INTO Comercio(tipoComercio, tipoIntercambio) values ('cartografo', 'lingote de hierro');

INSERT INTO Comercio(tipoComercio, tipoIntercambio) values ('vendedor ambulante', 'lingote de oro');

INSERT INTO Comercio(tipoComercio, tipoIntercambio) values ('pescador', 'esmeralda');

--Comida
INSERT INTO Comida(tipo, valorNutrimental, nombre, ingredientes) values ('carne', 3, 'filete', 'vaca');

INSERT INTO Comida(tipo, valorNutrimental, nombre, ingredientes) values ('vegetal', 0.5, 'zanahoria', 'zanahoria');

INSERT INTO Comida(tipo, valorNutrimental, nombre, ingredientes) values ('postre', 6, 'pastel', 'huevo, leche, azucar, trigo');

INSERT INTO Comida(tipo, valorNutrimental, nombre, ingredientes) values ('carne', 3, 'chuleta', 'cerdo');

INSERT INTO Comida(tipo, valorNutrimental, nombre, ingredientes) values ('fruta', 0.5, 'manzana', 'manzana');

INSERT INTO Comida(tipo, valorNutrimental, nombre, ingredientes) values ('postre', 3, 'pastel de calabaza', 'azucar, huevo, calabaza');

INSERT INTO Comida(tipo, valorNutrimental, nombre, ingredientes) values ('pollo', 3, 'pollo asado', 'pollo');

INSERT INTO Comida(tipo, valorNutrimental, nombre, ingredientes) values ('carne', 3, 'carne de conejo', 'conejo');

INSERT INTO Comida(tipo, valorNutrimental, nombre, ingredientes) values ('sopa', 2, 'sopa de champiñon', 'champiñon, plato');

INSERT INTO Comida(tipo, valorNutrimental, nombre, ingredientes) values ('carne', 3, 'chuleta', 'vaca');

--ConfigMundo
INSERT INTO ConfigMundo(modoJuego, dificultad, preferencia, semilla, tipo) values ('creativo', 'nulo', 'mapa', 33367, 'super plano');

INSERT INTO ConfigMundo(modoJuego, dificultad, preferencia, semilla, tipo) values ('supervivencia', 'normal', 'cofre de bonificación', 65432, 'clasico');

INSERT INTO ConfigMundo(modoJuego, dificultad, preferencia, semilla, tipo) values ('supervivencia', 'dificil', 'cofre de bonificación', 733433, 'sky block');

INSERT INTO ConfigMundo(modoJuego, dificultad, preferencia, semilla, tipo) values ('creativo', 'nulo', 'nulo', 034885893, 'clasico');

INSERT INTO ConfigMundo(modoJuego, dificultad, preferencia, semilla, tipo) values ('aventura', 'normal', 'mapa', 82664, 'clasico');

INSERT INTO ConfigMundo(modoJuego, dificultad, preferencia, semilla, tipo) values ('creativo', 'nulo', 'nulo', 123456, 'clasico');

INSERT INTO ConfigMundo(modoJuego, dificultad, preferencia, semilla, tipo) values ('extremo', 'dificil', 'nulo', 0092321, 'clasico');

INSERT INTO ConfigMundo(modoJuego, dificultad, preferencia, semilla, tipo) values ('aventura', 'normal', 'nulo', 99823, 'sky bolck');

INSERT INTO ConfigMundo(modoJuego, dificultad, preferencia, semilla, tipo) values ('extremo', 'normal', 'nulo', 23093, 'clasico');

INSERT INTO ConfigMundo(modoJuego, dificultad, preferencia, semilla, tipo) values ('creativo', 'nulo', 'nulo', 8399392, 'clasico');

--ConfigUsuario
INSERT INTO ConfigUsuario(gamertag, idioma) values ('barbiqiu', 'español');

INSERT INTO ConfigUsuario(gamertag, idioma) values ('AxRadiel', 'inglés');

INSERT INTO ConfigUsuario(gamertag, idioma) values ('Rinoxd', 'español');

INSERT INTO ConfigUsuario(gamertag, idioma) values ('Aguilablanca', 'español');

INSERT INTO ConfigUsuario(gamertag, idioma) values ('Kev0ti', 'inglés');

INSERT INTO ConfigUsuario(gamertag, idioma) values ('taquito32', 'inglés');

INSERT INTO ConfigUsuario(gamertag, idioma) values ('Camenio', 'inglés');

INSERT INTO ConfigUsuario(gamertag, idioma) values ('patoasado2', 'español');

INSERT INTO ConfigUsuario(gamertag, idioma) values ('frurro54', 'español');

INSERT INTO ConfigUsuario(gamertag, idioma) values ('paco63', 'inglés');

--Cordenada
INSERT INTO Coordenada(ejeX, ejeY,ejeZ) values (0293838, 134085, 33);

INSERT INTO Coordenada(ejeX, ejeY,ejeZ) values (5456372, 0039499200, 2284);

INSERT INTO Coordenada(ejeX, ejeY,ejeZ) values (0293838, 134085, 19);

INSERT INTO Coordenada(ejeX, ejeY,ejeZ) values (0293838, 134085, 0031);

INSERT INTO Coordenada(ejeX, ejeY,ejeZ) values (0293838, 134085, -34);

INSERT INTO Coordenada(ejeX, ejeY,ejeZ) values (-994884, 431662, 11);

INSERT INTO Coordenada(ejeX, ejeY,ejeZ) values (0293838, 134085, -322);

INSERT INTO Coordenada(ejeX, ejeY,ejeZ) values (-0004789239, 47823, 33);

INSERT INTO Coordenada(ejeX, ejeY,ejeZ) values (988492911, 134085, -44736);

INSERT INTO Coordenada(ejeX, ejeY,ejeZ) values (09953932, 498937, 0029394);

--Crafteo
INSERT INTO Crafteo(tipo, detalle, idMesatrabajo, idInventario) values ('mesa de trabajo', 'pechera de hierro con 5 de resistencia', 10, 1);

INSERT INTO Crafteo(tipo, detalle, idMesatrabajo, idInventario) values ('mesa de trabajo', 'pala de madera con 3 de resistencia', 14, 33);

INSERT INTO Crafteo(tipo, detalle, idMesatrabajo, idInventario) values ('mesa de trabajo', 'cama color blanca', 3, 8);

INSERT INTO Crafteo(tipo, detalle, idMesatrabajo, idInventario) values ('inventario', 'mesa de trabajo', 11, 7);

INSERT INTO Crafteo(tipo, detalle, idMesatrabajo, idInventario) values ('mesa de trabajo', 'horno de piedra', 14, 19);

INSERT INTO Crafteo(tipo, detalle, idMesatrabajo, idInventario) values ('mesa de trabajo', 'hacha de madera con 3 de resistencia', 31, 9);

INSERT INTO Crafteo(tipo, detalle, idMesatrabajo, idInventario) values ('mesa de trabajo', 'pala de hierro con 5 de resistencia', 21, 10);

INSERT INTO Crafteo(tipo, detalle, idMesatrabajo, idInventario) values ('inventario', 'antorcha con carbón vegetal', 15, 11);

INSERT INTO Crafteo(tipo, detalle, idMesatrabajo, idInventario) values ('inventario', 'palos de madera', 16, 20);

INSERT INTO Crafteo(tipo, detalle, idMesatrabajo, idInventario) values ('inventario', 'mechero', 7, 19);

--Cultivo
INSERT INTO Cultivo(tiempoCultivo, tipo) values ('00:03', 'planta zanahoria');

INSERT INTO Cultivo(tiempoCultivo, tipo) values ('00:10', 'planta bambú');

INSERT INTO Cultivo(tiempoCultivo, tipo) values ('00:5', 'planta trigo');

INSERT INTO Cultivo(tiempoCultivo, tipo) values ('00:03', 'planta papa');

INSERT INTO Cultivo(tiempoCultivo, tipo) values ('00:5', 'planta rabano');

INSERT INTO Cultivo(tiempoCultivo, tipo) values ('00:5', 'planta caña');

INSERT INTO Cultivo(tiempoCultivo, tipo) values ('00:10', 'planta calabaza');

INSERT INTO Cultivo(tiempoCultivo, tipo) values ('00:15', 'planta sandia');

INSERT INTO Cultivo(tiempoCultivo, tipo) values ('00:10', 'arbol de abeto');

INSERT INTO Cultivo(tiempoCultivo, tipo) values ('00:15', 'arbol de jungla');
