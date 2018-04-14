SELECT * FROM tributos;
SELECT * FROM situacaotributaria;

INSERT INTO situacaotributaria
VALUES
(to_char(1),
 'NORMAL',
 '00',
 NULL
);
INSERT INTO situacaotributaria
VALUES
(to_char(2),
 'NORMAL',
 '20',
 NULL
);
INSERT INTO situacaotributaria
VALUES
(to_char(3),
 'NORMAL',
 '40',
 NULL
);
INSERT INTO situacaotributaria
VALUES
(to_char(4),
 'NORMAL',
 '41',
 NULL
);
INSERT INTO situacaotributaria
VALUES
(to_char(5),
 'NORMAL',
 '60',
 NULL
);
INSERT INTO situacaotributaria
VALUES
(to_char(6),
 'NORMAL',
 '90',
 NULL
);

INSERT INTO tributos
VALUES
(1,
 1,
 0.17,
 0,
 0
);

INSERT INTO tributos
VALUES
(2,
 1,
 0.18,
 0,
 0
);
INSERT INTO tributos
VALUES
(3,
 1,
 0.25,
 0,
 0
);
INSERT INTO tributos
VALUES
(4,
 1,
 0.07,
 0,
 0
);
INSERT INTO tributos
VALUES
(5,
 2,
 0.17,
 0.33,
 0
);
INSERT INTO tributos
VALUES
(6,
 3,
 0,
 0,
 0
);
INSERT INTO tributos
VALUES
(7,
 4,
 0,
 0,
 0
);
INSERT INTO tributos
VALUES
(8,
 5,
 0,
 0,
 0
);
INSERT INTO tributos
VALUES
(9,
 6,
 0.17,
 0.48,
 0
);
