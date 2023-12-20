/*L'esercizio è mirato a prendere confidenza con le interrogazioni SQL nella loro forma basilare. 
Dato il seguente schema scrivere le interrogazioni di seguito: 
AEROPORTO(Citta, Nazione,NumPiste) 
VOLO(IdVolo,GiornoSett,CittaPart,OraPart,CittaArr,OraArr,TipoAereo) 
AEREO(TipoAereo,NumPasseggeri,QtaMerci) 
Riempire i dataset con valori a caso, almeno 10 righe per dataset:
1. Le città con un aeroporto di cui non è noto il numero di piste; 
2. I tipi di aereo usati nei voli che partono da Torino; 
3. Le città da cui partono voli diretti a Bologna 
4. Le città da cui parte e arriva il volo con codice AZ274;
*/



create table AEROPORTO (
    IdAEROPORTO INTEGER PRIMARY KEY not null,
    Citta TEXT (100), 
    Nazione TEXT (100),
    NumPiste INTEGER
);


CREATE TABLE VOLO (
    IdVolo char(10) not null,
    GiornoSett text (100),
    CittaPart text (100),
    OraPart time,
    CittaArr text(100),
    OraArr time,
    TipoAereo text (100)
); 


create table AEREO (
    IdAEREO integer PRIMARY KEY not null,
    TipoAereo text,
    NumPasseggeri integer,
    QtaMerci integer
    );


insert into AEROPORTO values (345,"Torino", "ITALIA", null);
insert into AEROPORTO values (245, "Udine", "ITALIA", 4);
insert into AEROPORTO values (577, "Bologna", "ITALIA", 1);
insert into AEROPORTO values (987, "Napoli", "ITALIA", 5);
insert into AEROPORTO values (567, "Bologna", "ITALIA", null);
insert into AEROPORTO values (344, "Milano", "ITALIA", 1);
insert into AEROPORTO values (876, "Roma", "ITALIA", 2);
insert into AEROPORTO values (298, "Mikonos", "GRECIA", null);
insert into AEROPORTO values (814, "Barcellona", "SPAGNA", 2);
insert into AEROPORTO values (917, "Parigi", "FRANCIA", 4);



insert into VOLO values ("AZ274","Lunedì", "Torino", '12:30', "Napoli", '14:30', "Airbus A320");
insert into VOLO values ("GH289","Martedì", "Bologna", '9:00', "Torino", '10:30', "Boeing 737");
insert into VOLO values ("BE261","Martedì", "Udine", '10:00', "Milano", '12:30', "Boeing 737");
insert into VOLO values ("WO379","Venerdì", "Milano", '8:00', "Bologna", '10:30', "Airbus A330");
insert into VOLO values ("AZ274","Mercoledì", "Napoli", '9:00', "Torino", '10:30', "Airbus A320");
insert into VOLO values ("LK134","Giovedì", "Bologna", '11:00', "Udine", '12:30', "Boeing 737");
insert into VOLO values ("AZ274","Lunedì", "Bologna", '13:00', "Torino", '14:40', "Airbus A320");
insert into VOLO values ("QG244","Martedì", "Bologna", '17:00', "Roma", '18:30', "Airbus A330");
insert into VOLO values ("AZ274","Mercoledì", "Torino", '9:00', "Bologna", '10:30', "Airbus A320");



insert into AEREO values (546,"Airbus A330", 34, 83);
insert into AEREO values (235,"Airbus A320", 40, 70);
insert into AEREO values (734,"Airbus A330", 23, 45);
insert into AEREO values (766,"Boeing 737", 44, 87);
insert into AEREO values (137,"Boeing 737", 25, 74);
insert into AEREO values (742,"Airbus A330", 20, 69);
insert into AEREO values (375,"Airbus A320", 30, 82);
insert into AEREO values (213,"Boeing 737", 37, 67);
insert into AEREO values (941,"Boeing 737", 29, 85);
insert into AEREO values (283,"Boeing 737", 31, 79);
insert into AEREO values (103,"Airbus A330", 28, 90);
insert into AEREO values (183,"Airbus A320", 24, 63);






#1.Le città con un aeroporto di cui non è noto il numero di piste; 
SELECT Citta
FROM AEROPORTO
WHERE NumPiste is null


#2. I tipi di aereo usati nei voli che partono da Torino; 
select TipoAereo
from VOLO
where CittaPart = "Torino"



# 3. Le città da cui partono voli diretti a Bologna 
select CittaPart
from VOLO
where CittaArr = "Bologna"



4. Le città da cui parte e arriva il volo con codice AZ274;

select CittaPart 
from VOLO
where IdVolo = "AZ274";


#Query a scelta 

#Volo per Roma che arriva alle 15:00 oppure alle 8:00
select IdVolo
from VOLO
where CittaArr = "Roma" AND OraArr <= 14:00 OR OraArr <= 20:00


#voli che partono per Milano per ordine alfabetico 
select IdVolo
from VOLO
where CittaPart = "Milano" 
order by CittaPart

#quanti passeggeri volano con Airbus A320select 
select count(*)
from AEREO
where TipoAereo = "Airbus A320"

