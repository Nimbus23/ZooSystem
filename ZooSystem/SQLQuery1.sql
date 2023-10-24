USE NimbusDB

GO

DROP TABLE IF EXISTS dbo.ZooAnimal

DROP TABLE IF EXISTS dbo.Zoo

DROP TABLE IF EXISTS dbo.Animal

GO

CREATE TABLE [dbo].[Zoo] (

    [Id]       INT           IDENTITY (1, 1) NOT NULL,

    [Location] NVARCHAR (50) NOT NULL,

    PRIMARY KEY CLUSTERED ([Id] ASC)

);

CREATE TABLE [dbo].[Animal] (

    [Id]   INT           IDENTITY (1, 1) NOT NULL,

    [Name] NVARCHAR (50) NOT NULL,

    PRIMARY KEY CLUSTERED ([Id] ASC)

);

CREATE TABLE [dbo].[ZooAnimal] (

    [Id]       INT IDENTITY (1, 1) NOT NULL,

    [ZooID]    INT NOT NULL,

    [AnimalId] INT NOT NULL,

    PRIMARY KEY CLUSTERED ([Id] ASC),

    CONSTRAINT [AnimalFK] FOREIGN KEY ([AnimalId]) REFERENCES [dbo].[Animal] ([Id]) ON DELETE CASCADE,

    CONSTRAINT [ZooFK] FOREIGN KEY ([ZooID]) REFERENCES [dbo].[Zoo] ([Id]) ON DELETE CASCADE

);

INSERT INTO dbo.Zoo VALUES ('New York')

INSERT INTO dbo.Zoo VALUES ('Tokyo')

INSERT INTO dbo.Zoo VALUES ('Berlin')

INSERT INTO dbo.Zoo VALUES ('Kairo')

INSERT INTO dbo.Zoo VALUES ('Milan')

INSERT INTO dbo.Animal VALUES ('Shark')

INSERT INTO dbo.Animal VALUES ('Clownfish')

INSERT INTO dbo.Animal VALUES ('Monkey')

INSERT INTO dbo.Animal VALUES ('Wolf')

INSERT INTO dbo.Animal VALUES ('Gecko')

INSERT INTO dbo.Animal VALUES ('Crocodile')

INSERT INTO dbo.Animal VALUES ('Owl')

INSERT INTO dbo.Animal VALUES ('Parrot')

INSERT INTO dbo.ZooAnimal VALUES (1,1)

INSERT INTO dbo.ZooAnimal VALUES (1,2)

INSERT INTO dbo.ZooAnimal VALUES (2,3)

INSERT INTO dbo.ZooAnimal VALUES (2,4)

INSERT INTO dbo.ZooAnimal VALUES (3,5)

INSERT INTO dbo.ZooAnimal VALUES (3,6)

INSERT INTO dbo.ZooAnimal VALUES (4,7)

INSERT INTO dbo.ZooAnimal VALUES (4,8)

INSERT INTO dbo.ZooAnimal VALUES (5, 1)

INSERT INTO dbo.ZooAnimal VALUES (5, 2)

INSERT INTO dbo.ZooAnimal VALUES (5, 3)

INSERT INTO dbo.ZooAnimal VALUES (5, 4)

INSERT INTO dbo.ZooAnimal VALUES (5, 5)

INSERT INTO dbo.ZooAnimal VALUES (5, 6)

INSERT INTO dbo.ZooAnimal VALUES (5, 7)

INSERT INTO dbo.ZooAnimal VALUES (5, 8)