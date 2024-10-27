INSERT INTO petEvent VALUES
("Fluffy", "2020-10-15", "vet", "antibiotics"),
("Hammy", "2020-10-15", "vet", "antibiotics");

INSERT INTO petPet VALUES
("Hammy", "Diane", "Hamster", "M", "2010-10-30", NULL);

UPDATE TABLE petEvent
SET remark = "5 kittens, 2 male, 3 female"
WHERE petname = "Fluffy";

UPDATE TABLE petEvent
SET petname = "Claws"
WHERE date = “1997-08-03”, remark = "broken rib";

UPDATE TABLE petPet
SET death = "2020-09-01"
WHERE petname = "Puffball";

DELETE FROM petPet
WHERE owner = "Harold";

