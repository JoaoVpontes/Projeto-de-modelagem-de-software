INSERT INTO clinicadent.pessoa 
(CPF, Sexo, Data_nasc, Nome, Telefone, Numero, Bairro, CEP, Cidade, Estado) VALUES
('87654321098', 'M', '1980-05-10', 'Miguel Bastos', '21987654321', 100, 'Centro', '20000-000', 'Rio de Janeiro', 'RJ'),
('12345678901', 'F', '1992-11-20', 'Mariane Carvalho', '21998765432', 25, 'Tijuca', '20500-100', 'Rio de Janeiro', 'RJ'),
('99988877766', 'M', '1975-03-15', 'Jose Vieira', '21987612345', 150, 'Copacabana', '22000-200', 'Rio de Janeiro', 'RJ'),
('45678912345', 'F', '1988-07-01', 'Ana Vitoria', '21991234567', 50, 'Botafogo', '22200-300', 'Rio de Janeiro', 'RJ'),
('32165498700', 'M', '1965-09-25', 'Joao Guilherme', '21987659876', 200, 'Barra da Tijuca', '22700-400', 'Rio de Janeiro', 'RJ');

INSERT INTO clinicadent.odontologo
(CRM, Especialidade, CPF) VALUES
('CRM/RJ 123456', 'Ortodontia, Endodontia, Periodontia, Implantodontia', '87654321098'),
-- Miguel Bastos é um dentista
('CRM/RJ 543210', 'Ortodontia, Endodontia, Periodontia, Implantodontia', '99988877766');
-- Jose Vieira é um dentista

INSERT INTO clinicadent.paciente
(Cod_Paciente, CPF) VALUES
('pc01', '12345678901'), -- Mariane Carvalho
('pc02', '45678912345'), -- Ana Vitoria
('pc03', '32165498700');  -- Joao Guilherme

INSERT INTO clinicadent.material
(Cod_Material, Nome_Material) VALUES
('mat01', 'Luvas Descartáveis'),
('mat02', 'Anestésico Local'),
('mat03', 'Fio Ortodôntico'),
('mat04', 'Resina Composta');

INSERT INTO clinicadent.convenio
(Cod_Conv, Nome_conv, Tel_conv) VALUES
('conv01', 'Sulamérica', '2133711050'),
('conv02', 'BRADESCO Saúde', '2154032134');

INSERT INTO clinicadent.atende 
(Cod_Consulta, Data_cons, Hr_cons, CRM, Cod_Paciente) VALUES
('consulta01', '2025-07-18', '10:00:00', 'CRM/RJ 123456', 'pc01'), -- Miguel atende Mariane
('consulta02', '2025-10-20', '11:00:00', 'CRM/RJ 123456', 'pc02'), -- Miguel atende Ana
('consulta03', '2025-08-02', '14:00:00', 'CRM/RJ 543210', 'pc03'); -- Jose atende Joao

INSERT INTO clinicadent.requisita 
(Cod_Consulta, Cod_Material) VALUES
('consulta01', 'mat01'),
('consulta02', 'mat02'),
('consulta02', 'mat01'),
('consulta02', 'mat03'),
('consulta03', 'mat01'),
('consulta03', 'mat04');

INSERT INTO clinicadent.associado 
(Cod_Paciente, Cod_Conv) VALUES
('pc01', 'conv01'),
('pc02', 'conv02'),
('pc03', 'conv01'),
('pc03', 'conv02');
