create table clinicadent.PESSOA (
    CPF CHAR(11) PRIMARY KEY,
    telefone VARCHAR(15),
    nome VARCHAR(100),
    sexo CHAR(1),
    data_nasc DATE,
    numero INT,
    bairro VARCHAR(50),
    cep CHAR(8),
    cidade VARCHAR(50),
    estado CHAR(2)
);

create table clinicadent.ODONTOLOGO (
    CPF CHAR(11),
    CRM VARCHAR(20) PRIMARY KEY,
    ortodontia BOOLEAN,
    endodontia BOOLEAN,
    periodontia BOOLEAN,
    implantodontia BOOLEAN,
    FOREIGN KEY (CPF) REFERENCES clinicadent.PESSOA(CPF) ON DELETE CASCADE
);

create table clinicadent.PACIENTE (
    CPF CHAR(11),
    Cod_Paciente INT PRIMARY KEY,
    FOREIGN KEY (CPF) REFERENCES clinicadent.PESSOA(CPF) ON DELETE CASCADE
);

create table clinicadent.CONSULTA (
    Cod_Consulta INT PRIMARY KEY,
    data_consulta DATE,
    hr_consulta TIME
);

create table clinicadent.MATERIAL (
    Cod_Material INT PRIMARY KEY
);

create table clinicadent.REQUISITA (
    Cod_Consulta INT,
    Cod_Material INT,
    PRIMARY KEY (Cod_Consulta, Cod_Material),
    FOREIGN KEY (Cod_Consulta) REFERENCES clinicadent.CONSULTA(Cod_Consulta) ON DELETE CASCADE,
    FOREIGN KEY (Cod_Material) REFERENCES clinicadent.MATERIAL(Cod_Material) ON DELETE CASCADE
);

create table clinicadent.CONVENIO (
    Cod_Conv INT PRIMARY KEY,
    Nome_Conv VARCHAR(100),
    tel VARCHAR(15)
);

create table clinicadent.CREDENCIADO (
    CRM VARCHAR(20),
    Cod_Conv INT,
    PRIMARY KEY (CRM, Cod_Conv),
    FOREIGN KEY (CRM) REFERENCES clinicadent.ODONTOLOGO(CRM) ON DELETE CASCADE,
    FOREIGN KEY (Cod_Conv) REFERENCES clinicadent.CONVENIO(Cod_Conv) ON DELETE CASCADE
);

create table clinicadent.ASSOCIADO (
    Cod_Paciente INT,
    Cod_Convenio INT,
    PRIMARY KEY (Cod_Paciente, Cod_Convenio),
    FOREIGN KEY (Cod_Paciente) REFERENCES clinicadent.PACIENTE(Cod_Paciente) ON DELETE CASCADE,
    FOREIGN KEY (Cod_Convenio) REFERENCES clinicadent.CONVENIO(Cod_Conv) ON DELETE CASCADE
);
