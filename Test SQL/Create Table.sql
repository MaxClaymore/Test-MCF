
CREATE TABLE Tabel_Cabang (
    KodeCabang INT PRIMARY KEY,
    NamaCabang VARCHAR(50)
);

CREATE TABLE Tabel_Motor (
    KodeMotor VARCHAR(3) PRIMARY KEY,
    NamaMotor VARCHAR(50)
);

CREATE TABLE Tabel_Pembayaran (
    NoKontrak VARCHAR(12) PRIMARY KEY,
    TglBayar DATETIME,
    JumlahBayar INT,
    KodeCabang INT,
    NoKwitansi VARCHAR(12),
    KodeMotor VARCHAR(3),
    FOREIGN KEY (KodeCabang) REFERENCES Tabel_Cabang(KodeCabang),
    FOREIGN KEY (KodeMotor) REFERENCES Tabel_Motor(KodeMotor)
);
