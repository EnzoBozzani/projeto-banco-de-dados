INSERT INTO course (id, title)
VALUES ('CC', 'Ciência da Computação'),
       ('EC', 'Engenharia Civil'),
       ('EP', 'Engenharia de Produção');

INSERT INTO professor (id, name, dept_name, salary)
VALUES
('P001', 'Ana Paula', 'Ciência da Computação', 5000),
('P002', 'Carlos Alberto', 'Ciência da Computação', 4800),
('P003', 'Maria Eduarda', 'Ciência da Computação', 5200),
('P004', 'João Pedro', 'Ciência da Computação', 4500),
('P005', 'Juliana Silva', 'Ciência da Computação', 5500),
('P006', 'Fernando Oliveira', 'Engenharia de Produção', 4700),
('P007', 'Luciana Almeida', 'Engenharia de Produção', 5300),
('P008', 'Rafael Costa', 'Engenharia de Produção', 4600),
('P009', 'Isabela Pereira', 'Engenharia de Produção', 5100),
('P010', 'Bruno Rodrigues', 'Engenharia de Produção', 4900), 
('P011', 'Adriana Souza', 'Matemática', 4500), 
('P012', 'Eduardo Santos', 'Matemática', 4800), 
('P013', 'Camila Alves', 'Matemática', 5200),
('P014', 'Leonardo Ferreira', 'Matemática', 4500),
('P015', 'Mariana Lima', 'Matemática', 5500), 
('P016', 'Gustavo Barros', 'Engenharia Civil', 4700), 
('P017', 'Fernanda Ribeiro', 'Engenharia Civil', 5300), 
('P018', 'Daniel Castro', 'Engenharia Civil', 4600), 
('P019', 'Letícia Gomes', 'Engenharia Civil', 5100), 
('P020', 'Thiago Carvalho', 'Engenharia Civil', 4900);

INSERT INTO tcc_group (id, professor_id)
VALUES 
('CC1111111', 'P001'),
('EC1111111', 'P016'),
('EP1111111', 'P007'),
('CC1234567', 'P002');

INSERT INTO department (dept_name, budget, boss_id)
VALUES ('Ciência da Computação', 100000, 'P002'),
       ('Matemática', 80000, 'P012'),
       ('Engenharia de Produção', 100000, 'P008'),
       ('Engenharia Civil', 75000, 'P020');

INSERT INTO student (id, name, course_id, group_id)
VALUES
('241220101', 'João Silva', 'CC', 'CC1234567'),
('241220303', 'Maria Souza', 'CC', null),
('241220455', 'Pedro Santos', 'CC', 'CC1234567'),
('241220878', 'Ana Clara', 'CC', null),
('241220347', 'Lucas Oliveira', 'CC', 'CC1234567'),
('241220475', 'Julia Almeida', 'CC', null),
('241220248', 'Felipe Costa', 'CC', 'CC1234567'),
('241220405', 'Amanda Pereira', 'CC', null),
('241221515', 'Rafael Rodrigues', 'CC', 'CC1234567'),
('241220999', 'Letícia Barros', 'EP', null),
('241220000', 'Bruno Martins', 'EP', null),
('241220111', 'Gabriela Castro', 'EP', null),
('241220222', 'Daniel Gomes', 'EP', null),
('241220333', 'Isabela Carvalho', 'EP', null),
('241220444', 'Thiago Souza', 'EC', null),
('241220555', 'Mariana Santos', 'EC', null),
('241220666', 'Gustavo Alves', 'EC', null),
('241220777', 'Beatriz Ferreira', 'EC', null),
('241220888', 'Vinicius Ribeiro', 'CC', null),
('241220342', 'Larissa Lima', 'CC', null),
('100000001', 'Ronaldo Fenômeno', 'CC', 'CC1111111'), 
('100000002', 'Ronaldinho Gaúcho', 'CC', 'CC1111111'), 
('100000003', 'Romário', 'CC', 'CC1111111'), 
('100000004', 'Neymar', 'EC', 'EC1111111'), 
('100000005', 'Vinicius JR', 'EC', 'EC1111111'), 
('100000006', 'Lionel Messi', 'EC', 'EC1111111'), 
('100000007', 'Cristiano Ronaldo', 'EP', 'EP1111111'), 
('100000008', 'Pelé', 'EP', 'EP1111111'), 
('100000009', 'Zico', 'EP', 'EP1111111');

INSERT INTO subj (id, title, dept_name)
VALUES
('CCD110', 'Banco de Dados', 'Ciência da Computação'), 
('CCP130', 'Desenvolvimento de Algoritmos', 'Ciência da Computação'), 
('CC7711', 'Inteligência Artificial e Robótica', 'Ciência da Computação'), 
('NP8141', 'Projeto de Layout', 'Engenharia de Produção'), 
('NP7340', 'Pesquisa Operacional', 'Engenharia de Produção'), 
('PRH020', 'Custos Aplicados', 'Engenharia de Produção'), 
('CVH600', 'Hidraúlica', 'Engenharia Civil'), 
('CVE820', 'Estruturas de Concreto II', 'Engenharia Civil'), 
('CVC510', 'Durabilidade do Concreto', 'Engenharia Civil'),
('CA4322', 'Cálculo Numérico', 'Matemática'), 
('CA4312', 'Álgebra Linear', 'Matemática'), 
('CA2211', 'Geometria Analítica', 'Matemática');

INSERT INTO takes (student_id, subj_id, semester, year, grade, subjroom)
VALUES
('241220101', 'CCD110', 1, 2020, 6, 'K3-02'),
('241220303', 'CCP130', 1, 2021, 10, 'K2-01'),
('241220455', 'CC7711', 2, 2023, 4.5, 'K0-08'),
('241220878', 'CCD110', 1, 2020, 7, 'K3-02'),
('241220347', 'CCP130', 1, 2021, 9, 'K2-01'),
('241220475', 'CC7711', 2, 2023, 3, 'K0-08'),
('241220248', 'CCD110', 1, 2020, 8, 'K3-02'),
('241220405', 'CCP130', 1, 2021, 8, 'K2-01'),
('241221515', 'CC7711', 2, 2023, 6, 'K0-08'),
('241220999', 'NP8141', 1, 2019, 5, 'I0-01'),
('241220000', 'NP7340', 2, 2021, 6, 'I1-02'),
('241220111', 'PRH020', 1, 2023, 7, 'J1-03'),
('241220777', 'CA2211', 1, 2022, 5, 'I0-04'),
('241220555', 'CVH600', 2, 2024, 8, 'J1-04'),
('241220666', 'CVE820', 1, 2020, 9, 'J1-05'),
('241220444', 'CVC510', 2, 2021, 10, 'I1-06'),
('241220101', 'CA4322', 2, 2020, 6, 'J0-02'),
('241220303', 'CA4312', 1, 2021, 10, 'I1-01'),
('241220455', 'CA2211', 2, 2023, 4.5, 'K0-08'),
('100000001', 'CCD110', 1, 2018, 6, 'K3-02'), 
('100000001', 'CCP130', 1, 2018, 8, 'K2-01'),
('100000001', 'CC7711', 1, 2018, 10, 'K0-08'),
('100000001', 'CA4322', 2, 2018, 5, 'J0-02'),
('100000001', 'CA4312', 2, 2018, 7.6, 'I1-01'),
('100000001', 'CA2211', 2, 2018, 5.5, 'K0-08'),  
('100000002', 'CCD110', 1, 2018, 5.1, 'K3-02'), 
('100000002', 'CCP130', 1, 2018, 10, 'K2-01'),
('100000002', 'CC7711', 1, 2018, 10, 'K0-08'),
('100000002', 'CA4322', 2, 2018, 10, 'J0-02'),
('100000002', 'CA4312', 2, 2018, 9.9, 'I1-01'),
('100000002', 'CA2211', 2, 2018, 6.8, 'K0-08'),
('100000003', 'CCD110', 1, 2018, 7, 'K3-02'), 
('100000003', 'CCP130', 1, 2018, 7, 'K2-01'),
('100000003', 'CC7711', 1, 2018, 7, 'K0-08'),
('100000003', 'CA4322', 2, 2018, 7, 'J0-02'),
('100000003', 'CA4312', 2, 2018, 7.6, 'I1-01'),
('100000003', 'CA2211', 2, 2018, 7.5, 'K0-08'), 
('100000007', 'NP8141', 1, 2018, 6, 'I0-01'),
('100000007', 'NP7340', 2, 2018, 6, 'I1-02'),
('100000007', 'PRH020', 1, 2018, 7, 'J1-03'),
('100000007', 'CA4322', 2, 2018, 5, 'J0-02'),
('100000007', 'CA4312', 2, 2018, 7.6, 'I1-01'),
('100000007', 'CA2211', 2, 2018, 5.5, 'K0-08'),  
('100000008', 'NP8141', 1, 2018, 6, 'I0-01'),
('100000008', 'NP7340', 2, 2018, 6, 'I1-02'),
('100000008', 'PRH020', 1, 2018, 7, 'J1-03'),
('100000008', 'CA4322', 2, 2018, 5, 'J0-02'),
('100000008', 'CA4312', 2, 2018, 7.6, 'I1-01'),
('100000008', 'CA2211', 2, 2018, 5.5, 'K0-08'),  
('100000009', 'NP8141', 1, 2018, 6, 'I0-01'),
('100000009', 'NP7340', 2, 2018, 6, 'I1-02'),
('100000009', 'PRH020', 1, 2018, 7, 'J1-03'),
('100000009', 'CA4322', 2, 2018, 5, 'J0-02'),
('100000009', 'CA4312', 2, 2018, 7.6, 'I1-01'),
('100000009', 'CA2211', 2, 2018, 5.5, 'K0-08'),
('100000004', 'CVH600', 2, 2018, 8, 'J1-04'),
('100000004', 'CVE820', 1, 2018, 9, 'J1-05'),
('100000004', 'CVC510', 2, 2018, 10, 'I1-06'),
('100000004', 'CA4322', 2, 2018, 5, 'J0-02'),
('100000004', 'CA4312', 2, 2018, 7.6, 'I1-01'),
('100000004', 'CA2211', 2, 2018, 5.5, 'K0-08'),  
('100000005', 'CVH600', 2, 2018, 8, 'J1-04'),
('100000005', 'CVE820', 1, 2018, 9, 'J1-05'),
('100000005', 'CVC510', 2, 2018, 10, 'I1-06'),
('100000005', 'CA4322', 2, 2018, 5, 'J0-02'),
('100000005', 'CA4312', 2, 2018, 7.6, 'I1-01'),
('100000005', 'CA2211', 2, 2018, 5.5, 'K0-08'),  
('100000006', 'CVH600', 2, 2018, 8, 'J1-04'),
('100000006', 'CVE820', 1, 2018, 9, 'J1-05'),
('100000006', 'CVC510', 2, 2018, 10, 'I1-06'),
('100000006', 'CA4322', 2, 2018, 5, 'J0-02'),
('100000006', 'CA4312', 2, 2018, 7.6, 'I1-01'),
('100000006', 'CA2211', 2, 2018, 5.5, 'K0-08');


INSERT INTO teaches (subj_id, professor_id, semester, year)
VALUES
('CCD110', 'P001', 1, 2020),
('CCP130', 'P002', 1, 2021),
('CC7711', 'P003', 2, 2023),
('CC7711', 'P004', 1, 2020),
('CCD110', 'P005', 1, 2019),
('NP7340', 'P006', 2, 2021),
('PRH020', 'P007', 1, 2023),
('NP8141', 'P008', 2, 2024),
('PRH020', 'P009', 1, 2020),
('NP7340', 'P010', 2, 2021),
('CA4322', 'P011', 2, 2020),
('CA4312', 'P012', 1, 2021),
('CA2211', 'P013', 2, 2023),
('CA4322', 'P014', 1, 2020),
('CA2211', 'P015', 1, 2021),
('CVE820', 'P016', 2, 2023),
('CVC510', 'P017', 1, 2019),
('CVC510', 'P018', 2, 2021),
('CVH600', 'P019', 1, 2023),
('CVH600', 'P020', 2, 2024);

INSERT INTO req (course_id, subj_id)
VALUES
('CC', 'CCD110'),
('CC', 'CCP130'),
('CC', 'CC7711'),
('EC', 'CVH600'),
('EC', 'CVE820'),
('EC', 'CVC510'),
('EP', 'NP8141'),
('EP', 'NP7340'),
('EP', 'PRH020'),
('CC', 'CA4322'),
('CC', 'CA4312'),
('CC', 'CA2211'), 
('EC', 'CA4322'),
('EC', 'CA4312'),
('EC', 'CA2211'),
('EP', 'CA4322'),
('EP', 'CA4312'),
('EP', 'CA2211');

INSERT INTO graduate (student_id, course_id, semester, year)
VALUES
('100000001', 'CC', 2, 2018), 
('100000002', 'CC', 2, 2018), 
('100000003', 'CC', 2, 2018), 
('100000004', 'EC', 2, 2018), 
('100000005', 'EC', 2, 2018), 
('100000006', 'EC', 2, 2018), 
('100000007', 'EP', 2, 2018), 
('100000008', 'EP', 2, 2018), 
('100000009', 'EP', 2, 2018);