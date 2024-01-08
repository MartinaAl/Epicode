#ID transazione, la categoria del prodotto, il costo a cui si è venduto e lo sconto applicato
-- Tabella Clienti

CREATE TABLE Clienti (
    ClienteID INT PRIMARY KEY,
    NomeCliente varchar(50),
    Email varchar(50),
    numero_telefono varchar (50),
    IDVendita int
    );

-- Tabella Vendite
CREATE TABLE Vendite (
    IDTransazione INT PRIMARY KEY,
    DataVendita DATE,
    CategoriaProdotto VARCHAR(50),
    ClienteID INT,
    Costo DECIMAL(10, 2),
    Sconto DECIMAL(5, 2)
);

-- Tabella DettagliVendite
CREATE TABLE DettagliVendite (
    IDDettaglio INT PRIMARY KEY,
    IDTransazione INT,
    Quantita INT,
    PrezzoUnitario DECIMAL(10, 2),
    FOREIGN KEY (IDTransazione) REFERENCES Vendite(IDTransazione)
);


-- Inserimento dati nella tabella Vendite
INSERT INTO Vendite (IDTransazione, DataVendita, CategoriaProdotto, ClienteID, Costo, Sconto)
VALUES
    (101, '2024-04-08', "Elettronica", 123, 500.00, 50),
    (102, '2024-06-09', "Elettronica", 456, 750.00, 75),
    (103, '2024-04-10', "Elettronica",789, 300.00, 30),
    (104, '2024-01-08', "Abbigliamento", 123, 500.00, 50),
    (105, '2024-08-09', "Abbigliamento", 456, 750.00, 75),
    (106, '2024-01-10', "Abbigliamento", 789, 300.00, 30),
    (107, '2024-04-11', "Abbigliamento", 567, 900.00, 90),
    (108, '2024-01-12', "Casa", 890, 600.00, 60),
    (109, '2024-06-13', "Casa", 123, 420.00, 42),
    (110, '2024-07-14', "Casa", 456, 890.00, 89),
    (111, '2024-01-15', "Casa", 789, 650.00, 65),
    (112, '2024-08-16', "Casa", 567, 720.00, 72),
    (113, '2024-04-17', "Sport", 890, 480.00, 48),
    (114, '2024-01-18', "Sport", 123, 300.00, 30),
    (115, '2024-03-19', "Sport",  456, 550.00, 55),
    (116, '2024-05-20', "Sport", 789, 420.00, 42),
    (117, '2024-06-21', "Sport",  567, 780.00, 78),
    (118, '2024-03-22',"Sport",  890, 600.00, 60),
    (119, '2024-04-23',  "Libri", 123, 350.00, 35),
    (120, '2024-05-24',  "Libri", 456, 670.00, 67),
    (121, '2024-01-25',  "Libri", 789, 520.00, 52),
    (122, '2024-01-26',  "Libri", 567, 480.00, 48),
    (123, '2024-02-27', "Libri",  890, 730.00, 73),
    (201, '2024-01-08', 'Elettronica', 123, 500.00, 50),
    (202, '2024-07-09', 'Elettronica', 456, 750.00, 75),
    (203, '2024-06-10', 'Elettronica', 789, 300.00, 30),
    (204, '2024-09-08', 'Abbigliamento', 123, 500.00, 50),
    (205, '2024-01-09', 'Abbigliamento', 456, 750.00, 75),
    (206, '2024-06-10', 'Abbigliamento', 789, 300.00, 30),
    (207, '2024-11-11', 'Abbigliamento', 567, 900.00, 90),
    (208, '2024-09-12', 'Casa', 890, 600.00, 60),
    (209, '2024-05-13', 'Casa', 123, 420.00, 42),
    (210, '2024-01-14', 'Casa', 456, 890.00, 89),
    (211, '2024-07-15', 'Casa', 789, 650.00, 65),
    (212, '2024-02-16', 'Casa', 567, 720.00, 72),
    (213, '2024-10-17', 'Sport', 890, 480.00, 48),
    (214, '2024-06-18', 'Sport', 123, 300.00, 30),
    (215, '2024-03-19', 'Sport', 456, 550.00, 55),
    (216, '2024-02-20', 'Sport', 789, 420.00, 42),
    (217, '2024-05-21', 'Sport', 567, 780.00, 78),
    (218, '2024-06-22', 'Sport', 890, 600.00, 60),
    (219, '2024-03-23', 'Libri', 123, 350.00, 35),
    (220, '2024-05-24', 'Libri', 456, 670.00, 67),
    (221, '2024-08-25', 'Libri', 789, 520.00, 52),
    (222, '2024-09-26', 'Libri', 567, 480.00, 48),
    (223, '2024-03-27', 'Libri', 890, 730.00, 73);




-- Inserimento dati nella tabella DettagliVendite
INSERT INTO DettagliVendite (IDDettaglio, IDTransazione, Quantita, PrezzoUnitario)
VALUES 
    (1, 101, 2,  100.00),
    (2, 102, 3, 50.00),
    (3,  103, 1, 200.00),
    (4,  213, 5,  60.00),
    (5,  101, 2,  100.00),
    (6,  102, 3, 50.00),
    (7,  103, 1,  200.00),
    (8,  104, 2,  80.00),
    (9,  105, 4,  40.00),
    (10,  106, 3,  140.00),
    (11,  107, 2, 180.00),
    (12, 108, 1,  250.00),
    (13,  109, 4,  120.00),
    (14,  110, 2,  240.00),
    (15,  111, 3, 100.00),
    (16,  112, 1,  200.00),
    (17,  113, 2,  210.00),
    (18,  114, 4,  130.00),
    (19,  115, 3,  200.00),
    (20,  116, 2,  175.00),
    (21,  117, 1, 320.00),
    (22,  118, 3,  170.00),
    (23,  119, 2,  190.00),
    (24,  120, 4,  180.00),
    (25,  101, 2,  100.00),
    (26,  102, 3,  50.00),
    (27,  103, 1,  200.00),
    (28,  104, 2,  80.00),
    (29,  105, 4,  40.00),
    (30,  106, 3,  140.00),
    (31,  107, 2, 180.00),
    (32,  108, 1,  250.00),
    (33,  109, 4,  120.00),
    (34,  110, 2,  240.00),
    (35,  111, 3, 100.00),
    (36,  112, 1,  200.00),
    (37,  113, 2,  210.00),
    (38,  114, 4,  130.00),
    (39,  115, 3,  200.00),
    (40,  116, 2,  175.00),
    (41,  117, 1, 320.00),
    (42,  118, 3,  170.00),
    (43,  119, 2,  190.00),
    (44,  120, 4,  180.00);



INSERT INTO Clienti (ClienteID, NomeCliente, Email, numero_telefono, IDVendita)
VALUES 
(123, 'Martina', 'martina@gmail.com', '333-456-7890', 101),
(510, 'Federica', 'federica@gmail.com', '387-654-3210', 101),
(456, 'Camilla', 'camilla@gmail.com', '356-789-0123', 101),
(789, 'Margot', 'margot@gmail.com', '321-654-0987', 102),
(567, 'Marco', 'marco@gmail.com', '376-543-2109', 102),
(890, 'Luca', 'luca@gmail.com', '333-111-2222', 102),
(246, 'Giulia', 'giulia@gmail.com', '344-222-3333', 102),
(810, 'Alessio', 'alessio@gmail.com', '355-333-4444', 103),
(369, 'Sara', 'sara@gmail.com', '366-444-5555', 104),
(482, 'Giovanni', 'giovanni@gmail.com', '377-555-6666', 104),
(612, 'Francesca', 'francesca@gmail.com', '388-666-7777', 105),
(714, 'Emanuele', 'emanuele@gmail.com', '399-777-8888', 105),
(816, 'Valentina', 'valentina@gmail.com', '311-888-9999', 105),
(910, 'Riccardo', 'riccardo@gmail.com', '322-999-0000', 106),
(124, 'Elisa', 'elisa@gmail.com', '333-000-1111', 107),
(486, 'Lorenzo', 'lorenzo@gmail.com', '344-111-2222', 108),
(111, 'Laura', 'laura@gmail.com', '355-222-3333', 108),
(888, 'Davide', 'davide@gmail.com', '366-333-4444', 108),
(999, 'Elena', 'elena@gmail.com', '377-444-5555', 109),
(222, 'Simone', 'simone@gmail.com', '388-555-6666', 109),
(333, 'Claudia', 'claudia@gmail.com', '399-666-7777', 110);


/*
#3. Query Semplici: 
#•Seleziona tutte le vendite avvenute in una specifica data

select IDTransazione, DataVendita
from Vendite
where DataVendita = "2024-01-08"


4. Aggregazione dei Dati: 
#•Calcola il totale delle vendite (costo) per categoria

SELECT SUM(Costo) AS totvendite
FROM Vendite
GROUP BY CategoriaProdotto;


#Trova il numero totale di prodotti venduti per ogni categoria

select sum(Quantita) as NumProdotti, CategoriaProdotto
from DettagliVendite d
join Vendite v
on d.IDTransazione = v.IDTransazione
GROUP BY CategoriaProdotto;

#5. Funzioni di Data: 
#•Seleziona le vendite dell'ultimo trimestre

SELECT DATE_ADD('2024-01-08', INTERVAL 3 MONTH) AS Ultimo_Trimestre;

#Raggruppa le vendite per mese e calcola il totale delle vendite per ogni mese

SELECT MONTH(DataVendita) AS Mese, SUM(PrezzoUnitario * Quantita) AS tot_vendite_mese
FROM Vendite v
join DettagliVendite
on d.IDTransazione=v.IDTransazione
GROUP BY MONTH(DataVendita)
order by tot_vendite_mese;

#7. Analisi degli Sconti: 
#•Trova la categoria con lo sconto medio più alto

SELECT AVG(Sconto) AS Media_sconto,  CategoriaProdotto
FROM Vendite
GROUP BY CategoriaProdotto
order by Media_sconto desc

#8. Variazioni delle Vendite: 
#•Confronta le vendite mese per mese per vedere l'incremento o il decremento delle vendite. Calcola l’incremento o decremento mese per mese

SELECT DataVendita, SUM(PrezzoUnitario * Quantita) AS vendite_totali_per_ogni_mese
FROM DettagliVendite d
join Vendite v
on d.IDTransazione=v.IDTransazione
WHERE MONTH(DataVendita) IN (1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12)
GROUP BY DataVendita
ORDER BY DataVendita;

#9. Analisi Stagionale: 
#•Confronta le vendite totali in diverse stagioni

SELECT 
    CASE
        WHEN MONTH(DataVendita) IN (12, 1, 2) THEN 'Inverno'
        WHEN MONTH(DataVendita) IN (3, 4, 5) THEN 'Primavera'
        WHEN MONTH(DataVendita) IN (6, 7, 8) THEN 'Estate'
        WHEN MONTH(DataVendita) IN (9, 10, 11) THEN 'Autunno'
END AS Stagione,
SUM(PrezzoUnitario * Quantita) as vendite_totali_per_ogni_stagione
FROM Vendite v
 join DettagliVendite d
on d.IDTransazione=v.IDTransazione
GROUP By Stagione;



#10. Clienti Fedeli: 
#•Supponendo di avere una tabella clienti con i campi IDCliente e IDVendita, scrivi una query per trovare i top 5 clienti con il maggior numero di acquisti. 

SELECT distinct c.ClienteID AS Top_five, NomeCliente
FROM Clienti c
JOIN Vendite v ON c.ClienteID = v.ClienteID
ORDER BY c.ClienteID DESC
limit 5
*/


