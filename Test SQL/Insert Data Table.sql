-- Data TabelCabang
INSERT INTO Tabel_Cabang (KodeCabang, NamaCabang) VALUES
(115, 'Jakarta'),
(145, 'Ciputat'),
(175, 'Pandeglang'),
(190, 'Bekasi');

-- Data TabelMotor
INSERT INTO Tabel_Motor (KodeMotor, NamaMotor) VALUES
('001', 'Suzuki'),
('002', 'Honda'),
('003', 'Yamaha'),
('004', 'Kawasaki');

-- Data TabelPembayaran
INSERT INTO Tabel_Pembayaran (NoKontrak, TglBayar, JumlahBayar, KodeCabang, NoKwitansi, KodeMotor) VALUES
('1151500001', '2014-10-20 17:14:13', 200000, 115, '141020000001', '001'),
('1451500002', '2014-10-20 16:14:13', 300000, 145, '141020000002', '001'),
('1151500003', '2014-10-20 09:14:13', 350000, 115, '141020000003', '003'),
('1751500004', '2014-10-19 16:14:13', 500000, 175, '141019000001', '002');