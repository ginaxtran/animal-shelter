-- Step 1: Create the database
USE master;
GO

IF DB_ID('db_animal_shelter') IS NOT NULL
BEGIN
    DROP DATABASE db_animal_shelter;
END;
GO

CREATE DATABASE db_animal_shelter;
GO

-- Step 2: Select the database
USE db_animal_shelter;
GO

-- Step 3: Creating the staging table and inserting data
IF OBJECT_ID('dbo.stagingTable', 'U') IS NOT NULL
BEGIN
    DROP TABLE dbo.stagingTable;
END;
GO

CREATE TABLE dbo.stagingTable (
    [License Issue Date] DATE NOT NULL PRIMARY KEY,
    [License Number] VARCHAR(7) NOT NULL,
    [Animals Name] VARCHAR(50),
    Species VARCHAR(4) NOT NULL,
    [Primary Breed] VARCHAR(46) NOT NULL,
    [Secondary Breed] VARCHAR(46),
    [ZIP Code] VARCHAR(7)
);

-- Insert data into stagingTable
-- Step 3: Creating the staging table and inserting data
IF OBJECT_ID('dbo.stagingTable', 'U') IS NOT NULL
BEGIN
    DROP TABLE dbo.stagingTable;
END;
GO

CREATE TABLE dbo.stagingTable (
    [License Issue Date] DATE NOT NULL PRIMARY KEY,
    [Animals Name] VARCHAR(50),
    Species VARCHAR(4) NOT NULL,
    [Primary Breed] VARCHAR(46) NOT NULL,
    [Secondary Breed] VARCHAR(46),
    [ZIP Code] VARCHAR(7)
);

-- Insert data into stagingTable
-- Insert additional data into stagingTable
INSERT INTO dbo.stagingTable ([License Issue Date], [Animals Name], Species, [Primary Breed], [Secondary Breed], [ZIP Code])
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

-- Step 4: Modify the db_animal_shelter table if necessary

-- Step 5: Add foreign key constraints if necessary

-- Step 4: Create the db_animal_shelter table
IF OBJECT_ID('dbo.db_animal_shelter', 'U') IS NOT NULL
BEGIN
    DROP TABLE dbo.db_animal_shelter;
END;
GO

CREATE TABLE dbo.db_animal_shelter (
    shelter_id INT IDENTITY(1,1) PRIMARY KEY,
    customer_id INT NOT NULL,
    dogs_id INT NOT NULL,
    cats_id INT NOT NULL,
    year_id INT NOT NULL,
    volunteers_id INT NOT NULL,
    zip_id INT NOT NULL,
    shelter_customer_info AS (CONCAT('Shelter: ', shelter_id, ' - Customer: ', customer_id))
);

-- Step 5: Add foreign key constraints
ALTER TABLE dbo.db_animal_shelter
ADD CONSTRAINT fk_dogs FOREIGN KEY (dogs_id) REFERENCES dbo.stagingTable (shelter_id),
    CONSTRAINT fk_cats FOREIGN KEY (cats_id) REFERENCES dbo.stagingTable (shelter_id),
    CONSTRAINT fk_year FOREIGN KEY (year_id) REFERENCES dbo.stagingTable (shelter_id),
    CONSTRAINT fk_volunteers FOREIGN KEY (volunteers_id) REFERENCES dbo.stagingTable (shelter_id),
    CONSTRAINT fk_zip FOREIGN KEY (zip_id) REFERENCES dbo.stagingTable (shelter_id);

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
