/* Marthin Mandig, Heena, Suma, Gina
INFO 330 BA 
GROUP 4
5/17/24 */

-- Step 1: Create the database
USE master;
GO


CREATE DATABASE db_animal_shelter;
GO

-- Step 2: Select the database
USE db_animal_shelter;
GO

-- Insert data into stagingTable
-- Step 3: Creating the staging table and inserting data
DROP TABLE IF EXISTS animalshelter
CREATE TABLE dbo.animalshelter (
    animalshelterid DATE NOT NULL PRIMARY KEY ,
    AnimalsName VARCHAR(50),
    Species VARCHAR(4) NOT NULL,
    PrimaryBreed VARCHAR(46) NOT NULL,
    Customers VARCHAR(46) NOT NULL,
    Volunteers VARCHAR(100) NOT NULL,
);
GO

ALTER TABLE dbo.animalshelter
ADD CONSTRAINT UQ_AnimalshelterID UNIQUE (animalshelterid);
GO
-- Insert data into stagingTable
-- Insert additional data into stagingTable
--SET IDENTITY_INSERT dbo.animalshelter ON;
--GO
INSERT INTO dbo.animalshelter (animalshelterid, AnimalsName, Species, PrimaryBreed, SecondaryBreed, )
VALUES 
    ('2017-05-10', 'Toby', 'Dog', 'Bulldog', 'Mix', '98102'),
    ('2017-09-30', 'Luna', 'Cat', 'Ragdoll', 'Mix', '98104'),
    ('2018-12-18', 'Coco', 'Dog', 'Shih Tzu', NULL, '98108'),
    ('2019-06-21', 'Rocky', 'Dog', 'Boxer', 'Mix', '98109'),
    ('2020-05-17', 'Molly', 'Cat', 'Persian', 'Mix', '98118'),
    ('2021-11-11', 'Chloe', 'Cat', 'British Shorthair', NULL, '98116'),
    ('2022-07-22', 'Bailey', 'Dog', 'Dachshund', 'Mix', '98112'),
    ('2022-10-19', 'Stella', 'Cat', 'Maine Coon', 'Mix', '98133'),
    ('2023-01-07', 'Ruby', 'Dog', 'Cocker Spaniel', NULL, '98125'),
    ('2023-03-15', 'Loki', 'Cat', 'Russian Blue', 'Mix', '98107'),
    ('2016-02-11', 'Shadow', 'Dog', 'Rottweiler', 'Mix', '98110'),
    ('2017-04-16', 'Buddy', 'Dog', 'Pit Bull', NULL, '98112'),
    ('2018-08-25', 'Nala', 'Cat', 'Abyssinian', 'Mix', '98113'),
    ('2019-03-14', 'Finn', 'Dog', 'Basset Hound', 'Mix', '98114'),
    ('2020-06-18', 'Gizmo', 'Cat', 'Sphynx', 'Mix', '98115'),
    ('2021-01-25', 'Jasper', 'Dog', 'Samoyed', NULL, '98116'),
    ('2021-09-30', 'Lilly', 'Cat', 'Savannah', 'Mix', '98117'),
    ('2022-12-13', 'Riley', 'Dog', 'Mastiff', 'Mix', '98118'),
    ('2023-05-24', 'Zeus', 'Dog', 'Doberman Pinscher', NULL, '98119'),
    ('2016-07-15', 'Simba', 'Cat', 'Egyptian Mau', 'Mix', '98120'),
    ('2017-11-22', 'Sophie', 'Dog', 'Great Dane', 'Mix', '98121'),
    ('2018-04-11', 'Henry', 'Dog', 'Chihuahua', NULL, '98122'),
    ('2019-10-06', 'Oscar', 'Cat', 'Chartreux', 'Mix', '98123'),
    ('2020-11-03', 'Murphy', 'Dog', 'Bernese Mountain Dog', 'Mix', '98124'),
    ('2021-08-19', 'Roxy', 'Cat', 'American Shorthair', 'Mix', '98125'),
    ('2022-04-27', 'Benny', 'Dog', 'Vizsla', NULL, '98126'),
    ('2023-06-30', 'Willow', 'Cat', 'Turkish Angora', 'Mix', '98127'),
    ('2023-07-12', 'Duke', 'Dog', 'Newfoundland', 'Mix', '98128'),
    ('2016-09-21', 'Lulu', 'Cat', 'Selkirk Rex', 'Mix', '98129'),
    ('2017-03-28', 'Jake', 'Dog', 'Weimaraner', NULL, '98130'),
    ('2018-10-19', 'Ollie', 'Cat', 'Japanese Bobtail', 'Mix', '98131'),
    ('2019-07-05', 'Sadie', 'Dog', 'Akita', 'Mix', '98132'),
    ('2020-02-29', 'Piper', 'Cat', 'Snowshoe', 'Mix', '98134'),
    ('2021-12-21', 'Hazel', 'Dog', 'Irish Setter', NULL, '98135'),
    ('2022-11-18', 'Pepper', 'Cat', 'Singapura', 'Mix', '98136'),
    ('2023-08-14', 'Ace', 'Dog', 'Portuguese Water Dog', 'Mix', '98137'),
    ('2023-09-29', 'Buster', 'Cat', 'Manx', 'Mix', '98138'),
    ('2022-05-25', 'Baku', 'Cat', 'Mix', 'Mix', '98112');
GO
--check table structure
SELECT TOP 10 * FROM animalshelter

DROP TABLE IF EXISTS LicenseIssueDate
CREATE TABLE dbo.LicenseIssueDate(
    LicenseID INTEGER PRIMARY KEY IDENTITY(1,1) NOT NULL,
    AnimalsName VARCHAR(50),
    LicenseDate DATE NOT NULL
);
GO

ALTER TABLE dbo.LicenseIssueDate
ADD CONSTRAINT UQ_AnimalshelterID UNIQUE (LicenseID);
GO

SET IDENTITY_INSERT dbo.LicenseIssueDate ON;
GO
INSERT INTO dbo.LicenseIssueDate (LicenseID, AnimalsName, LicenseDate) VALUES
    (1,'Toby', '2017-05-10'),
    (2,'Luna', '2017-09-30'),
    (3,'Coco', '2018-12-18'),
    (4,'Rocky', '2019-06-21'),
    (5,'Molly', '2020-05-17'),
    (6,'Chloe', '2021-11-11'),
    (7,'Bailey', '2022-07-22'),
    (8,'Stella', '2022-10-19'),
    (9,'Ruby', '2023-01-07'),
    (10,'Loki', '2023-03-15'),
    (11,'Shadow', '2016-02-11'),
    (12,'Buddy', '2017-04-16'),
    (13,'Nala', '2018-08-25'),
    (14,'Finn', '2019-03-14'),
    (15,'Gizmo', '2020-06-18'),
    (16,'Jasper', '2021-01-25'),
    (17,'Lilly', '2021-09-30'),
    (18,'Riley', '2022-12-13'),
    (19,'Zeus', '2023-05-24'),
    (20,'Simba', '2016-07-15')
GO

SET IDENTITY_INSERT dbo.LicenseIssueDate OFF
GO

SELECT TOP 10 * FROM LicenseIssueDate

DROP TABLE IF EXISTS AnimalsName
    CREATE TABLE dbo.AnimalsName (
        NameID INTEGER PRIMARY KEY IDENTITY(1,1) NOT NULL,
        NameAnimal VARCHAR(60) NOT NULL,
        AnimalAge INTEGER NOT NULL
    );
GO

-- Insert data into AnimalsName
SET IDENTITY_INSERT dbo.AnimalsName ON;
GO
INSERT INTO dbo.AnimalsName (NameID, NameAnimal, AnimalAge) VALUES
    (1, 'Toby', 5),
    (2, 'Luna', 3),
    (3, 'Coco', 7),
    (4, 'Rocky', 4),
    (5, 'Molly', 2),
    (6, 'Chloe', 6),
    (7, 'Bailey', 3),
    (8, 'Stella', 1),
    (9, 'Ruby', 4),
    (10, 'Loki', 2),
    (11, 'Shadow', 8),
    (12, 'Buddy', 5),
    (13, 'Nala', 4),
    (14, 'Finn', 3),
    (15, 'Gizmo', 6),
    (16, 'Jasper', 7),
    (17, 'Lilly', 2),
    (18, 'Riley', 5),
    (19, 'Zeus', 4),
    (20, 'Simba', 8);
GO

-- Turn IDENTITY_INSERT OFF
SET IDENTITY_INSERT dbo.AnimalsName OFF;
GO

SELECT TOP 10 * FROM AnimalsName


DROP TABLE IF EXISTS Species
    CREATE TABLE dbo.Species (
        SpeciesID INTEGER PRIMARY KEY IDENTITY(1,1) NOT NULL,
        NameAnimal VARCHAR(60) NOT NULL,
        SpeciesName VARCHAR (60),
        PrimaryBreedID INTEGER NOT NULL,
        SecondaryBreedID INTEGER,
        animalshelterid DATE
    );
GO

SET IDENTITY_INSERT dbo.Species ON;
GO
INSERT INTO dbo.Species (SpeciesID, NameAnimal, SpeciesName, PrimaryBreedID, SecondaryBreedID, animalshelterid) VALUES
    (1, 'Toby', 'Dog', 1, 2, '2017-05-10'),
    (2, 'Luna', 'Cat', 3, 4, '2017-09-30'),
    (3, 'Coco', 'Dog', 5, NULL, '2018-12-18'),
    (4, 'Rocky', 'Dog', 6, 7, '2019-06-21'),
    (5, 'Molly', 'Cat', 8, 9, '2020-05-17'),
    (6, 'Chloe', 'Cat', 10, NULL, '2021-11-11'),
    (7, 'Bailey', 'Dog', 11, 12, '2022-07-22'),
    (8, 'Stella', 'Cat', 13, 14, '2022-10-19'),
    (9, 'Ruby', 'Dog', 15, NULL, '2023-01-07'),
    (10, 'Loki', 'Cat', 16, 17, '2023-03-15'),
    (11, 'Shadow', 'Dog', 18, 19, '2016-02-11'),
    (12, 'Buddy', 'Dog', 20, NULL, '2017-04-16'),
    (13, 'Nala', 'Cat', 21, 22, '2018-08-25'),
    (14, 'Finn', 'Dog', 23, 24, '2019-03-14'),
    (15, 'Gizmo', 'Cat', 25, 26, '2020-06-18'),
    (16, 'Jasper', 'Dog', 27, NULL, '2021-01-25'),
    (17, 'Lilly', 'Cat', 28, 29, '2021-09-30'),
    (18, 'Riley', 'Dog', 30, 31, '2022-12-13'),
    (19, 'Zeus', 'Dog', 32, NULL, '2023-05-24'),
    (20, 'Simba', 'Cat', 33, 34, '2016-07-15');
GO

-- Turn IDENTITY_INSERT OFF
SET IDENTITY_INSERT dbo.Species OFF;
GO

SELECT TOP 10 * FROM Species


DROP TABLE IF EXISTS PrimaryBreed
    CREATE TABLE dbo.primarybreed (
        primarybreedName VARCHAR (70) PRIMARY KEY NOT NULL,
        SpeciesID INTEGER, 
        AnimalsName VARCHAR (100)
        );
    GO

INSERT INTO dbo.primarybreed (primarybreedName, SpeciesID, AnimalsName) VALUES
    ('Bulldog', 1, 'Toby'),
    ('Ragdoll', 2, 'Luna'),
    ('Shih Tzu', 3, 'Coco'),
    ('Boxer', 4, 'Rocky'),
    ('Persian', 5, 'Molly'),
    ('British Shorthair', 6, 'Chloe'),
    ('Dachshund', 7, 'Bailey'),
    ('Maine Coon', 8, 'Stella'),
    ('Cocker Spaniel', 9, 'Ruby'),
    ('Russian Blue', 10, 'Loki'),
    ('Rottweiler', 11, 'Shadow'),
    ('Pit Bull', 12, 'Buddy'),
    ('Abyssinian', 13, 'Nala'),
    ('Basset Hound', 14, 'Finn'),
    ('Sphynx', 15, 'Gizmo'),
    ('Samoyed', 16, 'Jasper'),
    ('Savannah', 17, 'Lilly'),
    ('Mastiff', 18, 'Riley'),
    ('Doberman Pinscher', 19, 'Zeus'),
    ('Egyptian Mau', 20, 'Simba'),
    ('Great Dane', 21, 'Sophie'),
    ('Chihuahua', 22, 'Henry'),
    ('Chartreux', 23, 'Oscar'),
    ('Bernese Mountain Dog', 24, 'Murphy'),
    ('American Shorthair', 25, 'Roxy'),
    ('Vizsla', 26, 'Benny'),
    ('Turkish Angora', 27, 'Willow'),
    ('Newfoundland', 28, 'Duke'),
    ('Selkirk Rex', 29, 'Lulu'),
    ('Weimaraner', 30, 'Jake'),
    ('Japanese Bobtail', 31, 'Ollie'),
    ('Akita', 32, 'Sadie'),
    ('Snowshoe', 33, 'Piper'),
    ('Irish Setter', 34, 'Hazel'),
    ('Singapura', 35, 'Pepper'),
    ('Portuguese Water Dog', 36, 'Ace'),
    ('Manx', 37, 'Buster'),
    ('Mix', 38, 'Baku');
GO

SELECT TOP 10 * FROM primarybreed

-- Create the Customers table
DROP TABLE IF EXISTS Customers;
CREATE TABLE dbo.Customers (
    CustomerID INTEGER PRIMARY KEY IDENTITY(1,1) NOT NULL,
    CustomerName VARCHAR(100) NOT NULL,
    CustomerEmail VARCHAR(100) NOT NULL,
    CustomerPhone VARCHAR(15) NOT NULL,
    CustomerAddress VARCHAR(255) NOT NULL
);
GO

ALTER TABLE dbo.Customers
ADD CONSTRAINT UQ_CustomerID UNIQUE (CustomerID);
GO

SET IDENTITY_INSERT dbo.Customers ON;
GO

INSERT INTO dbo.Customers (CustomerID, CustomerName, CustomerEmail, CustomerPhone, CustomerAddress)
VALUES
    (1, 'Alice Johnson', 'alicej@example.com', '345-678-9012', '123 Main St, Cityville, ST 12345'),
    (2, 'Bob Brown', 'bobbrown@example.com', '456-789-0123', '456 Elm St, Townsville, ST 67890'),
    (3, 'Charlie Davis', 'charlied@example.com', '567-890-1234', '789 Maple Ave, Villagetown, ST 23456'),
    (4, 'Diana Evans', 'dianaev@example.com', '678-901-2345', '101 Pine St, Hamletville, ST 34567'),
    (5, 'Ethan Foster', 'ethanf@example.com', '789-012-3456', '202 Oak St, Smalltown, ST 45678'),
    (6, 'Fiona Green', 'fionag@example.com', '890-123-4567', '303 Birch St, Littleville, ST 56789'),
    (7, 'George Harris', 'georgeh@example.com', '901-234-5678', '404 Cedar St, Minitown, ST 67890'),
    (8, 'Hannah Iverson', 'hannahiv@example.com', '012-345-6789', '505 Spruce St, Microtown, ST 78901'),
    (9, 'Ivan Jackson', 'ivanj@example.com', '123-456-7890', '606 Aspen St, Teentown, ST 89012'),
    (10, 'Jackie King', 'jackiek@example.com', '234-567-8901', '707 Redwood St, Macroville, ST 90123');
GO

SET IDENTITY_INSERT dbo.Customers OFF;
GO

SELECT TOP 10 * FROM Customers;

-- Create the Volunteers table
DROP TABLE IF EXISTS Volunteers;
CREATE TABLE dbo.Volunteers (
    VolunteerID INTEGER PRIMARY KEY IDENTITY(1,1) NOT NULL,
    VolunteerName VARCHAR(100) NOT NULL,
    VolunteerEmail VARCHAR(100) NOT NULL,
    VolunteerPhone VARCHAR(15) NOT NULL,
    VolunteerStartDate DATE NOT NULL
);
GO

ALTER TABLE dbo.Volunteers
ADD CONSTRAINT UQ_VolunteerID UNIQUE (VolunteerID);
GO

SET IDENTITY_INSERT dbo.Volunteers ON;
GO

INSERT INTO dbo.Volunteers (VolunteerID, VolunteerName, VolunteerEmail, VolunteerPhone, VolunteerStartDate)
VALUES
    (1, 'John Doe', 'johndoe@example.com', '123-456-7890', '2023-01-15'),
    (2, 'Jane Smith', 'janesmith@example.com', '234-567-8901', '2022-05-10'),
    (3, 'Alice Brown', 'aliceb@example.com', '345-678-9012', '2021-03-19'),
    (4, 'Robert Johnson', 'robertj@example.com', '456-789-0123', '2020-08-22'),
    (5, 'Emily Davis', 'emilyd@example.com', '567-890-1234', '2019-11-30'),
    (6, 'Michael Wilson', 'michaelw@example.com', '678-901-2345', '2018-07-15'),
    (7, 'Sarah Miller', 'sarahm@example.com', '789-012-3456', '2017-09-05'),
    (8, 'David Lee', 'davidl@example.com', '890-123-4567', '2016-04-18'),
    (9, 'Laura Garcia', 'laurag@example.com', '901-234-5678', '2015-02-20'),
    (10, 'James Martinez', 'jamesm@example.com', '012-345-6789', '2014-12-10'),
    (11, 'Patricia Rodriguez', 'patriciar@example.com', '123-456-7890', '2013-06-15'),
    (12, 'Linda Hernandez', 'lindah@example.com', '234-567-8901', '2012-01-25'),
    (13, 'Barbara Moore', 'barbaram@example.com', '345-678-9012', '2011-03-30'),
    (14, 'Elizabeth Taylor', 'elizabetht@example.com', '456-789-0123', '2010-10-12'),
    (15, 'Thomas Anderson', 'thomasa@example.com', '567-890-1234', '2009-05-19'),
    (16, 'Christopher Thomas', 'christophert@example.com', '678-901-2345', '2008-08-28'),
    (17, 'Daniel Jackson', 'danielj@example.com', '789-012-3456', '2007-07-07'),
    (18, 'Matthew White', 'mattheww@example.com', '890-123-4567', '2006-02-14'),
    (19, 'Anthony Harris', 'anthonyh@example.com', '901-234-5678', '2005-11-23'),
    (20, 'Mark Lewis', 'markl@example.com', '012-345-6789', '2004-09-01');
GO

SET IDENTITY_INSERT dbo.Volunteers OFF;
GO

SELECT TOP 10 * FROM Volunteers;

-- Create Location Table
DROP TABLE IF EXISTS Location;
CREATE TABLE dbo.Location (
    LocationID INTEGER PRIMARY KEY IDENTITY(1,1) NOT NULL,
    city_name VARCHAR(100) NOT NULL,
    state_name VARCHAR(100) NOT NULL,
    zip_code VARCHAR(15) NOT NULL,
);
GO

ALTER TABLE dbo.Location
ADD CONSTRAINT UQ_LocationID UNIQUE (LocationID);
GO

SET IDENTITY_INSERT dbo.Location ON;
GO

INSERT INTO dbo.Location (LocationID, city_name, state_name, zip_code)
VALUES
    (1, 'Ballard', 'Washington', '98107'),
    (2, 'Capitol Hill', 'Washington', '98102'),
    (3, 'Fremont', 'Washington', '98103'),
    (4, 'Greenwood', 'Washington', '98133'),
    (5, 'Magnolia', 'Washington', '98199'),
    (6, 'Queen Anne', 'Washington', '98109'),
    (7, 'Rainier Valley', 'Washington', '98118'),
    (8, 'West Seattle', 'Washington', '98116'),
    (9, 'University District', 'Washington', '98105'),
    (10, 'Belltown', 'Washington', '98121'),
    (11, 'South Lake Union', 'Washington', '98109'),
    (12, 'Pioneer Square', 'Washington', '98104'),
    (13, 'Georgetown', 'Washington', '98108'),
    (14, 'Madison Park', 'Washington', '98112'),
    (15, 'Wallingford', 'Washington', '98103'),
    (16, 'Columbia City', 'Washington', '98118'),
    (17, 'Beacon Hill', 'Washington', '98144'),
    (18, 'First Hill', 'Washington', '98104'),
    (19, 'Lake City', 'Washington', '98125'),
    (20, 'Ravenna', 'Washington', '98115');
GO

SET IDENTITY_INSERT dbo.Location OFF;
GO


-- Step 5: Add foreign key constraints
ALTER TABLE dbo.db_animal_shelter
ADD CONSTRAINT fk_dogs FOREIGN KEY (dogs_id) REFERENCES dbo.stagingTable (shelter_id),
    CONSTRAINT fk_cats FOREIGN KEY (cats_id) REFERENCES dbo.stagingTable (shelter_id),
    CONSTRAINT fk_volunteers FOREIGN KEY (volunteers_id) REFERENCES dbo.stagingTable (shelter_id),
    CONSTRAINT fk_customers FOREIGN KEY (customers_id) REFERENCES dbo.stagingTable (shelter_id),
    CONSTRAINT fk_location FOREIGN KEY (LocationID_id) REFERENCES dbo.stagingTable (shelter_id),

-- Step 6: Add a check constraint
ALTER TABLE dbo.db_animal_shelter
ADD CONSTRAINT chk_zip_id_positive CHECK (zip_id > 0);

-- Step 7: Create stored procedure
IF OBJECT_ID('dbo.InsertAnimalShelterRow', 'P') IS NOT NULL
BEGIN
    DROP PROCEDURE dbo.InsertAnimalShelterRow;
END;
GO

CREATE PROCEDURE dbo.InsertAnimalShelterRow (
    @p_shelter_id INT,
    @p_customer_id INT,
    @p_dogs_id INT,
    @p_cats_id INT,
    @p_year_id INT,
    @p_volunteers_id INT,
    @p_zip_id INT,
    @p_message VARCHAR(255) OUTPUT
)
AS
BEGIN
    BEGIN TRY
        BEGIN TRANSACTION;

        -- Check constraints
        IF NOT EXISTS (SELECT 1 FROM dbo.stagingTable WHERE [License Number] = @p_dogs_id)
        BEGIN
            SET @p_message = 'dogs_id does not exist.';
            ROLLBACK;
            RETURN;
        END

        IF NOT EXISTS (SELECT 1 FROM dbo.stagingTable WHERE [License Number] = @p_cats_id)
        BEGIN
            SET @p_message = 'cats_id does not exist.';
            ROLLBACK;
            RETURN;
        END

        IF NOT EXISTS (SELECT 1 FROM dbo.stagingTable WHERE [License Number] = @p_year_id)
        BEGIN
            SET @p_message = 'year_id does not exist.';
            ROLLBACK;
            RETURN;
        END

        IF NOT EXISTS (SELECT 1 FROM dbo.stagingTable WHERE [License Number] = @p_volunteers_id)
        BEGIN
            SET @p_message = 'volunteers_id does not exist.';
            ROLLBACK;
            RETURN;
        END

        IF NOT EXISTS (SELECT 1 FROM dbo.stagingTable WHERE [License Number] = @p_zip_id)
        BEGIN
            SET @p_message = 'zip_id does not exist.';
            ROLLBACK;
            RETURN;
        END

        IF NOT EXISTS (SELECT 1 FROM dbo.stagingTable WHERE [License Number] = @p_shelter_id)
        BEGIN
            SET @p_message = 'shelter_id does not exist.';
            ROLLBACK;
            RETURN;
        END

        IF NOT EXISTS (SELECT 1 FROM dbo.stagingTable WHERE [License Number] = @p_customer_id)
        BEGIN
            SET @p_message = 'customer_id does not exist.';
            ROLLBACK;
            RETURN;
        END

        -- Insert data
        INSERT INTO dbo.db_animal_shelter (customer_id, dogs_id, cats_id, year_id, volunteers_id, zip_id)
        VALUES (@p_customer_id, @p_dogs_id, @p_cats_id, @p_year_id, @p_volunteers_id, @p_zip_id);

        COMMIT;
        SET @p_message = 'Data inserted successfully.';
    END TRY
    BEGIN CATCH
        ROLLBACK;
        SET @p_message = 'An error occurred while inserting the data.';
    END CATCH
END;
GO

-- Example of how to call the stored procedure
-- DECLARE @message VARCHAR(255);
-- EXEC dbo.InsertAnimalShelterRow @p_shelter_id = 1, @p_customer_id = 1, @p_dogs_id = 1, @p_cats_id = 1, @p_year_id = 1, @p_volunteers_id = 1, @p_zip_id = 1, @p_message = @message OUTPUT;
-- SELECT @message;