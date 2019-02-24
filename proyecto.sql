DROP TABLE CANDIDATOXCARGO_PUBLICO;
DROP TABLE CARGOPUBLICO;
DROP TABLE PROFESIONXCANDIDATO;
DROP TABLE PROFESION;
DROP TABLE CANDIDATO;
DROP TABLE PARTIDO;
DROP TABLE CIUDAD;
CREATE TABLE CIUDAD(
    CODIGO_CIUDAD NUMERIC(10,0),
    NOMBRE VARCHAR2(20) NOT NULL,
    PRIMARY KEY(CODIGO_CIUDAD)
);
CREATE TABLE PARTIDO(
    CODIGO_PARTIDO NUMERIC(10,0),
    NOMBRE_PARTIDO VARCHAR2(50) NOT NULL,
    FECHA_FUNDACION DATE,
    ESLOGAN VARCHAR2(120),
    PRIMARY KEY(CODIGO_PARTIDO)
);
CREATE TABLE CANDIDATO( 
    CODIGO_CANDIDATO NUMERIC(10,0),
    NOMBRES VARCHAR2(20) NOT NULL,
    APELLIDOS VARCHAR2(20) NOT NULL,
    FECHA_NACIMIENTO DATE NOT NULL,
    GENERO CHAR(1) NOT NULL,
    CODIGO_CIUDAD NUMERIC(10,1) NOT NULL,
    CODIGO_PARTIDO NUMERIC(10,1) NOT NULL,
    PRIMARY KEY(CODIGO_CANDIDATO),
    FOREIGN KEY (CODIGO_CIUDAD) REFERENCES CIUDAD,
    FOREIGN KEY (CODIGO_PARTIDO) REFERENCES PARTIDO
);
CREATE TABLE PROFESION(
    CODIGO_PROFESION NUMERIC(10,0),
    DESCRIPCION VARCHAR2(40) NOT NULL,
    PRIMARY KEY(CODIGO_PROFESION)
);
CREATE TABLE PROFESIONXCANDIDATO(
    CODIGO_CANDIDATO NUMERIC(10,0),
    CODIGO_PROFESION NUMERIC(10,0),
    FOREIGN KEY (CODIGO_CANDIDATO) REFERENCES CANDIDATO,
    FOREIGN KEY (CODIGO_PROFESION) REFERENCES PROFESION
);
CREATE TABLE CARGOPUBLICO(
    CODIGO_CARGO_PUBLICO NUMERIC(10,0),
    DESCRIPCION VARCHAR2(60),
    PRIMARY KEY (CODIGO_CARGO_PUBLICO)
);
CREATE TABLE CANDIDATOXCARGO_PUBLICO(
    CODIGO_CANDIDATO NUMERIC(10,0),
    CODIGO_CARGO_PUBLICO NUMERIC(10,0),
    FECHA_DESDE DATE,
    FECHA_HASTA DATE,
    FOREIGN KEY(CODIGO_CANDIDATO) REFERENCES CANDIDATO,
    FOREIGN KEY(CODIGO_CARGO_PUBLICO) REFERENCES CARGOPUBLICO
);

PROMPT INSERTANDO CIUDADES
INSERT INTO CIUDAD VALUES (63001,'ARMENIA');
INSERT INTO CIUDAD VALUES (110111, 'BOGOT�');
INSERT INTO CIUDAD VALUES (520001, 'SAN JUAN DE PASTO');
INSERT INTO CIUDAD VALUES (15469, 'MONIQUIR�');
INSERT INTO CIUDAD VALUES (661020,'SANTA ROSA DE CABAL');
INSERT INTO CIUDAD VALUES (050001, 'MEDELL�N');

PROMPT INSERTANDO PARTIDOS
INSERT INTO PARTIDO VALUES (1001,'COLOMBIA JUSTA LIBRES',(TO_DATE('01/01/2017','DD/MM/YYYY')),'HAG�MOSLO JUNTOS');
INSERT INTO PARTIDO VALUES (0000,'SIN DEFINIR',(TO_DATE('01/01/2090','DD/MM/YYYY')),'_');
INSERT INTO PARTIDO VALUES (1002,'CENTRO DEMOCRATICO',(TO_DATE('15/07/2014','DD/MM/YYYY')),'MANO FIRME, CORAZ�N GRANDE');
INSERT INTO PARTIDO VALUES (1003,'EN MARCHA',(TO_DATE('01/10/2018','DD/MM/YYYY')),'EL PARTIDO LIBERAL REPRESENTA EL PASADO; EL MOVIMIENTO EN MARCHA, REPRESENTA EL FUTURO');
INSERT INTO PARTIDO VALUES (1004,'ACTIVISTA',(TO_DATE('26/01/2019','DD/MM/YYYY')),'EL MOMENTO DE UN CAMBIO CULTURAL Y POL�TICO, �ES AHORA!');
INSERT INTO PARTIDO VALUES (1005,'POLO DEMOCRATICO ALTERNATIVO',(TO_DATE('01/12/2005','DD/MM/YYYY')),'�LE TOCA A COLOMBIA!');
INSERT INTO PARTIDO VALUES (1006,'MOVIMIENTO ALTERNATIVO INDIGENA Y SOCIAL',(TO_DATE('25/09/2013','DD/MM/YYYY')),'COMPROMISO DE PA�S');
INSERT INTO PARTIDO VALUES (1007,'ALIANZA VERDE',(TO_DATE('02/10/2009','DD/MM/YYYY')),'�ES CON ACCIONES!�SE PUEDE!');
INSERT INTO PARTIDO VALUES (1008, 'VOY POR TI BOGOT�', NULL, NULL);
INSERT INTO PARTIDO VALUES (1009, 'COLOMBIA HUMANA', (TO_DATE('30/10/2011', 'DD/MM/YYYY')), 'POR UNA COLOMBIA HUMANA Y EN PAZ');
INSERT INTO PARTIDO VALUES (1010, 'AVANCEMOS', NULL, NULL);

PROMPT INSERTANDO CANDIDATOS
INSERT INTO CANDIDATO VALUES (100, 'RICARDO', 'ARIAS MORA', (TO_DATE('05/07/1958', 'DD/MM/YYYY')), 'M', 63001, 1001);
INSERT INTO CANDIDATO VALUES (101, 'CARLOS FERNANDO', 'GALAN PACH�N', (TO_DATE('04/06/1977', 'DD/MM/YYYY')), 'M', 110111, 0000);
INSERT INTO CANDIDATO VALUES (102, 'ANGELA SOF�A', 'GARZ�N CAICEDO', (TO_DATE('28/05/1977', 'DD/MM/YYYY')), 'F', 110111, 1002);
INSERT INTO CANDIDATO VALUES (103, 'LUIS EDUARDO', 'GARZ�N', (TO_DATE('15/02/1951', 'DD/MM/YYYY')), 'M', 110111, 1003);
INSERT INTO CANDIDATO VALUES (104, 'LUIS ERNESTO' , 'GOMEZ LONDO�O', (TO_DATE('01/01/1981', 'DD/MM/YYYY')), 'M', 050001, 1004);
INSERT INTO CANDIDATO VALUES (105, 'SAMUEL ALEJANDRO', 'HOYOS MEJ�A', (TO_DATE('30/05/1984', 'DD/MM/YYYY')), 'M', 110111, 1002);
INSERT INTO CANDIDATO VALUES (106, 'DIEGO ANDR�S', 'MOLANO APONTE', (TO_DATE('29/06/1970', 'DD/MM/YYYY')), 'M', 110111, 1002);
INSERT INTO CANDIDATO VALUES (107, 'CLAUDIA NAYIBE', 'L�PEZ HERN�NDEZ', (TO_DATE('09/03/1970', 'DD/MM/YYYY')), 'F', 110111, 1007);
INSERT INTO CANDIDATO VALUES (108, 'HOLLMAN FELIPE', 'MORRIS RINC�N', (TO_DATE('17/08/1968', 'DD/MM/YYYY')), 'M', 110111, 1006);
INSERT INTO CANDIDATO VALUES (109, 'ANTONIO JOS�', 'NAVARRO WOLFF', (TO_DATE('09/07/1948', 'DD/MM/YYYY')), 'M', 520001, 1007);
INSERT INTO CANDIDATO VALUES (110, 'MARIA ANDREA', 'NIETO', (TO_DATE('01/01/1976', 'DD/MM/YYYY')), 'F', 110111, 1008);
INSERT INTO CANDIDATO VALUES (111, 'SEGUNDO CELIO', 'NIEVES HERRERA', (TO_DATE('06/09/1955', 'DD/MM/YYYY')), 'M', 15469, 1005);
INSERT INTO CANDIDATO VALUES (112, 'JORGE ENRIQUE', 'ROJAS RODR�GUEZ', (TO_DATE('19/08/1959', 'DD/MM/YYYY')), 'M', 661020, 1009);
INSERT INTO CANDIDATO VALUES (113, 'MIGUEL', 'URIBE TURBAY', (TO_DATE('28/01/1986', 'DD/MM/YYYY')), 'M', 110111, 1010);

PROMPT INSERT PROFESIONES
INSERT INTO PROFESION VALUES (50, 'INGENIER�A CIVIL');
INSERT INTO PROFESION VALUES (51, 'RELACIONES INTERNACIONALES');
INSERT INTO PROFESION VALUES (52, 'FILOSOF�A');
INSERT INTO PROFESION VALUES (53, 'SOCIOLOG�A');
INSERT INTO PROFESION VALUES (54, 'CIENCIAS POL�TICAS');
INSERT INTO PROFESION VALUES (55, 'ECONOM�A');
INSERT INTO PROFESION VALUES (56, 'PSICOLOG�A');
INSERT INTO PROFESION VALUES (57, 'ADMINISTRACI�N DE EMPRESAS');
INSERT INTO PROFESION VALUES (58, 'PERIODISMO');
INSERT INTO PROFESION VALUES (59, 'INGENIER�A DE SANIDAD');
INSERT INTO PROFESION VALUES (60, 'HISTORIA');
INSERT INTO PROFESION VALUES (61, 'BIOLOG�A');
INSERT INTO PROFESION VALUES (62, 'DERECHO');

PROMPT INSERT PROFESIONXCANDIDATO
INSERT INTO PROFESIONXCANDIDATO VALUES (100, 50);
INSERT INTO PROFESIONXCANDIDATO VALUES (101, 51);
INSERT INTO PROFESIONXCANDIDATO VALUES (102, 52);
INSERT INTO PROFESIONXCANDIDATO VALUES (103, 53);
INSERT INTO PROFESIONXCANDIDATO VALUES (104, 54);
INSERT INTO PROFESIONXCANDIDATO VALUES (104, 55);
INSERT INTO PROFESIONXCANDIDATO VALUES (105, 56);
INSERT INTO PROFESIONXCANDIDATO VALUES (106, 57);
INSERT INTO PROFESIONXCANDIDATO VALUES (107, 54);
INSERT INTO PROFESIONXCANDIDATO VALUES (108, 58);
INSERT INTO PROFESIONXCANDIDATO VALUES (109, 59);
INSERT INTO PROFESIONXCANDIDATO VALUES (110, 55);
INSERT INTO PROFESIONXCANDIDATO VALUES (110, 60);
INSERT INTO PROFESIONXCANDIDATO VALUES (111, 61);
INSERT INTO PROFESIONXCANDIDATO VALUES (112, 58);
INSERT INTO PROFESIONXCANDIDATO VALUES (113, 62);

PROMPT INSERT CARGOPUBLICO
INSERT INTO CARGOPUBLICO VALUES (200, 'CONCEJO DE ARMENIA');
INSERT INTO CARGOPUBLICO VALUES (201, 'DIPUTADO DE LA ASAMBLEA DE QUIND�O');
INSERT INTO CARGOPUBLICO VALUES (202, 'REPRESENTANTE A LA C�MARA POR QUIND�O');
INSERT INTO CARGOPUBLICO VALUES (203, 'SENADO DE LA REP�BLICA');
INSERT INTO CARGOPUBLICO VALUES (204, 'PRESIDENCIA DEL FONDO NACIONAL DEL AHORRO');
INSERT INTO CARGOPUBLICO VALUES (205, 'CONCEJO DE BOGOT�');
INSERT INTO CARGOPUBLICO VALUES (206, 'ALCALD�A DE BOGOT�');
INSERT INTO CARGOPUBLICO VALUES (207, 'MINISTRO CONSEJERO PARA EL DI�LOGO SOCIAL');
INSERT INTO CARGOPUBLICO VALUES (208, 'MINISTERIO DEL TRABAJO');
INSERT INTO CARGOPUBLICO VALUES (209, 'DIRECCI�N DE PLANEACI�N DEL MINISTERIO DE TRABAJO');
INSERT INTO CARGOPUBLICO VALUES (210, 'DIRECCI�N GENERAL DEL SERVICIO P�BLICO DE EMPLEO');
INSERT INTO CARGOPUBLICO VALUES (211, 'VICEMINISTERIO DE TRABAJO');
INSERT INTO CARGOPUBLICO VALUES (212, 'VICEMINISTERIO DEL INTERIOR');
INSERT INTO CARGOPUBLICO VALUES (213, 'REPRESENTANTE A LA C�MARA POR BOGOT�');
INSERT INTO CARGOPUBLICO VALUES (214, 'DIRECCI�N DE LA AGENCIA PRESIDENCIAL PARA LA ACCI�N SOCIAL');
INSERT INTO CARGOPUBLICO VALUES (215, 'DIRECCI�N DEL ICBF');
INSERT INTO CARGOPUBLICO VALUES (216, 'SECRETAR�A DE ACCI�N SOCIAL DE BOGOT� D.C.');
INSERT INTO CARGOPUBLICO VALUES (217, 'GERENCIA DEL CANAL CAPITAL');
INSERT INTO CARGOPUBLICO VALUES (218, 'MINISTERIO DE SALUD');
INSERT INTO CARGOPUBLICO VALUES (219, 'ALCALD�A DE PASTO');
INSERT INTO CARGOPUBLICO VALUES (220, 'GOBERNACI�N DE NARI�O');
INSERT INTO CARGOPUBLICO VALUES (221, 'SECRETAR�A DE GOBIERNO DE BOGOT�');
INSERT INTO CARGOPUBLICO VALUES (222, 'DIRECCI�N DEL SERVICIO NACIONAL DE APRENDIZAJE');
INSERT INTO CARGOPUBLICO VALUES (223, 'SECRETAR�A DE INTEGRACI�N SOCIAL');

PROMPT CANDIDATOXCARGO_PUBLICO
------------------RICARDO ARIAS MORA
INSERT INTO CANDIDATOXCARGO_PUBLICO VALUES (100, 200, (TO_DATE('01/01/1990', 'DD/MM/YYYY')), (TO_DATE('01/01/1992', 'DD/MM/YYYY')));
INSERT INTO CANDIDATOXCARGO_PUBLICO VALUES (100, 201, (TO_DATE('01/01/1994', 'DD/MM/YYYY')), (TO_DATE('01/01/1997', 'DD/MM/YYYY')));
INSERT INTO CANDIDATOXCARGO_PUBLICO VALUES (100, 202, (TO_DATE('20/07/2002', 'DD/MM/YYYY')), (TO_DATE('20/07/2006', 'DD/MM/YYYY')));
INSERT INTO CANDIDATOXCARGO_PUBLICO VALUES (100, 203, (TO_DATE('20/07/2006', 'DD/MM/YYYY')), (TO_DATE('20/07/2010', 'DD/MM/YYYY')));
INSERT INTO CANDIDATOXCARGO_PUBLICO VALUES (100, 204, (TO_DATE('20/07/2010', 'DD/MM/YYYY')), (TO_DATE('20/07/2014', 'DD/MM/YYYY')));
-----------------CARLOS FERNANDO GALAN
INSERT INTO CANDIDATOXCARGO_PUBLICO VALUES (101, 205, (TO_DATE('01/02/2008', 'DD/MM/YYYY')), (TO_DATE('01/02/2011', 'DD/MM/YYYY')));
INSERT INTO CANDIDATOXCARGO_PUBLICO VALUES (101, 203, (TO_DATE('20/07/2014', 'DD/MM/YYYY')), (TO_DATE('20/07/2018', 'DD/MM/YYYY')));
----------------ANGELA GARZ�N
INSERT INTO CANDIDATOXCARGO_PUBLICO VALUES (102, 205, (TO_DATE('01/02/2016', 'DD/MM/YYYY')), (TO_DATE('01/02/2019', 'DD/MM/YYYY')));
----------------LUIS EDUARDO GARZ�N
INSERT INTO CANDIDATOXCARGO_PUBLICO VALUES (103, 206, (TO_DATE('01/01/2004', 'DD/MM/YYYY')), (TO_DATE('31/12/2007', 'DD/MM/YYYY')));
INSERT INTO CANDIDATOXCARGO_PUBLICO VALUES (103, 207, (TO_DATE('01/01/2012', 'DD/MM/YYYY')), (TO_DATE('01/01/2014', 'DD/MM/YYYY')));
INSERT INTO CANDIDATOXCARGO_PUBLICO VALUES (103, 208, (TO_DATE('11/08/2014', 'DD/MM/YYYY')), (TO_DATE('23/04/2016', 'DD/MM/YYYY')));
---------------LUIS ERNESTO G�MEZ
INSERT INTO CANDIDATOXCARGO_PUBLICO VALUES (104, 209, (TO_DATE('01/01/2012', 'DD/MM/YYYY')), (TO_DATE('01/01/2013', 'DD/MM/YYYY')));
INSERT INTO CANDIDATOXCARGO_PUBLICO VALUES (104, 210, (TO_DATE('01/01/2013', 'DD/MM/YYYY')), (TO_DATE('01/01/2014', 'DD/MM/YYYY')));
INSERT INTO CANDIDATOXCARGO_PUBLICO VALUES (104, 211, (TO_DATE('01/01/2015', 'DD/MM/YYYY')), (TO_DATE('01/01/2015', 'DD/MM/YYYY')));
INSERT INTO CANDIDATOXCARGO_PUBLICO VALUES (104, 212, (TO_DATE('01/01/2016', 'DD/MM/YYYY')), (TO_DATE('07/08/2018', 'DD/MM/YYYY')));
----------------SAMUEL HOYOS
INSERT INTO CANDIDATOXCARGO_PUBLICO VALUES (105, 213, (TO_DATE('20/07/2014', 'DD/MM/YYYY')), (TO_DATE('20/07/2022', 'DD/MM/YYYY')));
----------------DIEGO MOLANO
INSERT INTO CANDIDATOXCARGO_PUBLICO VALUES (106, 214, (TO_DATE('01/01/2009', 'DD/MM/YYYY')), (TO_DATE('01/01/2011', 'DD/MM/YYYY')));
INSERT INTO CANDIDATOXCARGO_PUBLICO VALUES (106, 215, (TO_DATE('01/01/2011', 'DD/MM/YYYY')), (TO_DATE('01/01/2013', 'DD/MM/YYYY')));
INSERT INTO CANDIDATOXCARGO_PUBLICO VALUES (106, 205, (TO_DATE('01/02/2016', 'DD/MM/YYYY')), (TO_DATE('01/02/2019', 'DD/MM/YYYY')));
----------------CLAUDIA L�PEZ
INSERT INTO CANDIDATOXCARGO_PUBLICO VALUES (107, 216, (TO_DATE('01/01/1998', 'DD/MM/YYYY')), (TO_DATE('01/01/2000', 'DD/MM/YYYY')));
INSERT INTO CANDIDATOXCARGO_PUBLICO VALUES (107, 206, (TO_DATE('20/07/2014', 'DD/MM/YYYY')), (TO_DATE('20/07/2018', 'DD/MM/YYYY')));

----------------HOLLMAN MORRIS
INSERT INTO CANDIDATOXCARGO_PUBLICO VALUES (108, 217, (TO_DATE('24/02/2012', 'DD/MM/YYYY')), (TO_DATE('24/10/2014', 'DD/MM/YYYY')));
INSERT INTO CANDIDATOXCARGO_PUBLICO VALUES (108, 205, (TO_DATE('01/02/2016', 'DD/MM/YYYY')), (TO_DATE('01/02/2019', 'DD/MM/YYYY')));
----------------ANTONIO NAVARRO WOLFF
INSERT INTO CANDIDATOXCARGO_PUBLICO VALUES (109, 218, (TO_DATE('01/01/1990', 'DD/MM/YYYY')), (TO_DATE('01/01/1991', 'DD/MM/YYYY')));
INSERT INTO CANDIDATOXCARGO_PUBLICO VALUES (109, 219, (TO_DATE('01/01/1995', 'DD/MM/YYYY')), (TO_DATE('31/12/1997', 'DD/MM/YYYY')));
INSERT INTO CANDIDATOXCARGO_PUBLICO VALUES (109, 213, (TO_DATE('20/07/1998', 'DD/MM/YYYY')), (TO_DATE('20/07/2002', 'DD/MM/YYYY')));
INSERT INTO CANDIDATOXCARGO_PUBLICO VALUES (109, 220, (TO_DATE('01/01/2008', 'DD/MM/YYYY')), (TO_DATE('31/12/2011', 'DD/MM/YYYY')));
INSERT INTO CANDIDATOXCARGO_PUBLICO VALUES (109, 221, (TO_DATE('01/01/2012', 'DD/MM/YYYY')), (TO_DATE('30/03/2012', 'DD/MM/YYYY')));
INSERT INTO CANDIDATOXCARGO_PUBLICO VALUES (109, 203, (TO_DATE('20/07/2002', 'DD/MM/YYYY')), (TO_DATE('20/07/2006', 'DD/MM/YYYY')));
INSERT INTO CANDIDATOXCARGO_PUBLICO VALUES (109, 203, (TO_DATE('20/07/2014', 'DD/MM/YYYY')), (TO_DATE('20/07/2018', 'DD/MM/YYYY')));
------------------MARIA ANDREA NIETO
INSERT INTO CANDIDATOXCARGO_PUBLICO VALUES (110, 222, (TO_DATE('27/04/2017', 'DD/MM/YYYY')), (TO_DATE('01/11/2017', 'DD/MM/YYYY')));
------------------CELIO NIEVES
INSERT INTO CANDIDATOXCARGO_PUBLICO VALUES (111, 205, (TO_DATE('01/02/2007', 'DD/MM/YYYY')), (TO_DATE('01/02/2019', 'DD/MM/YYYY')));
------------------JORGE ROJAS RODR�GUEZ
INSERT INTO CANDIDATOXCARGO_PUBLICO VALUES (112, 223, (TO_DATE('01/01/2013', 'DD/MM/YYYY')), (TO_DATE('01/01/2015', 'DD/MM/YYYY')));
------------------MIGUEL URIBE TURBAY
INSERT INTO CANDIDATOXCARGO_PUBLICO VALUES (113, 205, (TO_DATE('01/02/2012', 'DD/MM/YYYY')), (TO_DATE('01/02/2015', 'DD/MM/YYYY')));
INSERT INTO CANDIDATOXCARGO_PUBLICO VALUES (109, 221, (TO_DATE('01/01/2016', 'DD/MM/YYYY')), (TO_DATE('01/01/2018', 'DD/MM/YYYY')));