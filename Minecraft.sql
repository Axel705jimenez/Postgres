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