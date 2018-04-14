

CREATE SEQUENCE seq_tributos
    START WITH 1
    INCREMENT BY 1
    NOCACHE
    NOCYCLE;
/
CREATE SEQUENCE seq_situacaotributaria
    START WITH 1
    INCREMENT BY 1
    NOCACHE
    NOCYCLE;
/
CREATE TABLE situacaotributaria
(
    idst                    VARCHAR2(4) NOT NULL PRIMARY KEY,
    tipost                  VARCHAR2(30) NOT NULL,
    cst                     VARCHAR2(2),
    csosn                   VARCHAR2(3),
);
/
CREATE TABLE tributos
(
    idtributo               NUMBER(10) NOT NULL,
    idst                    NUMBER(4) NOT NULL,
    percentualicms          NUMBER(18,6),
    percentualreducao       NUMBER(18,6),
    percentualfcp           NUMBER(18,6)
);
/
CREATE TABLE cfop
(
    idcfop                  NUMBER(2) NOT NULL PRIMARY KEY,
    cfop                    NUMBER(4) NOT NULL
);

/
CREATE TABLE logconsulta
(
    dataconsulta            DATE,
    idst                    NUMBER(4),
    idtributo               NUMBER(10),
    idcfop                  NUMBER(2),
    quantidade              NUMBER(20,6),
    precovenda              NUMBER(18,6),
    valorbasecalculoicms    NUMBER(18,6),
    valorbasecalculofcp     NUMBER(18,6),
    valoricms               NUMBER(18,6),
    valorfcp                NUMBER(18,6),
    codigoncm               NUMBER(10),
    codigobarras            VARCHAR2(150),
    uf                      VARCHAR2(2)
);
