create Database PROGETTOTSW;

use PROGETTOTSW;

create table Cliente( 
	IndirizzoEmail varchar(320) PRIMARY KEY,
   	password varchar(20) not null,
	tipo varchar(6) not null
);

create table Prodotto( 
	ID varchar(10) PRIMARY KEY,
	urlImmagine varchar(256) not null,
    categoria varchar(30) not null,
    nome varchar (30) not null,
    prezzo double(5,2) not null,
    quantità int not null,
    descrizione text not null
);

create table DatiAnagrafici( 
	nome varchar(30) not null,
    cognome varchar(30) not null,
    sesso varchar(10) not null,
    città varchar(30) not null,
    EmailCliente varchar(320) primary key,
    FOREIGN KEY (EmailCliente) REFERENCES Cliente(IndirizzoEmail)
);

create table IndirizzoSpedizione(
	indirizzo varchar(50) not null,
    EmailCliente varchar(320) primary key,
    FOREIGN KEY (EmailCliente) REFERENCES Cliente(IndirizzoEmail)
);

create table Telefono(
	numero varchar(10) not null,
    EmailCliente varchar(320) primary key,
    FOREIGN KEY (EmailCliente) REFERENCES Cliente(IndirizzoEmail)
);

create table MetodoDiPagamento(
	numeroCarta varchar(20) not null,
    tipo varchar(20) not null,
    EmailCliente varchar(320) primary key,
    FOREIGN KEY (EmailCliente) REFERENCES Cliente(IndirizzoEmail)
);

create table Ordine( 
	ID varchar(10),
    EmailCliente varchar(320),
    dataOrdine date not null,
    costo double(7,5) not null,
    primary key(ID, EmailCliente),
    FOREIGN KEY (EmailCliente) REFERENCES Cliente(IndirizzoEmail)
);

create table Componente(
	IDOrdine varchar(10), 
	EmailCliente varchar(320), 
	IDProdotto varchar(10), 
	quantità int not null,
	primary key(IDOrdine, EmailCliente, IDProdotto),
    
	FOREIGN KEY (EmailCliente) REFERENCES Ordine(EmailCliente),
    FOREIGN KEY (IDOrdine) REFERENCES Ordine(ID),
	FOREIGN KEY (IDProdotto) REFERENCES Prodotto(ID)
);

create table Carrello( 
	EmailCliente varchar(320) primary key,
    costoTotale double(7,2) not null,
    
    FOREIGN KEY (EmailCliente) REFERENCES Cliente(IndirizzoEmail) 
);

create table Contenuto( 
	EmailCliente varchar(320), 
    IDProdotto varchar(10), 
    quantità int not null,
    
    primary key(EmailCliente, IDProdotto),
    FOREIGN KEY (EmailCliente) REFERENCES Carrello(EmailCliente),
	FOREIGN KEY (IDProdotto) REFERENCES Prodotto(ID) 
);

create table MetodoDiSpedizione(
	EmailCliente varchar(320),
	IDOrdine varchar(10),
    numeroTracking varchar(20) not null,
    dataArrivo date not null,
    dettagli text not null,

	primary key(EmailCliente, IDOrdine),
    FOREIGN KEY (EmailCliente) REFERENCES Ordine(IndirizzoEmail),
    FOREIGN KEY (IDOrdine) REFERENCES Ordine(ID)
);
