/* Create the database*/
USE master
GO

CREATE DATABASE db_animal_shelter
GO

/*Select your database*/
USE db_animal_shelter
GO

/* Creating staging table and bulk insert from csv file*/
DROP TABLE IF EXISTS stagingTable;
CREATE TABLE stagingTable(
   "License Issue Date" DATE  NOT NULL PRIMARY KEY
  ,"License Number"     VARCHAR(7) NOT NULL
  ,"Animals Name"       VARCHAR(50)
  ,Species              VARCHAR(4) NOT NULL
  ,"Primary Breed"      VARCHAR(46) NOT NULL
  ,"Secondary Breed"    VARCHAR(46)
  ,"ZIP Code"           VARCHAR(7)
);
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('December 18 2015','S107948','Zen','Cat','Domestic Longhair','Mix','98117');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('June 14 2016','S116503','Misty','Cat','Siberian',NULL,'98117');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('August 04 2016','S119301','Lyra','Cat','Mix',NULL,'98121');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('February 13 2019','962273','Veronica','Cat','Domestic Longhair',NULL,'98107');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('August 10 2019','S133113','Spider','Cat','LaPerm',NULL,'98115');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('November 21 2019','8002549','Maxx','Cat','American Shorthair',NULL,'98125');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 24 2020','S142869','Mickey','Cat','Domestic Longhair',NULL,'98126');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('July 03 2020','S112835','Diamond','Cat','Domestic Shorthair','Mix','98103');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('July 21 2020','S131986','Nacho','Cat','Domestic Shorthair','Mix','98126');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('August 18 2020','8019541','Gracie','Cat','Domestic Medium Hair','Mix','98133');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('September 08 2020','S141990','Ramon','Cat','Domestic Shorthair','Mix','98116');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('November 03 2020','S112996','Pixel','Cat','Domestic Medium Hair','Mix','98112');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('November 17 2020','S146576','C.C.','Cat','Domestic Shorthair','Mix','98117');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('November 20 2020','77412','Gemma','Cat','Siamese','American Shorthair','98126');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('November 24 2020','896993','Oliver','Cat','Domestic Longhair','Mix','98199');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('December 15 2020','832271','Silky Frances','Cat','Domestic Shorthair',NULL,'98115');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('December 20 2020','S114008','Jesse','Cat','Domestic Shorthair','Mix','98103');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('December 23 2020','833148','Lucy','Cat','Domestic Shorthair',NULL,'98116');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('January 27 2021','8018982','Bones','Cat','Mix',NULL,'98122');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('February 03 2021','8004418','Emme','Cat','Domestic Shorthair','Mix','98136');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('February 16 2021','833680','Coal','Cat','Domestic Shorthair',NULL,'98115');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 07 2021','19048','Rudy','Cat','Domestic Shorthair',NULL,'98103');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 09 2021','8004956','Custo','Cat','Domestic Shorthair','Mix','98117');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 10 2021','S145248','Honey','Cat','Domestic Medium Hair','Mix','98144');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 26 2021','S123490','Boots','Cat','Domestic Shorthair','Mix','98125');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 28 2021','8008321','Cece','Cat','American Shorthair','Mix','98125');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 02 2021','8028297','Noir','Cat','Mix','Mix','98103');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 07 2021','273780','Taffy','Cat','Siamese','Mix','98125');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 28 2021','S150479','Seamus','Cat','Domestic Shorthair','Mix','98104');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('June 17 2021','S112839','Guinness','Cat','Domestic Shorthair','Mix','98133');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('June 21 2021','S121230','Ebi','Cat','Domestic Medium Hair',NULL,'98119');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('June 21 2021','S121231','Toro','Cat','Domestic Shorthair',NULL,'98119');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('July 19 2021','8029709','Pippin','Cat','Persian','Mix','98105');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('July 23 2021','133986','Milo','Cat','LaPerm',NULL,'98133');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('July 23 2021','8030061','Luna Lovegood','Cat','Domestic Longhair','Mix','98117');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('August 03 2021','S150617','Eugene','Cat','Domestic Shorthair','Mix','98125');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('August 12 2021','8031685','Casper','Cat','Domestic Shorthair',NULL,'98126');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('August 19 2021','8010082','Mouse','Cat','Domestic Shorthair',NULL,'98199');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('August 31 2021','S143979','Olly','Cat','Domestic Shorthair',NULL,'98136');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('September 10 2021','8032534','Oatey or odin','Cat','Maine Coon',NULL,'98199');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('September 21 2021','8031624','Koa','Cat','Burmese',NULL,'98125');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('September 25 2021','140426','Theodore','Cat','Domestic Shorthair',NULL,'98144');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('October 21 2021','8001165','Brie','Cat','American Shorthair','Mix','98105');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('October 21 2021','85529','Cody','Cat','American Shorthair',NULL,'98105');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('October 21 2021','732760','Gatsby','Cat','American Shorthair',NULL,'98105');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('October 25 2021','8033726','Binu','Cat','Domestic Shorthair','Mix','98119');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('October 28 2021','S153294','Mudflap','Cat','Domestic Longhair','Mix','98115');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('October 29 2021','825012','Ricky','Cat','Norwegian Forest',NULL,'98136');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('October 31 2021','S100358','Roushe','Cat','Domestic Shorthair',NULL,'98144');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('November 06 2021','204655','Katie \"Kitty\"','Cat','Domestic Shorthair','Siamese','98136');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('November 10 2021','S150979','Tom','Cat','Domestic Shorthair','Mix','98117');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('November 11 2021','560462','Jóna','Cat','Domestic Shorthair',NULL,'98136');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('November 15 2021','133600','Precious','Cat','Persian',NULL,'98121');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('November 26 2021','8028480','Louie','Cat','Domestic Shorthair','Mix','98125');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('November 26 2021','8028478','Lyra','Cat','Domestic Shorthair','Siamese','98125');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('December 06 2021','8028320','Zora','Cat','Ragdoll',NULL,'98109');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('December 13 2021','8034900','Catfish','Cat','Domestic Shorthair','Mix','98107');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('December 15 2021','351170','Snowcap','Cat','Domestic Shorthair',NULL,'98112');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('December 18 2021','434832','Yuki','Cat','Domestic Shorthair',NULL,'98125');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('January 12 2022','S154393','Edgar','Cat','Domestic Medium Hair','Mix','98125');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('February 03 2022','8036100','Buddy Guy','Cat','Domestic Medium Hair',NULL,'98136');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('February 10 2022','S149283','Edgar','Cat','Domestic Shorthair','Mix','98126');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('February 10 2022','S149284','Emily','Cat','Domestic Shorthair','Mix','98126');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('March 06 2022','S107510','Turnip Smith','Cat','Maine Coon','Domestic Medium Hair','98199');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('March 11 2022','895990','Mink','Cat','Domestic Longhair',NULL,'98112');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('March 19 2022','8036112','Taro','Cat','Domestic Shorthair','Mix','98115');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('March 31 2022','s109687','Wilbur','Cat','Domestic Longhair',NULL,'98125');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('March 31 2022','574163','Mimi','Cat','Domestic Shorthair',NULL,'98107');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 01 2022','S157086','Bagel','Cat','Domestic Shorthair','Mix','98109');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 01 2022','S157090','Astral','Cat','Domestic Shorthair','Mix','98115');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 02 2022','8037440','Simon','Cat','Domestic Shorthair','Mix','98115');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 02 2022','8037443','Charlie','Cat','Domestic Shorthair','Mix','98109');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 02 2022','S157649','Kage','Cat','Domestic Medium Hair','Mix','98109');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 02 2022','8017400','Mighty Cat','Cat','Siamese','Domestic Shorthair','98106');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 02 2022','S143370','Fanny','Cat','Domestic Shorthair',NULL,'98122');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 03 2022','S154121','Jack','Cat','Domestic Shorthair','Mix','98116');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 03 2022','S154111','Jiji','Cat','Domestic Shorthair','Mix','98121');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 03 2022','S142365','Lula','Cat','Domestic Shorthair',NULL,'98105');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 03 2022','S142366','Myshka','Cat','Domestic Shorthair',NULL,'98105');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 03 2022','8017496','Mina','Cat','Domestic Shorthair','Mix','98102');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 03 2022','S158040','Megumi','Cat','Domestic Shorthair','Mix','98136');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 03 2022','215513','Alyeska','Cat','American Shorthair',NULL,'98118');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 03 2022','S114125','Porkbelly','Cat','Domestic Medium Hair',NULL,'98101');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 04 2022','S134495','Barry','Cat','Domestic Longhair','Mix','98126');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 04 2022','8017186','Lulu','Cat','Domestic Shorthair','Mix','98199');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 04 2022','8017185','Shibumi','Cat','Domestic Shorthair','Mix','98199');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 04 2022','S113929','Abby','Cat','American Shorthair','Mix','98117');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 04 2022','8037519','Carla Hernandez-Singh','Cat','Domestic Medium Hair','Mix','98188');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 04 2022','8037520','Turk Hernandez-Singh','Cat','Domestic Shorthair','Mix','98188');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 04 2022','S158042','Wally','Cat','Domestic Shorthair','Mix','98125');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 04 2022','S158043','Jiji','Cat','Domestic Shorthair','Mix','98125');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 04 2022','215421','Timmy','Cat','Domestic Shorthair','Mix','98116');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 04 2022','8037540','Alastair Henry','Cat','Domestic Shorthair','Mix','98109');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 04 2022','217597','Bumpas','Cat','Domestic Medium Hair',NULL,'98122');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 05 2022','S158809','Winky','Cat','Domestic Longhair','Mix','98115');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 05 2022','S158810','Estelle','Cat','Snowshoe','Mix','98103');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 05 2022','8037546','Kaia','Cat','Chartreux','Mix','98126');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 05 2022','8037552','Max','Cat','Mix','Mix','98199');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 05 2022','217648','Millie','Cat','Domestic Longhair',NULL,'98177');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 05 2022','208524','Mama Cat','Cat','Domestic Longhair',NULL,'98118');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 05 2022','S157652','Rangoon','Cat','Siamese','Mix','98122');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 05 2022','8037574','Sassafrass','Cat','Domestic Longhair','Mix','98118');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 05 2022','8037575','Rainbow','Cat','Domestic Longhair','Mix','98118');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 06 2022','8016887','Manny','Cat','Domestic Shorthair','Mix','98125');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 06 2022','208680','Two','Cat','Domestic Shorthair',NULL,'98133');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 06 2022','208681','Chackowitz','Cat','Domestic Shorthair',NULL,'98133');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 06 2022','S158051','Millie','Cat','Domestic Shorthair','Mix','98102');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 06 2022','S115142','Mao','Cat','Domestic Shorthair',NULL,'98144');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 06 2022','S150337','Lily','Cat','Domestic Shorthair','Mix','98136');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 06 2022','8016805','Manny','Cat','Domestic Shorthair','Mix','98125');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 07 2022','S113955','Eva','Cat','Domestic Medium Hair',NULL,'98144');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 07 2022','209289','Kat','Cat','Bombay',NULL,'98199');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 07 2022','8017443','Percy','Cat','Domestic Medium Hair','Mix','98103');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 07 2022','S157654','Tristan','Cat','Domestic Shorthair','Mix','98122');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 07 2022','210771','Max','Cat','LaPerm',NULL,'98115');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 07 2022','204978','Maui','Cat','Siamese',NULL,'98133');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 07 2022','215559','Estelle','Cat','Domestic Medium Hair',NULL,'98164');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 07 2022','215413','Tigger','Cat','Domestic Shorthair',NULL,'98125');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 07 2022','S157658','Mimi','Cat','Domestic Shorthair','Mix','98133');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 07 2022','217753','Max','Cat','Domestic Shorthair',NULL,'98102');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 08 2022','8037643','BUGSY','Cat','Domestic Medium Hair','Mix','98125');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 08 2022','8037644','BOOBOO','Cat','Domestic Medium Hair','Mix','98125');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 09 2022','217770','Odoroki','Cat','Domestic Shorthair',NULL,'98122');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 09 2022','8037656','Breckenridge','Cat','Domestic Longhair','Mix','98125');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 09 2022','204566','Mia','Cat','Domestic Shorthair',NULL,'98112');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 09 2022','8037658','Dolly','Cat','Mix','Mix','98107');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 09 2022','S143047','Tesla','Cat','Mix',NULL,'98119');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 09 2022','S143048','Tessa','Cat','Mix',NULL,'98119');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 09 2022','8037665','Suki','Cat','American Shorthair','Mix','98105');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 09 2022','217548','Annabelle','Cat','Norwegian Forest',NULL,'98117');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 09 2022','217580','Josepi','Cat','Domestic Shorthair',NULL,'98117');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 09 2022','8037666','Dusty','Cat','Domestic Shorthair','Mix','98117');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 09 2022','8037671','Flower','Cat','Domestic Medium Hair','Mix','98102');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 09 2022','8037672','Cat Stevens','Cat','Domestic Medium Hair','Mix','98102');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 09 2022','217613','Molly','Cat','LaPerm',NULL,'98122');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 09 2022','8016860','Nora','Cat','Domestic Shorthair','Mix','98122');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 09 2022','8016861','Hank','Cat','Domestic Shorthair','Mix','98122');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 09 2022','208190','Zoey','Cat','Maine Coon','Domestic Longhair','98106');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 10 2022','S158812','Solar','Cat','Domestic Longhair','Mix','98105');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 10 2022','S143167','Kuma','Cat','Maine Coon',NULL,'98119');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 10 2022','215595','Clementine','Cat','Domestic Shorthair',NULL,'98125');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 10 2022','8020559','Misa','Cat','Domestic Medium Hair','Mix','98103');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 10 2022','S114967','Lilly','Cat','Domestic Medium Hair',NULL,'98116');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 10 2022','S114966','Huck','Cat','Domestic Shorthair',NULL,'98116');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 10 2022','S154116','Lily Bell','Cat','Persian',NULL,'98121');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 11 2022','83193','Helo','Cat','Balinese',NULL,'98103');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 11 2022','S154720','Gogo Extravaganza','Cat','Domestic Shorthair','Domestic Shorthair','98122');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 11 2022','142549','Loki','Cat','Somali',NULL,'98103');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 11 2022','8017346','Hercule','Cat','Maine Coon','Domestic Medium Hair','98117');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 11 2022','8037704','Chicken','Cat','Domestic Shorthair','Mix','98144');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 11 2022','8037711','Margo','Cat','Siamese','Mix','98117');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 11 2022','8037712','Tengo','Cat','American Shorthair','Mix','98117');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 11 2022','204854','Canella','Cat','Domestic Shorthair',NULL,'98122');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 11 2022','S142837','Cio Cio San','Cat','Siamese',NULL,'98112');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 12 2022','8016966','Cooper','Cat','Domestic Shorthair',NULL,'98126');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 12 2022','8017399','Ally','Cat','Domestic Shorthair',NULL,'98125');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 12 2022','208369','Anya','Cat','Domestic Medium Hair',NULL,'98125');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 12 2022','8037744','Camacho','Cat','American Shorthair',NULL,'98103');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 12 2022','8037745','Chicken','Cat','American Shorthair','Mix','98122');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 12 2022','8017480','Mia','Cat','Domestic Shorthair','Domestic Shorthair','98133');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 12 2022','8017479','Scotty','Cat','Domestic Shorthair','Domestic Shorthair','98133');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 12 2022','8017478','Sherman','Cat','American Shorthair','Mix','98133');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 13 2022','208030','Mabel','Cat','Domestic Shorthair',NULL,'98144');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 13 2022','8037749','Leeloo','Cat','Domestic Shorthair',NULL,'98107');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 13 2022','215551','Bing','Cat','Domestic Medium Hair',NULL,'98199');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 13 2022','S158056','Yunioshi','Cat','Domestic Shorthair','Mix','98122');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 13 2022','S158059','Harold','Cat','Domestic Shorthair','Mix','98121');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 13 2022','8037767','Mr. Grey','Cat','Domestic Shorthair','Mix','98177');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 13 2022','8037768','Money','Cat','Scottish Fold','British Shorthair','98121');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 13 2022','S158756','Moonlight','Cat','Domestic Shorthair','Mix','98122');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 13 2022','S114655','Mia Cent','Cat','Domestic Medium Hair',NULL,'98125');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 13 2022','S144921','Phoebe Cent','Cat','Domestic Shorthair','Ocicat','98125');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 13 2022','8018074','Toast','Cat','Domestic Shorthair',NULL,'98107');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 14 2022','S157661','Mufasa','Cat','Domestic Shorthair','Mix','98117');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 14 2022','S157662','Shadow','Cat','Domestic Medium Hair','Mix','98144');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 14 2022','S157663','Misty Blue','Cat','Oriental Shorthair','Mix','98144');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 14 2022','S157664','Sacha','Cat','Domestic Shorthair','Mix','98136');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 14 2022','8037802','Twinkle','Cat','Domestic Shorthair','Mix','98121');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 15 2022','S157095','Callie','Cat','Domestic Shorthair','Mix','98133');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 16 2022','8037831','Meowshu','Cat','Domestic Shorthair','Mix','98115');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 16 2022','S113982','Hidey','Cat','Domestic Medium Hair','Mix','98121');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 17 2022','S158813','Emmy Lou','Cat','Domestic Shorthair','Mix','98144');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 17 2022','208311','Kyriaki','Cat','Domestic Shorthair',NULL,'98107');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 17 2022','8037840','Chiana','Cat','Domestic Shorthair',NULL,'98117');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 17 2022','8037841','Mew','Cat','Domestic Shorthair',NULL,'98117');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 17 2022','8037847','Heidi','Cat','Domestic Medium Hair','Mix','98103');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 17 2022','8037848','Bala','Cat','Mix','Mix','98121');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 17 2022','8017406','Atan','Cat','Domestic Shorthair','Mix','98112');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 18 2022','8037853','Abby','Cat','California Spangled','Mix','98133');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 18 2022','8037854','Ollie','Cat','Mix','Mix','98133');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 18 2022','8037857','Nana','Cat','Domestic Longhair',NULL,'98115');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 18 2022','8037858','Tsunami','Cat','Domestic Shorthair','Mix','98125');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 18 2022','8037866','Sedin','Cat','Domestic Shorthair','Mix','98118');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 18 2022','8037867','Escanor','Cat','Siamese','Mix','98134');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 18 2022','S143353','Spartacus','Cat','Domestic Shorthair',NULL,'98117');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 18 2022','S143352','Kiki','Cat','Domestic Shorthair',NULL,'98117');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 18 2022','8037873','Jazzy','Cat','Mix','Mix','98020');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 18 2022','203358','Taliesin','Cat','Siamese',NULL,'98117');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 18 2022','8017350','Bo/Bowie','Cat','Domestic Shorthair','Mix','98115');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 19 2022','204371','Josie','Cat','Domestic Longhair',NULL,'98125');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 20 2022','S158763','Quilt','Cat','Domestic Medium Hair','Mix','98133');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 20 2022','S158766','Texas','Cat','Domestic Shorthair','Mix','98108');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 20 2022','S158767','Juno','Cat','Domestic Shorthair','Mix','98108');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 20 2022','S158065','Scooter','Cat','Domestic Shorthair','Mix','98117');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 20 2022','8037917','Harry','Cat','Domestic Medium Hair','Mix','98118');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 21 2022','208659','May','Cat','Domestic Longhair',NULL,'98119');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 21 2022','204909','Baker','Cat','Domestic Medium Hair',NULL,'98146');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 21 2022','8037939','Mini','Cat','Ocicat',NULL,'98119');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 21 2022','S157674','Aloha','Cat','Domestic Shorthair','Mix','98109');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 21 2022','S157675','Okalani','Cat','Domestic Shorthair','Mix','98109');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 21 2022','S114660','Manny','Cat','Domestic Medium Hair',NULL,'98107');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 22 2022','208515','Cricket','Cat','Domestic Shorthair',NULL,'98106');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 22 2022','8037953','Minnie','Cat','Ragdoll','Scottish Fold','98103');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 22 2022','217622','Grayson','Cat','American Shorthair',NULL,'98116');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 23 2022','S114903','Russell','Cat','Domestic Shorthair',NULL,'98108');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 23 2022','S114904','Jax','Cat','Domestic Shorthair',NULL,'98108');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 23 2022','204738','Hunter','Cat','Pixie-Bob',NULL,'98112');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 23 2022','S158066','Jamal','Cat','Domestic Longhair','Mix','98115');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 23 2022','8037977','Luna','Cat','Bombay','Mix','98122');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 23 2022','8037978','Pretzel','Cat','American Shorthair','Mix','98122');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 24 2022','8037990','Tofu','Cat','American Shorthair','Mix','98109');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 24 2022','8037991','Peter','Cat','American Shorthair','Mix','98109');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 25 2022','8017339','Appa','Cat','Domestic Shorthair','Mix','98112');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 25 2022','208555','Dandelion','Cat','Domestic Longhair',NULL,'98112');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 25 2022','215505','Misty','Cat','Persian',NULL,'98115');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 25 2022','S158778','Sasha','Cat','Domestic Shorthair','Mix','98109');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 25 2022','S158779','Taleh','Cat','Domestic Longhair','Mix',NULL);
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 25 2022','S158780','Shamus','Cat','Domestic Shorthair','Mix','98144');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 26 2022','S158817','Oreo','Cat','Domestic Shorthair','Mix','98199');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 26 2022','8038021','Katrina Von Meowkins','Cat','Domestic Longhair','Mix','98125');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 26 2022','217716','Beeza','Cat','Domestic Shorthair',NULL,'98117');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 26 2022','8038025','Fizz','Cat','Domestic Shorthair','Mix','98117');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 26 2022','S104477','Riley','Cat','Domestic Shorthair','Mix','98125');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 26 2022','8038049','Cotton','Cat','Domestic Longhair','Mix','98115');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 27 2022','S142950','Ada','Cat','Domestic Shorthair','Mix','98101');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 27 2022','8038056','Cielle LaRue','Cat','American Shorthair','Mix','98118');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 27 2022','S142402','Mags','Cat','Siamese',NULL,'98116');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 27 2022','8038063','Findlay','Cat','Siamese',NULL,'98116');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 27 2022','8016070','V','Cat','Domestic Medium Hair',NULL,'98106');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 27 2022','S129444','Orion','Cat','Domestic Longhair',NULL,'98106');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 27 2022','S144094','Puck','Cat','Domestic Shorthair',NULL,'98106');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 27 2022','8038085','Deimos','Cat','Domestic Shorthair','Mix','98117');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 27 2022','S134598','Aurora','Cat','Domestic Shorthair','Mix','98117');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 27 2022','8038086','Phobos','Cat','Domestic Shorthair','Mix','98117');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 28 2022','S158818','Mittens','Cat','Domestic Shorthair','Mix','98117');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 28 2022','217578','Casey','Cat','Domestic Longhair',NULL,'98199');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 28 2022','S143237','Lilith','Cat','Domestic Shorthair',NULL,'98125');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 28 2022','S157681','Charlie','Cat','Domestic Shorthair','Mix','98103');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 28 2022','203934','Maxine','Cat','Domestic Shorthair',NULL,'98133');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 28 2022','S142336','Sugar','Cat','Domestic Medium Hair',NULL,'98109');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 28 2022','S142335','Spice','Cat','Domestic Medium Hair',NULL,'98109');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 28 2022','8038111','Little Butchie','Cat','Domestic Shorthair','Mix','98115');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 29 2022','8018409','Donna','Cat','Domestic Longhair','Mix','98155');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 29 2022','204863','Cinder','Cat','Domestic Shorthair',NULL,'98103');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 29 2022','8017278','Ray Eames','Cat','American Shorthair',NULL,'98136');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 29 2022','8015128','Sherlock','Cat','Domestic Medium Hair','Mix','98117');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 29 2022','8015127','Lily','Cat','Siamese','Domestic Medium Hair','98117');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 29 2022','133139','Luna','Cat','Domestic Medium Hair',NULL,'98126');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 29 2022','8038119','Catalina','Cat','Domestic Medium Hair','Mix','98105');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 29 2022','8018352','Agatha Christie','Cat','Domestic Shorthair','Mix','98112');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 29 2022','S148939','Indy','Cat','Domestic Shorthair','Mix','98106');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 29 2022','8038122','Marmalade','Cat','Exotic Longhair',NULL,'98133');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 29 2022','8038123','Marshmellow','Cat','Exotic Shorthair',NULL,'98133');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 29 2022','S158209','Newt','Cat','Domestic Shorthair','Mix','98177');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 29 2022','8028989','Oslo','Cat','American Shorthair','Mix','98115');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 29 2022','S111831','Symmetry','Cat','Domestic Shorthair',NULL,'98118');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 30 2022','S117864','Sahara','Cat','Domestic Shorthair','Mix','98121');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 30 2022','8017072','Percy','Cat','Siamese','Mix','98106');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 30 2022','8019061','Merlin','Cat','Domestic Medium Hair','Mix','98106');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 30 2022','8038146','Tuxedo/Milo','Cat','Domestic Medium Hair','Mix','98117');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 30 2022','S143160','Odesza','Cat','American Shorthair',NULL,'98103');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 30 2022','217558','Damien','Cat','Maine Coon','Mix','98178');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 30 2022','S115220','Echo','Cat','Domestic Medium Hair','Mix','98178');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 30 2022','8017165','Odin of Pancakes','Cat','Domestic Shorthair','Mix','98177');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 30 2022','8016754','Galaxy','Cat','Domestic Shorthair','Mix','98103');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('April 30 2022','8016753','Maya','Cat','Domestic Shorthair','Mix','98103');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 01 2022','S140876','Artemis','Cat','Domestic Shorthair','Mix','98103');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 01 2022','8038163','Joffrey','Cat','Domestic Longhair','Mix','98103');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 01 2022','8038166','Oatis','Cat','Russian Blue','American Shorthair','98101');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 01 2022','8038167','Willow','Cat','Siamese','American Shorthair','98101');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 02 2022','8038179','Wesley','Cat','Domestic Medium Hair','Mix','98253');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 02 2022','208688','Coconut','Cat','Domestic Shorthair',NULL,'98115');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 02 2022','8038191','Kimchi','Cat','British Shorthair',NULL,'98107');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 02 2022','208443','Mitzi','Cat','Domestic Longhair',NULL,'98106');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 02 2022','8038197','Pugsley','Cat','American Shorthair',NULL,'98122');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 03 2022','8038207','Gobi','Cat','American Shorthair','Mix','98107');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 03 2022','8038218','Crash','Cat','Bengal','Mix','98177');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 03 2022','S114919','Mo','Cat','American Shorthair',NULL,'98177');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 03 2022','S114918','Kit','Cat','American Shorthair',NULL,'98177');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 03 2022','8017532','Adelaide Hastings','Cat','Domestic Shorthair','Mix','98119');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 04 2022','8038226','Calvin','Cat','Domestic Longhair','Mix','98125');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 04 2022','8038227','Sansa','Cat','Domestic Shorthair','Mix','98125');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 04 2022','8038233','Martini Olive','Cat','Domestic Shorthair','Mix','98101');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 04 2022','8038234','Dipper Star','Cat','Domestic Shorthair','Mix','98101');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 05 2022','277029','Spartacus','Cat','Domestic Medium Hair',NULL,'98178');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 05 2022','8017557','Phoebe','Cat','Chartreux','Mix','98126');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 05 2022','8038243','Sasha','Cat','Balinese','Mix','98144');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 05 2022','284710','Dolce','Cat','Domestic Shorthair',NULL,'98102');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 05 2022','273085','Elehu','Cat','Siamese','Mix','98117');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 05 2022','S157695','Big Dan','Cat','Domestic Shorthair','Mix','98101');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 05 2022','8018138','Diana','Cat','Maine Coon','Mix','98115');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 05 2022','284557','Sgt Tibbs','Cat','Domestic Shorthair','Mix','98112');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 05 2022','284515','Wonderlilly','Cat','Domestic Shorthair','Mix','98112');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 05 2022','284509','Mickey','Cat','Domestic Medium Hair','Mix','98112');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 05 2022','284546','Zam Zam','Cat','Domestic Shorthair','Mix','98112');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 05 2022','8017775','Sophie','Cat','Domestic Shorthair','Mix','98122');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 05 2022','8017776','Calcifer','Cat','Domestic Shorthair','Mix','98122');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 06 2022','276508','Figaro','Cat','Domestic Shorthair',NULL,'98112');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 06 2022','S143831','Gulliver','Cat','Russian Blue','Exotic Longhair','98103');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 06 2022','276816','Mitsu','Cat','Bengal',NULL,'98116');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 06 2022','276818','Nangua','Cat','Bengal',NULL,'98116');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 06 2022','S108277','Stout','Cat','Domestic Shorthair','Mix','98109');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 06 2022','217559','Cyan Pearla','Cat','British Shorthair',NULL,'98144');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 06 2022','8018418','Picante','Cat','Domestic Shorthair','Mix','98118');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 06 2022','8018417','Dulce','Cat','Domestic Shorthair','Mix','98118');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 06 2022','8038283','Pumpkin','Cat','Domestic Longhair','Norwegian Forest','98107');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 06 2022','353445','Bea','Cat','Domestic Shorthair','Domestic Shorthair','98144');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 06 2022','S128854','Luna','Cat','Domestic Medium Hair','Mix','98136');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 06 2022','S128855','Gingerbread','Cat','Domestic Medium Hair','Mix','98136');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 06 2022','S148974','Calliope','Cat','Domestic Shorthair','Mix','98115');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 06 2022','S148975','Freya','Cat','Domestic Shorthair','Mix','98115');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 06 2022','284719','Zeta','Cat','Himalayan','Mix','98108');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 06 2022','S143701','Jasmine','Cat','Domestic Shorthair',NULL,'98125');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 06 2022','S144203','Solo','Cat','Domestic Shorthair',NULL,'98125');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 06 2022','S144202','Ray','Cat','Domestic Shorthair',NULL,'98125');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 06 2022','S131027','Tuukka','Cat','Ragdoll',NULL,'98115');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 06 2022','S128804','Sparky','Cat','Domestic Shorthair','Mix','98118');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 06 2022','S143481','Java','Cat','Domestic Shorthair','Mix','98126');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 06 2022','S144054','Evey','Cat','Tiffany',NULL,'98109');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 06 2022','8018065','Wally','Cat','Domestic Shorthair','Mix','98144');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 06 2022','S114419','Smokey','Cat','Siamese',NULL,'98115');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 06 2022','S141987','Parker','Cat','Domestic Shorthair','Mix','98117');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 07 2022','8017723','Bella','Cat','Domestic Shorthair','Mix','98107');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 07 2022','8017724','Jack','Cat','Domestic Longhair','Mix','98107');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 07 2022','8018169','Pepe','Cat','Maine Coon','Mix','98115');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 07 2022','273064','Minka','Cat','Manx',NULL,'98112');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 07 2022','8038303','Stitch','Cat','Domestic Shorthair','Mix','98122');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 07 2022','8017734','Namu','Cat','Domestic Shorthair','Mix','98107');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 07 2022','8017735','Cheeto','Cat','Domestic Shorthair','Mix','98107');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 07 2022','284717','Gracie','Cat','Domestic Medium Hair',NULL,'98116');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 08 2022','S115439','Bo','Cat','Domestic Shorthair',NULL,'98116');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 08 2022','S115440','Sonny','Cat','Domestic Shorthair','Siamese','98116');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 08 2022','282494','Mackeral','Cat','Domestic Longhair',NULL,'98115');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 08 2022','277293','Koda','Cat','Domestic Shorthair',NULL,'98107');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 08 2022','S143612','Midna','Cat','Domestic Medium Hair',NULL,'98108');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 08 2022','284644','Rajah','Cat','Exotic Shorthair','Domestic Shorthair','98103');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 08 2022','S143765','Marie','Cat','Domestic Shorthair',NULL,'98122');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 08 2022','272983','Dexter','Cat','Domestic Shorthair',NULL,'98117');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 08 2022','208092','Ginger','Cat','Domestic Longhair',NULL,'98106');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 08 2022','208076','Akimbo','Cat','Domestic Shorthair',NULL,'98106');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 08 2022','8038332','Scylla','Cat','Domestic Shorthair',NULL,'98102');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 08 2022','277278','Harrison','Cat','Domestic Shorthair',NULL,'98103');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 08 2022','S112616','Dashi','Cat','Domestic Shorthair','Mix','98109');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 08 2022','8017720','Petra','Cat','Siamese','Mix','98199');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 09 2022','8038338','Charmaine','Cat','American Shorthair','Mix','98103');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 09 2022','S115755','Quincy','Cat','American Shorthair',NULL,'98116');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 09 2022','8038339','Twyla','Cat','Domestic Medium Hair','Mix','98116');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 09 2022','8038340','Rudi','Cat','Domestic Medium Hair','Mix','98116');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 09 2022','8018159','Chewy','Cat','Maine Coon','Mix','98133');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 09 2022','S115854','Penny','Cat','Domestic Shorthair',NULL,'98115');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 09 2022','S144336','Sonnet','Cat','Domestic Shorthair',NULL,'98178');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 09 2022','S115681','Lilith Lightning','Cat','Siamese','Russian Blue','98107');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 09 2022','284618','Snuffles','Cat','Domestic Medium Hair',NULL,'98107');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 09 2022','S115203','Momo','Cat','Domestic Shorthair',NULL,'98136');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 09 2022','S115202','Max','Cat','Domestic Shorthair',NULL,'98136');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 09 2022','S114490','Snoqualmie','Cat','Balinese','Mix','98104');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 09 2022','S143431','Aida','Cat','Domestic Shorthair',NULL,'98105');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 09 2022','S158075','Shiva','Cat','Domestic Shorthair','Mix','98103');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 09 2022','S154131','Silvia','Cat','Domestic Shorthair','Mix','98133');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 09 2022','272865','Asche','Cat','Domestic Shorthair',NULL,'98107');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 09 2022','8038354','Cashew','Cat','Domestic Shorthair','Mix','98103');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 09 2022','8038355','Gobo','Cat','Domestic Shorthair','Mix','98103');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 10 2022','8017988','Nimbly','Cat','American Shorthair','Mix','98133');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 10 2022','S148418','Francis Margaret','Cat','Domestic Longhair',NULL,'98107');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 10 2022','S130665','Irving','Cat','Domestic Longhair','Mix','98126');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 10 2022','273677','Louise','Cat','Burmese',NULL,NULL);
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 10 2022','S115848','Kea','Cat','Domestic Shorthair',NULL,'98118');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 10 2022','S107626','Simon','Cat','Domestic Shorthair',NULL,'98115');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 10 2022','277117','Max-a-radda','Cat','Maine Coon','Mix','98103');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 10 2022','277121','Chelsea','Cat','Maine Coon','Ragdoll','98103');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 10 2022','S134582','Tormund','Cat','Domestic Shorthair','Mix','98115');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 10 2022','8038369','Bonnie','Cat','Maine Coon','Mix','98107');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 10 2022','8038370','Clyde','Cat','Mix','Maine Coon','98107');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 10 2022','277602','Gabby','Cat','Domestic Shorthair',NULL,'98122');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 10 2022','8018268','Thomas','Cat','American Shorthair','Mix','98107');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 10 2022','8017982','Boson','Cat','American Shorthair','Bombay','98117');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 10 2022','8017983','Quark','Cat','American Shorthair','Turkish Van','98117');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 11 2022','8009240','Bella','Cat','Domestic Shorthair','Mix','98109');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 11 2022','S159014','Buttercup','Cat','Domestic Shorthair','Mix','98116');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 11 2022','282458','Clover Pixie','Cat','Domestic Shorthair',NULL,'98119');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 11 2022','S159020','Basil','Cat','Domestic Longhair','Mix','98109');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 11 2022','S141980','Minnie','Cat','Domestic Shorthair','Mix','98102');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 12 2022','S144149','Grace','Cat','Domestic Shorthair',NULL,'98122');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 12 2022','S134821','Tilly','Cat','Domestic Shorthair','Mix','98103');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 12 2022','S158604','Maxine','Cat','Domestic Shorthair','Mix','98136');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 12 2022','S158606','Cocoa','Cat','Domestic Medium Hair','Mix','98118');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 12 2022','276770','Tykum','Cat','Maine Coon',NULL,'98105');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 12 2022','8017784','Munchkin','Cat','Domestic Longhair','Mix','98105');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 12 2022','S153180','Cali','Cat','Domestic Shorthair','Mix','98155');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 12 2022','277095','Marcel','Cat','Domestic Longhair',NULL,'98122');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 12 2022','277096','George','Cat','Domestic Longhair',NULL,'98122');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 12 2022','S115080','Gemma','Cat','Domestic Medium Hair','Mix','98199');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 12 2022','8017800','Winnifred','Cat','Maine Coon','Norwegian Forest','98177');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 12 2022','S159019','Mimi','Cat','Domestic Shorthair','Mix','98103');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 13 2022','S131314','Bisquit','Cat','American Shorthair',NULL,'98125');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 13 2022','272796','Jessie','Cat','Scottish Fold',NULL,'98125');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 13 2022','S131315','Winston','Cat','American Shorthair',NULL,'98125');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 13 2022','215566','Katrina','Cat','Domestic Shorthair',NULL,'98116');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 13 2022','284555','Frankie','Cat','Bombay',NULL,'98199');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 14 2022','S158823','Stormy','Cat','Domestic Shorthair','Mix','98119');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 14 2022','8018237','Miko','Cat','Domestic Shorthair','Mix','98117');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 15 2022','8028568','Smolder','Cat','Domestic Shorthair','Mix','98103');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 15 2022','S102363','Bacon','Cat','Domestic Medium Hair','Mix','98122');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 15 2022','S154724','Ada','Cat','Bengal','Mix','98103');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 15 2022','S159023','Henry','Cat','Domestic Shorthair','Mix','98115');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 15 2022','S144273','Jet','Cat','American Shorthair',NULL,'98115');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 15 2022','S159025','Bagu Sayeed','Cat','American Shorthair','Mix','98136');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 15 2022','133469','Jessica','Cat','Domestic Shorthair',NULL,'98122');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 16 2022','S141985','Jenga','Cat','Domestic Shorthair','Mix','98108');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 16 2022','273611','Ella','Cat','Domestic Shorthair','Mix','98112');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 16 2022','S159037','Coco','Cat','Domestic Shorthair','Mix','98102');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 16 2022','S159040','Owen','Cat','Domestic Medium Hair','Mix','98103');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 16 2022','S159039','Thomas','Cat','Domestic Shorthair','Mix','98103');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 17 2022','S144324','Kittiboon','Cat','Siamese',NULL,'98122');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 17 2022','S158081','Carter','Cat','Domestic Shorthair','Mix','98118');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 17 2022','S159045','Gracie','Cat','Domestic Shorthair','Mix','98103');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 17 2022','S159049','Camilia Slink','Cat','American Shorthair','Mix','98116');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 17 2022','S158082','Leo','Cat','Domestic Shorthair',NULL,'98118');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 18 2022','S158222','Theo','Cat','American Shorthair','Mix','98107');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 18 2022','8017826','Callie','Cat','Domestic Medium Hair','Mix','98116');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 18 2022','S158617','Mr. Mittens','Cat','Domestic Medium Hair','Mix','98199');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 19 2022','S104488','Princess Diana','Cat','Domestic Shorthair','Mix','98115');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 19 2022','8017834','Berkeley','Cat','Domestic Shorthair',NULL,'98115');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 19 2022','8017816','Mira','Cat','Domestic Shorthair','Mix','98102');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 19 2022','282939','Desi','Cat','Domestic Shorthair',NULL,'98105');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 19 2022','282940','Lucy','Cat','Domestic Shorthair',NULL,'98105');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 19 2022','S158619','Libby','Cat','Domestic Longhair',NULL,'98107');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 19 2022','S141783','Vincent','Cat','Domestic Shorthair','Mix','98116');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 19 2022','8006593','Debra','Cat','Domestic Shorthair','Mix','98125');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 19 2022','S159074','Jolene','Cat','American Shorthair','Mix',NULL);
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 19 2022','284540','Cecila','Cat','Siamese','American Shorthair','98199');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 20 2022','284569','Calico','Cat','Domestic Shorthair',NULL,'98115');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 20 2022','284560','Torti','Cat','Domestic Shorthair',NULL,'98115');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 20 2022','8038395','Cleopatra','Cat','Domestic Longhair','Mix','98118');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 20 2022','204759','Loverboy','Cat','Domestic Shorthair',NULL,'98118');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 20 2022','S158226','Bella','Cat','Domestic Shorthair','Mix','98168');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 20 2022','S158227','Miss Molly Cat','Cat','Domestic Shorthair','Mix','98103');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 20 2022','273620','Caboodle','Cat','Domestic Shorthair',NULL,'98199');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 20 2022','S158228','Jules','Cat','Domestic Shorthair','Mix','98109');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 20 2022','S154134','Asante','Cat','Domestic Shorthair','Mix','98119');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 21 2022','8018128','Marti','Cat','Domestic Shorthair','Mix','98109');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 21 2022','S146681','Francine','Cat','Domestic Shorthair','Mix','98125');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 23 2022','8017875','Gary','Cat','American Shorthair','Mix','98122');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 23 2022','273852','Elvina','Cat','Domestic Shorthair',NULL,'98133');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 23 2022','8017972','Guts','Cat','Domestic Shorthair','Mix','98107');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 23 2022','284610','Tuk Tuk','Cat','Domestic Shorthair',NULL,'98115');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 23 2022','284606','Jum Mum','Cat','Domestic Shorthair',NULL,'98115');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 23 2022','S159081','Zoe','Cat','Domestic Medium Hair','Mix','98109');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 23 2022','8017980','Bucky','Cat','Domestic Shorthair','Mix','98103');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 23 2022','8038444','Poppy','Cat','Domestic Shorthair','Mix','98136');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 24 2022','8038461','Azula','Cat','Domestic Shorthair','Mix','98133');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 24 2022','8038462','Asami','Cat','Domestic Shorthair','Mix','98133');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 24 2022','S122334','Kato','Cat','Domestic Shorthair',NULL,'98103');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 24 2022','S159084','Malie','Cat','Domestic Shorthair','Mix','98125');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 24 2022','S159083','Pele','Cat','Domestic Shorthair','Mix','98125');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 24 2022','S159086','Emily','Cat','Domestic Longhair','Mix','98125');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 24 2022','273231','Valentine','Cat','Maine Coon',NULL,'98115');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 25 2022','8038476','Wybe','Cat','Domestic Shorthair','Mix','98104');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 25 2022','8038477','Lou','Cat','Domestic Medium Hair','Mix','98104');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 25 2022','S104462','Ruby','Cat','Domestic Shorthair','Mix','98126');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 25 2022','217576','Oscar','Cat','Domestic Longhair',NULL,'98117');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 25 2022','8038480','Slatebeard','Cat','Mix','Mix','98112');
INSERT INTO stagingTable("License Issue Date","License Number","Animals Name",Species,"Primary Breed","Secondary Breed","ZIP Code") VALUES ('May 25 2022','8038482','Baku','Cat','Mix','Mix','98112');


/* Create table*/

CREATE TABLE db_animal_shelter (
    shelter_id INT,
    customer_id INT,
    dogs_id INT,
    cats_id INT,
    year_id INT,
    volunteers_id INT,
    zip_id INT,
    shelter_customer_info AS (CONCAT('Shelter: ', shelter_id, ' - Customer: ', customer_id)),
    PRIMARY KEY (shelter_id, customer_id)
);

-- Foreign keys

ALTER TABLE db_animal_shelter
ADD CONSTRAINT fk_dogs
FOREIGN KEY (dogs_id) REFERENCES stagingTable(dogs_id)

ALTER TABLE db_animal_shelter
ADD CONSTRAINT fk_cats
FOREIGN KEY (cats_id) REFERENCES stagingTable(cats_id)

ALTER TABLE db_animal_shelter
ADD CONSTRAINT fk_year
FOREIGN KEY (year_id) REFERENCES stagingTable(year_id)

ALTER TABLE db_animal_shelter
ADD CONSTRAINT volunteers_id
FOREIGN KEY (volunteers_id) REFERENCES stagingTable(volunteers_id)

ALTER TABLE db_animal_shelter
ADD CONSTRAINT fk_zip
FOREIGN KEY (zip_id) REFERENCES stagingTable(zip_id)


FOREIGN KEY(shelter_id) REFERENCES stagingTable(shelter_id)
FOREIGN KEY(customer_id) REFERENCES stagingTable(customer_id)

/*Check Constraint*/
ALTER TABLE db_animal_shelter
ADD CONSTRAINT chk_zip_id_positive
CHECK (zip_id > 0);

/* Create Stored Procedure*/

DELIMITER //

CREATE PROCEDURE InsertAnimalShelterRow (
    IN p_shelter_id INT,
    IN p_customer_id INT,
    IN p_dogs_id INT,
    IN p_cats_id INT,
    IN p_year_id INT,
    IN p_volunteers_id INT,
    IN p_zip_id INT,
    OUT p_message VARCHAR(255)
)
BEGIN
    DECLARE EXIT HANDLER FOR SQLEXCEPTION 
    BEGIN
        -- Error handling
        ROLLBACK;
        SET p_message = 'An error occurred while inserting the data.';
    END;

    START TRANSACTION;

-- 2) Check Constraints

 IF NOT EXISTS (SELECT 1 FROM stagingTable WHERE dogs_id = p_dogs_id) THEN
        SET p_message = 'dogs_id does not exist.';
        ROLLBACK;
        LEAVE;
    END IF;

    IF NOT EXISTS (SELECT 1 FROM stagingTable WHERE cats_id = p_cats_id) THEN
        SET p_message = 'cats_id does not exist.';
        ROLLBACK;
        LEAVE;
    END IF;

    IF NOT EXISTS (SELECT 1 FROM stagingTable WHERE year_id = p_year_id) THEN
        SET p_message = 'year_id does not exist.';
        ROLLBACK;
        LEAVE;
    END IF;

    IF NOT EXISTS (SELECT 1 FROM stagingTable WHERE volunteers_id = p_volunteers_id) THEN
        SET p_message = 'volunteers_id does not exist.';
        ROLLBACK;
        LEAVE;
    END IF;

    IF NOT EXISTS (SELECT 1 FROM stagingTable WHERE zip_id = p_zip_id) THEN
        SET p_message = 'zip_id does not exist.';
        ROLLBACK;
        LEAVE;
    END IF;

    IF NOT EXISTS (SELECT 1 FROM stagingTable WHERE shelter_id = p_shelter_id) THEN
        SET p_message = 'shelter_id does not exist.';
        ROLLBACK;
        LEAVE;
    END IF;

    IF NOT EXISTS (SELECT 1 FROM stagingTable WHERE customer_id = p_customer_id) THEN
        SET p_message = 'customer_id does not exist.';
        ROLLBACK;
        LEAVE;
    END IF;

-- 3) Computed Column

INSERT INTO db_animal_shelter (shelter_id, customer_id, dogs_id, cats_id, year_id, volunteers_id, zip_id)
    VALUES (p_shelter_id, p_customer_id, p_dogs_id, p_cats_id, p_year_id, p_volunteers_id, p_zip_id);

    COMMIT;
    SET p_message = 'Data inserted successfully.';
END //

DELIMITER ;

CALL InsertAnimalShelterRow(....(data insert), @message);
SELECT @message;