create table Dipendente(
    id integer, 
    nome text, 
    cognome text, 
    email text, 
    numerotelefono text, 
    data_assunzione date, 
    id_lavoro integer, 
    salario decimal, 
    id_manager integer, 
    id_dipartimento integer
    ); 

create table  Dipartimento(
    id_dipartimento integer, 
    nome_dip text, 
    id_manager integer, 
    id_location integer 
    ); 



insert  into Dipendente values (12, "Marco", "Cerri", "marco.cerri@gmail.com", '3342568585', '2019-06-01', 25, 1500, 14, 250),
                               (13, 'Alessia', 'Rossi', 'alessia.rossi@gmail.com', '3351234567', '2020-02-15', 28, 1600, 15, 200),
                               (14, 'Luca', 'Bianchi', 'luca.bianchi@gmail.com', '3349876543', '2018-10-10', 30, 1700, 12, 300),
                               (15, 'Giulia', 'Ricci', 'giulia.ricci@gmail.com', '3378765432', '2018-06-20', 35, 1800, 11, 200),
                               (16, 'Roberto', 'Verdi', 'roberto.verdi@email.com', '3375678901', '2022-06-01', 2, 2000, 1, 150),
                               (17, 'Laura', 'Rizzo', 'laura.rizzo@email.com', '3366789012', '2021-09-12', 3, 2000, 2, 200),
                               (18, 'Giovanni', 'Moretti', 'giovanni.moretti@email.com', '3357890123', '2020-11-25', 1, 3000, 3, 220),
                               (19, 'Francesca', 'Romano', 'francesca.romano@email.com', '3348901234', '2022-08-18', 3, 1800, 2, 100),
                               (12, 'Marco', 'Ferrari', 'marco.ferrari@email.com', '3330123456', '2021-03-05', 2, 1000, 1, 350),
                               (13, 'Elena', 'Gallo', 'elena.gallo@email.com', '3376543210', '2020-07-14', 1, 1300, 3, 290),
(14, 'Simone', 'Conti', 'simone.conti@email.com', '3367890123', '2021-02-28', 2, 1000, 1, 350),
(15, 'Alessandra', 'Galli', 'alessandra.galli@email.com', '3345678901', '2020-06-10', 3, 200, 2, 100),
(16, 'Fabio', 'Mancini', 'fabio.mancini@email.com', '3378901234', '2019-09-22', 1, 5000, 3, 220),
(17, 'Elisa', 'Rinaldi', 'elisa.rinaldi@email.com', '3330123456', '2018-11-15', 2, 2000, 1, 220),
(18, 'Gianluca', 'Costa', 'gianluca.costa@email.com', '3341234567', '2020-04-05', 3, 1000, 2, 200),
(19, 'Marta', 'Ferrara', 'marta.ferrara@email.com', '3362345678', '2021-08-12', 1, 3000, 3, 260),
(12, 'Davide', 'Vitali', 'davide.vitali@email.com', '3353456789', '2022-01-30', 2, 6000, 1, 350),
(13, 'Silvia', 'Riva', 'silvia.riva@email.com', '3374567890', '2021-07-09', 3, 68000, 2, 150),
(14, 'Enrico', 'De Rosa', 'enrico.derosa@email.com', '3345678901', '2020-12-18', 1, 6000, 3, 350),
(15, 'Elena', 'Galli', 'elena.galli@email.com', '3366789012', '2022-04-03', 2, 3000, 1, 200);




insert into Dipartimento values (250, "Scienze Umane", 14, 80),
(200, "Amministrazione", 12, 70),
(300, "Giurisprudenza", 16, 60),
(150,"Scienze politiche", 18, 50),
(260, "Ignegneria", 13, 40),
(220,"Matematica", 17, 30),
(100,"Statistica", 19, 20),
(290, "Lingue", 15, 10);

#Visualizzare il nome e il cognome dei dipendenti assunti nel mese di Giugno

select nome, cognome, data_assunzione
from Dipendente
where month (data_assunzione)= 6;


#Visualizzare gli anni in cui più di 10 dipendenti sono stati assunti

SELECT DATE_FORMAT(data_assunzione, '%Y%') AS anno_assunzione, count(*) as anno_assunzione
FROM Dipendente
GROUP BY anno_assunzione
 HAVING COUNT(anno_assunzione) > 10;


#Visualizzare il nome del dipartimento, il nome del manager, il salario del manager di tutti i manager la cui esperienza è maggiore di 5 anni
SELECT dip.nome_dip, emp.nome, dip.id_dipartimento
FROM Dipendente emp
JOIN Dipartimento dip ON emp.id_dipartimento = dip.id_dipartimento
WHERE YEAR(emp.data_assunzione) > current_timestamp;
