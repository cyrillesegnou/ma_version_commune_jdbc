#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------

drop database GestCom;
create database GestCom;
use GestCom;
set autocommit=off;
#------------------------------------------------------------
# Table: representant
#------------------------------------------------------------

CREATE TABLE representant(
        idrep      int (5) Auto_increment  NOT NULL ,
        Prenomrep  Varchar (20) ,
        Nomrep     Varchar (20) ,
        adresse    Varchar (20) ,
        codepostal Int(5) ,
        ville      Varchar (30) ,
        telephone  Varchar (10) ,
        PRIMARY KEY (idrep )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: client
#------------------------------------------------------------

CREATE TABLE client(
        idclient      int (5) Auto_increment  NOT NULL ,
        raisonsociale Varchar (20) ,
        adresse       Varchar (60) ,
        codepostal    Int(5) ,
        ville	      Varchar (30) ,
        telephone     Varchar (10) ,
        idrep         Int(5) ,
        PRIMARY KEY (idclient )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: commande
#------------------------------------------------------------

CREATE TABLE commande(
        numcom   int (5) Auto_increment  NOT NULL ,
        datecom  Date ,
        idclient Int(5) ,
        PRIMARY KEY (numcom )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: article
#------------------------------------------------------------

CREATE TABLE article(
        idarticle   int (5) Auto_increment  NOT NULL ,
        designation Varchar (30) ,
        prixunit    Decimal (8,2) ,
        qtestock    Int(10) ,
        PRIMARY KEY (idarticle )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: ligne_com
#------------------------------------------------------------

CREATE TABLE ligne_com(
        numcom    Int NOT NULL ,
        idarticle Int NOT NULL ,
		qtecom    Int ,
		numlig    Int ,
        PRIMARY KEY (numcom ,idarticle )
)ENGINE=InnoDB;

ALTER TABLE client ADD CONSTRAINT FK_client_idrep FOREIGN KEY (idrep) REFERENCES representant(idrep);
ALTER TABLE commande ADD CONSTRAINT FK_commande_idclient FOREIGN KEY (idclient) REFERENCES client(idclient);
ALTER TABLE ligne_com ADD CONSTRAINT FK_concerner_numcom FOREIGN KEY (numcom) REFERENCES commande(numcom);
ALTER TABLE ligne_com ADD CONSTRAINT FK_concerner_idarticle FOREIGN KEY (idarticle) REFERENCES article(idarticle);

#insertion données


insert into representant (Prenomrep, nomrep, adresse, codepostal, ville, telephone)
values 
('Paul','Dupond','20 Rue des Jardins',69000,'Lyon','0425124556')
,('Jean','Fontaine','10 Place des Armes',75000,'Paris','0125194556'),
('Remi','Hoareau','5 Rue des Acacias',13012,'Marseille','0425194576')
,('Pierre','Sanchez','Rue des Roses',90145,'Belfort','0325129551')
,('Patrick','Garcia','2 bis rue des lilas',33016,'Bordeaux','0515128556')
,('Patrick','lebeaux','80 Rue des Amandines',62000,'Lille','0229123554')
,('David','Legrand','12 Rue des Muguets',18000,'Bourges','0325134556');


# INSERTION DANS CLIENT

insert into client (raisonsociale,adresse,codepostal,ville,telephone,idrep) 
values
('DARTY',null,75005,'paris','0126597820',4),
('INFO SYSTEM','15 rue de la boeme',75007,'PARIS','0135678712',4)
,('CD PRO','1 RUE JEAN MERMOZ',45900,'LA SOURCE','0302345698',5)
,('Multimedia','13 avenue des Tilleuls',92310,'SEVRES','0134568934',5)
,('CARREFOUR',null,13008,'MARSEILLE','0456788932',7)
,('THOMSON',null,33000,'BORDEAUX','0455237806',null);



# INSERTION DANS ARTICLE


insert into article (designation, prixunit, qtestock)
 values 
('Moniteur 28"',300,30)
,('Moniteur 19"',169,20)
, ('Disque dur 5To',240,250)
,('Disque dur 2To',104,350)
,('Clavier SF',79,200)
,('UC HP500-310',514,50)
,('TV LED-3D',3990,10);



# INSERTION DANS COMMANDE


insert into commande (idclient, datecom)
values 
(1, concat(date_format(now() - interval 2 year,'%Y'), '-12-12')),
(3, concat(date_format(now() - interval 2 year,'%Y'), '-12-25')),
(5, concat(date_format(now() - interval 1 year,'%Y'), '-02-12')),
(1, current_date()),
(2, current_date() - interval 4 day),
(4, current_date() + interval 30 day);


# INSERTION DANS LIGNE_COM


insert into ligne_com 
(numcom, idarticle,numlig,qtecom)
values
(1,2,1,3),
(1,6,2,1),
(2,4,1,10),
(3,1,1,1),
(3,5,2,1),
(4,2,1,2),
(4,6,2,3),
(4,1,3,3),
(5,1,1,1),
(6,3,1,3),
(6,4,2,1),
(6,6,3,4),
(3,2,3,15);

COMMIT;

select count(*) from representant;
select count(*) from client;
select count(*) from commande;
select count(*) from article;
select count(*) from ligne_com;
