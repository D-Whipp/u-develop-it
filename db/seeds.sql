INSERT INTO candidates (first_name, last_name, industry_connected)
VALUES
    ('Gavilar', 'Kholin', 0),
    ('Navani', 'Kholin', 1),
    ('Elhokar', 'Kholin', 0),
    ('Jasnah', 'Kholin', 1),
    ('Dalinar', 'Kholin', 1),
    ('Evie', 'Kholin', 0),
    ('Adolin', 'Kholin', 0),
    ('Renarin', 'Kholin', 1),
    ('Shallan', 'Davar', 1),
    ('Kalladin', 'Stormblessed', 1),
    ('Teft', 'Notblessed', 1),
    ('Moah', 'Traitor', 0),
    ('Taravangian', 'Manic', 0);

    UPDATE candidates
    SET industry_connected = 0
    WHERE id = 2;