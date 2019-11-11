INSERT INTO play
  ( play_id, title, director, description, language, play_url)
VALUES
  (1, 'ROBIN', 
    'Thomas Bellinck', 
    'The Wild Hunt sifts out how we ‘hunt’ people today. People with experience of this phenomenon, who Bellinck calls ‘experts’, were asked: “If you had to capture how people are hunted today in one image for an exhibition, what would we see?" Theatre-makers, journalists, the police, politicians: we are all hunting after someone or something. But who is hunting who, and how?',
    'English',
    'https://www.brakkegrond.nl/agenda/thomas-bellinck-robin'),
  (2, 'Een democratische avond voor bijna iedereen', 
    'Lucas De Man', 
    'Een democratische avond voor bijna iedereen wordt een fijne en dynamische avond waarbij je wordt meegenomen in het onderzoek naar de geschiedenis, het nu en de toekomst van de democratie. Niet alleen een analyse maar er wordt ook actief gezocht naar nieuwe mogelijkheden en ideeën. Dus wees bereid om geprikkeld te worden.',
    'Dutch',
    'https://www.frascatitheater.nl/democratischeavond-nieuwehelden'),
  (3, 'Pim Spreekt',
    'Ger Beukenkamp',
    'In veel gemeenten van Nederland speelt de discussie in hoeverre de namen van straten en pleinen nog houdbaar zijn in het licht van de geschiedenis. Mag de Coentunnel zo blijven heten, maar moet het standbeeld van J.P.Coen in Hoorn weg, of kan een disclaimer op de sokkel volstaan? In de voorstelling PIM SPREEKT vergadert een raadscommissie van een fictieve gemeente over de vraag of er een straat, plein of plantsoen genoemd moet worden naar Fortuyn. Hij werd immers in 2004 gekozen tot de grootste Nederlander aller tijden. Dit straatnaamoverleg, dat uitmondt in chaos, is het kader waarbinnen scènes uit het leven van Pim Fortuyn gedramatiseerd worden.',
    'Dutch',
    'https://www.debalie.nl/agenda/pim-spreekt-theatervoorstelling/'),
  (4, 'De kersentuin',
    'Simon McBurney',
    'Na een jarenlang verblijf in Parijs keert de weduwe Ranjevskaja terug naar haar geboortegrond in Rusland. Zij treft er een veranderde wereld aan. De schulden van de familie zijn zo hoog opgelopen dat het huis en het bijhorende landgoed bij opbod zullen worden verkocht. De zakenman Lopachin ziet een uitweg. Hij stelt voor om de kersentuin te kappen en op het vrijgekomen land zomerverblijven te bouwen, die kunnen worden verhuurd.',
    'Dutch',
    'https://ita.nl/nl/voorstellingen/de-kersentuin/299/');


INSERT INTO theater
    (theater_id, name, address, theater_url)
VALUES
    (1, 'De Brakke Grond', 'Nes 45 1012 KD Amsterdam', 'https://www.brakkegrond.nl/'),
    (2, 'Frascati', 'Nes 63 1012 KD Amsterdam', 'https://www.frascatitheater.nl/'),
    (3, 'De Balie', 'Kleine-Gartmanplantsoen 10 1017 RR Amsterdam', 'https://www.debalie.nl/home/'),
    (4, 'Stadsschouwburg', 'Leidseplein 26 1017 PT Amsterdam', 'https://stadsschouwburgamsterdam.nl/');


INSERT INTO showtime
    (showtime_id, play_id, theater_id, theater_room, play_date, play_time, price)
VALUES
    (1, 1, 1, 'Rode Zaal', 'Tuesday 10 dec 2019', '20:30', '€8 - €15'),
    (2, 1, 1, 'Rode Zaal', 'Wednesday 11 dec 2019', '20:30', '€8 - €15'),
    (3, 2, 2, 'Frascati', 'Tuesday 17 dec 2019', '20:30', '€13,50 - €17'),
    (4, 2, 2, 'Frascati', 'Wednesday 18 dec 2019', '20:30', '€13,50 - €17'),
    (5, 2, 2, 'Frascati', 'Thursday 19 dec 2019', '20:30', '€13,50 - €17'),
    (6, 3, 3, 'Podium', 'Wednesday 05 feb 2020', '20:00', '€17'),
    (7, 4, 4, 'Rabo Zaal', 'Saturday 04 jan 2020', '19:30', '€17,50 - 27,50'),
    (8, 4, 4, 'Rabo Zaal', 'Wednesday 08 jan 2020', '19:30', '€17,50 - 27,50'),
    (9, 4, 4, 'Rabo Zaal', 'Thursday 09 jan 2020', '19:30', '€17,50 - 27,50'),
    (10, 4, 4, 'Rabo Zaal', 'Friday 10 jan 2020', '19:30', '€17,50 - 27,50');