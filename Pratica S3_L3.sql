/*
L'esercizio è mirato a prendere confidenza con le interrogazioni avanzate SQL che fanno uso di join. 
    Dato il seguente schema scrivere le interrogazioni di seguito:
    
DISCO(NroSerie, TitoloAlbum,Anno,Prezzo)       
    CONTIENE(NroSerieDisco,CodiceReg,NroProg)       
    ESECUZIONE(CodiceReg,TitoloCanz,Anno)       
    AUTORE(Nome,TitoloCanzone)       
    CANTANTE(NomeCantante,CodiceReg)



1. I cantautori (persone che hanno cantato e scritto la stessa canzone) il cui nome inizia per 'D’; 
2. I titoli dei dischi che contengono canzoni di cui non si conosce l'anno di registrazione; 
3. I cantanti che hanno sempre registrato canzoni come solisti.
*/


# Creazione della tabella ESECUZIONE
CREATE TABLE ESECUZIONE (
    CodiceReg INTEGER PRIMARY KEY NOT NULL,
    TitoloCanz TEXT(100),
    Anno INTEGER
);

# Creazione della tabella DISCO
CREATE TABLE DISCO (
    NroSerie INTEGER PRIMARY KEY NOT NULL,
    TitoloAlbum TEXT(100), 
    Anno INTEGER,
    Prezzo DOUBLE
);
  
# Creazione della tabella CONTIENE
CREATE TABLE CONTIENE (
    NroSerieDisco INTEGER,
    CodiceReg INTEGER, 
    NroProg INTEGER,
    FOREIGN KEY (NroSerieDisco) REFERENCES DISCO(NroSerie),
    FOREIGN KEY (CodiceReg) REFERENCES ESECUZIONE(CodiceReg)
);


# Creazione della tabella AUTORE
  create table AUTORE(
      Nome TEXT(100),
      TitoloCanzone TEXT(100)
      );     

# Creazione della tabella CANTANTE

CREATE TABLE CANTANTE (
    NomeCantante VARCHAR(100),
    CodiceReg INTEGER,
    FOREIGN KEY (CodiceReg) REFERENCES ESECUZIONE(CodiceReg)
);

# inserimento valori tabella esecuzione

INSERT INTO ESECUZIONE VALUES (1, 'Pensieri e parole', 1971);
INSERT INTO ESECUZIONE VALUES (2, 'Gino e l alfetta', null);
INSERT INTO ESECUZIONE VALUES (3, 'Quanno Chiove', 1980);
INSERT INTO ESECUZIONE VALUES (4, 'Attenti a Lupo', null);
INSERT INTO ESECUZIONE VALUES (5, 'Via del campo', 1967);

# inserimento valori tabella disco

INSERT INTO DISCO VALUES (123, 'Vol 4', 1971, 20.00);
INSERT INTO DISCO VALUES (456, 'Il latitante', null, 10.00);
INSERT INTO DISCO VALUES (948, 'Nero a metà', 1980, 20.00);
INSERT INTO DISCO VALUES (738, 'Cambio', null, 25.00);
INSERT INTO DISCO VALUES (245, 'Vol 4', 1971, 20.00);

# inserimento valori tabella contiene

INSERT INTO CONTIENE VALUES (123, 1, 67);
INSERT INTO CONTIENE VALUES (456, 2, 89);
INSERT INTO CONTIENE VALUES (948, 3, 24);
INSERT INTO CONTIENE VALUES (738, 4, 86);
INSERT INTO CONTIENE VALUES (245, 5, 25);

# inserimento valori tabella autore

INSERT INTO AUTORE VALUES ("Mogol", "Pensieri e parole");
INSERT INTO AUTORE VALUES ("Daniele Silvestri", "Gino e l alfetta");
INSERT INTO AUTORE VALUES ("Pino Daniele", "Quanno Chiove");
INSERT INTO AUTORE VALUES ("Lucio Dalla", "Attenti a Lupo");
INSERT INTO AUTORE VALUES ("Fabrizio De Andrè", "Via del campo");

# inserimento valori tabella cantante

INSERT INTO CANTANTE VALUES ("Lucio Battisti", 1);
INSERT INTO CANTANTE VALUES ("Daniele Silvestri", 2);
INSERT INTO CANTANTE VALUES ("Pino Daniele", 3);
INSERT INTO CANTANTE VALUES ("Lucio Dalla", 4);
INSERT INTO CANTANTE VALUES ("Fabrizio De Andrè", 5);


/*
1. I cantautori (persone che hanno cantato e scritto la stessa canzone) il cui nome inizia per 'D’; 
2. I titoli dei dischi che contengono canzoni di cui non si conosce l'anno di registrazione; 
3. I cantanti che hanno sempre registrato canzoni come solisti.

DISCO(NroSerie, TitoloAlbum,Anno,Prezzo)       
    CONTIENE(NroSerieDisco,CodiceReg,NroProg)       
    ESECUZIONE(CodiceReg,TitoloCanz,Anno)       
    AUTORE(Nome,TitoloCanzone)       
    CANTANTE(NomeCantante,CodiceReg)


#1. I cantautori (persone che hanno cantato e scritto la stessa canzone) il cui nome inizia per 'D’; 
select c.NomeCantante, a.Nome
from CANTANTE c
join AUTORE a on c.NomeCantante = a.Nome
where c.NomeCantante like "D%" and a.Nome like "D%";


#2. I titoli dei dischi che contengono canzoni di cui non si conosce l'anno di registrazione; 

SELECT d.TitoloAlbum
FROM DISCO d
JOIN CONTIENE c ON d.NroSerie = c.NroSerieDisco
join ESECUZIONE e on e.CodiceReg = c.CodiceReg
WHERE e.Anno IS NULL;
