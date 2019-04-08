INSERT INTO play
  ( play_id, title, director, description, language, play_url)
VALUES
  (1, 'Is This Porn, No This Is Love', 
    'Julie Cafmeyer', 
    'Julie Cafmeyer is ''één van de gewiekste regisseurs van haar generatie'' volgens het Vlaamse magazine Knack. In deze double bill vertelt ze onbeschaamd over haar wanhopige zoektocht naar liefde, bevestiging en zingeving. 
    Theater gaat doorgaans over de grote betekenissen van het bestaan. Julie Cafmeyer laat zien hoe persoonlijke verhalen van grote betekenis kunnen zijn. Na haar vorige spraakmakende voorstelling ''Therapie'', voert ze haar publiek ook deze maal mee naar de intimiteit van haar hoogstpersoonlijke ervaringen. In deze altruïstische theatertrip gaat ze onverschrokken op exploratie naar wat hartenpijn, waar we allen zo hebben mee te maken, betekent. Bombastische liefdesverklaring is een uit haar intieme leven gegrepen biografische, documentaire verklaring. Jullie vraagt aandacht! Ontroerend serveert ze haar twijfels, pijn, wanhoop en verlangen. Zonder gêne neemt ze haar publiek mee in een theatermoment waar iedereen betrokken partij kan zijn, radicaal, principieel, zonder franjes.  
    In deze double bill presenteert Julie Cafmeyer ook haar nieuwe tekst en voorstelling Is this porn? no this is love. In een dialoog over twee mensen die het einde van hun relatie naderen, beschrijft Julie op humoristische wijze de fictie van een relatie. Is this porn? no this is love wordt gespeeld door Julie Cafmeyer en Steve Aernouts. ',
    'English',
    'https://www.brakkegrond.nl/agenda/julie-cafmeyer-de-brakke-grond-toneelschuur-producties'),
  (2, 'Tenzij je een beter plan hebt', 
    'Anoek Nuyens & Rebekka de Wit', 
    'In een Japans onderzoeksstation voor apen woont een chimpansee die veel beter dan mensen getallenreeksen bleek te kunnen onthouden. In allerijl werden mensen met een fotografisch geheugen opgetrommeld om het tegen de aap op te nemen. Honderdvijftig jaar na Darwin willen we kennelijk nog steeds beter zijn dan dieren. Laat staan dat we gelijk zouden zijn aan planten of dingen. En dat is niet alleen omdat we daarmee heel wat rechten zouden inleveren, maar ook omdat het daadwerkelijk onze verbeelding voorbij gaat. Is de mens wel in staat zichzelf uit het centrum van het denken weg te halen?
    Inmiddels roepen steeds meer denkers op om de relatie tussen mens, dier, natuur en ding bij te stellen en worden er steeds meer proefschriften over de post-humanistische zaak geschreven. Er zijn zelfs verenigingen die je vragen de mier in jezelf wakker te maken. Omdat ze die proefschriften lang niet allemaal uitgelezen kregen en de mier in zichzelf niet wakker kregen, proberen theatermakers Anoek Nuyens en Rebekka de Wit iets anders. In samenwerking met journalisten, activisten, filosofen, juristen en een mediastrateeg gaan ze op zoek naar een manier om een wereld te verbeelden waar de mens niet de maat der dingen is. Tenzij je een beter plan hebt…',
    'Dutch',
    'https://www.frascatitheater.nl/tenzij'),
  (3, 'Afrovibes: What Remains',
    'Jay Pather',
    'Do we want to forget or to remember? The theatre performance ''What Remains'' dives into the uncomfortable history of slavery in Cape Town. On a cool day construction workers encounter an 18th century slave burial ground with the bones of several thousand enslaved people by the Dutch VOC. When the bones emerge from the ground, with them arrives an irreconcilable set of views and visions: project developers who want to build, archeologists who want to do historical research, activists who want to bury the bones. How do we deal with our loaded past? What Remains is a crossover between theatre, dance and video about a city haunted by the memory of slavery and trying to reconcile the past with the present.',
    'English',
    'https://www.debalie.nl/agenda/podium/afrovibes:-what-remains/'),
  (4, 'Solo ten oorlog',
    'Tom Lanoye',
    'Twintig jaar geleden ging Ten Oorlog in première, Lanoye’s spraakmakende marathonbewerking van acht koningsdrama’s van William Shakespeare, in regie van Luk Perceval. Het werd een triomftocht, ook in Duitsland en Oostenrijk. Ten Oorlog voert inmiddels ook de Nederlandstalige toneelcanon aan.
    De vraag naar het stuk bleef onverminderd groot. Die werd in 2000 werd ingewilligd toen Lanoye door de Nederlanden toerde met zijn Ten Oorlog-solo. "Lanoye houdt in anderhalf uur de spanningsboog prachtig vol. Hij is een poëtische krachtbron, even vitaal en vol spankracht als de voorstelling Ten Oorlog zelf.", schreef NRC indertijd.
    Als berucht en begenadigd performer van zijn eigen teksten balanceert Lanoye tussen het verhevene en het banale, het geestige en het wrede. Dankzij spitse tussenteksten gunt hij zijn publiek een blik op de creatieve motor van Ten Oorlog – de evolutie van de taal van oubollig klassiek naar experimenteel en brutaal eigentijds.',
    'English-Vlaams',
    'https://stadsschouwburgamsterdam.nl/voorstellingen/12625-solo-ten-oorlog');


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
    (1, 1, 1, 'Rode Zaal', 'Thursday 28 sep 2017', '20:00', '€5 - €13'),
    (2, 1, 1, 'Rode Zaal', 'Friday 29 sep 2017', '20:00', '€5 - €13'),
    (3, 1, 1, 'Rode Zaal', 'Saturday 30 sep 2017', '20:00', '€5 - €13'),
    (4, 2, 2, 'Frascati', 'Wednesday 27 sep 2017', '20:30', '€11,50 - €15'),
    (5, 2, 2, 'Frascati', 'Thursday 28 sep 2017', '20:30', '€11,50 - €15'),
    (6, 2, 2, 'Frascati', 'Friday 29 sep 2017', '20:30', '€11,50 - €15'),
    (7, 2, 2, 'Frascati', 'Saturday 30 sep 2017', '20:30', '€11,50 - €15'),
    (8, 3, 3, 'Podium', 'Saturday 30 sep 2017', '20:00', '€12,50 - €15'),
    (9, 4, 4, 'Grote Zaal', 'Monday 9 oct 2017', '20:30', '€22,50 - 27,50');