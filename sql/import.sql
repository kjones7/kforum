-- Copyright (c) 2013, 2020 Georgios Gousios, Kyle Jones
-- MIT-licensed

/*
  Notes:
    - See https://meta.stackexchange.com/questions/2677/database-schema-documentation-for-the-public-data-dump-and-sede for more info about
      the schema
*/

CREATE database kforum DEFAULT CHARACTER SET utf8 DEFAULT COLLATE utf8_general_ci;

USE kforum;

CREATE TABLE Users (
    Id INT NOT NULL PRIMARY KEY,
    Reputation INT NOT NULL,
    CreationDate DATETIME,
    DisplayName VARCHAR(40) NULL,
    LastAccessDate  DATETIME NOT NULL,
    WebsiteUrl VARCHAR(256) NULL,
    Location VARCHAR(256) NULL,
    AboutMe TEXT NULL,
    Views INT DEFAULT 0,
    UpVotes INT,
    DownVotes INT,
    ProfileImageUrl VARCHAR(200) NULL,
    EmailHash VARCHAR(32),
    PasswordHash VARCHAR(32), -- Added by me
    Age INT NULL,
    AccountId INT NULL
);
