CREATE DATABASE Botswana_Online_Property_Advertiser;


CREATE USER 'property'@'localhost' IDENTIFIED BY 'property';

GRANT ALL PRIVILEGES ON * . * TO 'property'@'localhost';



USE Botswana_Online_Property_Advertiser;

DROP DATABASE Botswana_Online_Property_Advertiser;

DROP TABLE Users;

CREATE TABLE `Users` (
`userID` INT(10) NOT NULL AUTO_INCREMENT,
`firstName` VARCHAR(20) DEFAULT NULL,
`lastName` VARCHAR(20) DEFAULT NULL,
`gender` VARCHAR(10) DEFAULT NULL,
`address` VARCHAR(30) DEFAULT NULL,
`dateRegistered` VARCHAR(20) DEFAULT NULL,
`email` VARCHAR(20) DEFAULT NULL,
`contacts` VARCHAR(10) DEFAULT NULL,
`userType` VARCHAR(20) DEFAULT NULL,
`username` VARCHAR(10) DEFAULT NULL,
`password` VARCHAR(20) DEFAULT NULL,
PRIMARY KEY(`userID`)
)  ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;



CREATE TABLE `property`(
    `propertyId` INT NOT NULL AUTO_INCREMENT,
	`propertyName` VARCHAR(20),
	`propertyType` VARCHAR(20),
    `price` VARCHAR(10),
	`quantity` VARCHAR(10),
	`amount`  VARCHAR (10),
	`termID` VARCHAR(10),
	`duration` VARCHAR(10),
	`statusID` VARCHAR(10),
	`description` VARCHAR(50),
	`advertID` VARCHAR(10),
	`dateAdvertised` VARCHAR(20),
    `propertyImage` mediumblob,
    PRIMARY KEY(`propertyId`) 
    );

drop table property;

CREATE TABLE `ProhibitedProducts`(
    `productID` int(10) NOT NULL auto_increment,
	`productName` VARCHAR(20),
	`searchTerms` VARCHAR(20),
    PRIMARY KEY(ProductID)
    );
    
    
    insert into `ProhibitedProducts` VALUES 
    (1,'Porn','Porn'),
    (2,'Drugs','marijuana'),
     (3,'Alcohol','Alcohol'),
    (4,'Drugs','cocain');
    
    CREATE TABLE `AdvertisingTerms`(
    `termID` int (10) NOT NULL auto_increment,
	`duration` VARCHAR(20), 
	`amount` VARCHAR (20),
	`description` VARCHAR(100),
    PRIMARY KEY (termID)
    );
    
    drop table `AdvertisingTerms`;
    
       insert into `AdvertisingTerms` VALUES 
    (1,'1 Month','P200.00','The advert runs on the website for a month then it is removed'),
    (2,'6 Month','P500.00','The advert runs on the website for 6 months then it is removed'),
    (3,'1 Year','P1000.00','The advert runs on the website for a year then it is removed');
	



