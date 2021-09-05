INSERT INTO parties (name, description)
VALUES
  ('JS Juggernauts', 'The JS Juggernauts eat, breathe, and sleep JavaScript. They can build everything you could ever want in JS, including a new kitchen sink.'),
  ('Heroes of HTML', 'Want to see a mock-up turn into an actual webpage in a matter of minutes? Well, the Heroes of HTML can get it done in a matter of seconds.'),
  ('Git Gurus', 'Need to resolve a merge conflict? The Git Gurus have your back. Nobody knows Git like these folks do.');

INSERT INTO candidates (first_name, last_name, party_id, industry_connected)
VALUES
    ('Gavilar', 'Kholin', 1, 0),
    ('Navani', 'Kholin', 1, 1),
    ('Elhokar', 'Kholin', 2, 0),
    ('Jasnah', 'Kholin', 3, 1),
    ('Dalinar', 'Kholin', 1, 1),
    ('Evie', 'Kholin', 2, 0),
    ('Adolin', 'Kholin', 3, 0),
    ('Renarin', 'Kholin', 3, 1),
    ('Shallan', 'Davar', 3, 1),
    ('Kalladin', 'Stormblessed', 1, 1),
    ('Teft', 'Notblessed', 2, 1),
    ('Moash', 'Traitor', 2, 0),
    ('Taravangian', 'Manic', 1, 0);
