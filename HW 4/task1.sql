
CREATE TABLE petPet (
  petname NVARCHAR(20) NOT NULL,
  owner NVARCHAR(45) NOT NULL,
  species NVARCHAR(45) NOT NULL,
  gender NVARCHAR(1) NOT NULL,
  birth date NOT NULL,
  death date,
  PRIMARY KEY petname
);

CREATE TABLE petEvent (
  petname NVARCHAR(20) NOT NULL,
  eventdate date NOT NULL,
  eventtype NVARCHAR(15) NOT NULL,
  remark NVARCHAR(255),
  FOREIGN KEY petname,
  PRIMARY KEY eventdate, eventtype
);
