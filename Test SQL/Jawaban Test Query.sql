--Jawaban Soal Test Query

--2
SELECT * FROM Tabel_Pembayaran
WHERE CONVERT(DATE, TglBayar) = '2014-10-20';

--3
INSERT INTO Tabel_Cabang (KodeCabang, NamaCabang)
VALUES (200, 'Tangerang');

--4
UPDATE Tabel_Pembayaran
SET KodeMotor = '001'
FROM Tabel_Pembayaran AS p
JOIN Tabel_Cabang AS c ON p.KodeCabang = c.KodeCabang
WHERE c.NamaCabang = 'Jakarta';

--5
SELECT p.NoKontrak, p.TglBayar, p.JumlahBayar, p.KodeCabang, c.NamaCabang,
       p.NoKwitansi,  p.KodeMotor, m.NamaMotor
FROM Tabel_Pembayaran p
JOIN Tabel_Cabang c ON p.KodeCabang = c.KodeCabang
JOIN Tabel_Motor m ON p.KodeMotor = m.KodeMotor
ORDER BY p.TglBayar DESC;

--6
SELECT c.KodeCabang, c.NamaCabang, p.NoKontrak, p.NoKwitansi
FROM Tabel_Cabang c
LEFT JOIN Tabel_Pembayaran p ON c.KodeCabang = p.KodeCabang
ORDER BY c.KodeCabang ASC;

--7
SELECT  c.KodeCabang, c.NamaCabang,
    COUNT(p.NoKontrak) AS TotalData,
    COALESCE(SUM(p.JumlahBayar), 0) AS TotalBayar
FROM  Tabel_Cabang c
LEFT JOIN Tabel_Pembayaran p ON c.KodeCabang = p.KodeCabang
GROUP BY c.KodeCabang, c.NamaCabang
ORDER BY c.KodeCabang ASC;