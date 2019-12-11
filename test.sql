CREATE TABLE Photo
(
	PhotoID int NOT NULL,
	Speed int,
	Film int,
	FStop FLOAT(2,1),
	Color CHAR(3),
	Resolution VARCHAR(20),
	Price FLOAT(6,2) DEFAULT '0.00',
	`Date` Datetime,
	TransID int DEFAULT NULL,
	PName VARCHAR(255),
	PBDate Date,
	Sold CHAR(1) DEFAULT 'N',

	PRIMARY KEY (PhotoID)
	FOREIGN KEY (TransID) REFERENCES Transaction(TransID),
	/*ON DELETE SET NULL*/
	/*ON UPDATE CASCADE*/
	FOREIGN KEY (PName, PBDate) REFERENCES Photographer(PName, PBDate)
	/*ON DELETE SET NULL*/
	/*ON UPDATE CASCADE*/
);

CREATE TABLE Landscape
(
	PhotoID int NOT NULL,
	Place VARCHAR(255) DEFAULT 'UNKNOWN',
	Country VARCHAR(255) DEFAULT 'UNKNOWN',

	PRIMARY KEY (PhotoID)
	FOREIGN KEY (PhotoID) REFERENCES Photo(PhotoID),
	/*ON DELETE CASCADE*/
	/*ON UPDATE CASCADE*/
	FOREIGN KEY (Place, Country) REFERENCES Location(Place, Country)
	/*ON DELETE SET NULL*/
	/*ON UPDATE CASCADE*/
);

CREATE TABLE Location
(
	Place VARCHAR(255),
	Country VARCHAR(255),
	Description VARCHAR(255),
	PRIMARY KEY (Place, Country)
);

CREATE TABLE Abstract
(
	PhotoID int,
	Comment VARCHAR(255),
	PRIMARY KEY (PhotoID)
	FOREIGN KEY (PhotoID) REFERENCES Photo(PhotoID)
	/*ON DELETE CASCADE*/
	/*ON UPDATE CASCADE*/
);


CREATE TABLE Portrait
(
	PhotoID int NOT NULL,
	Head char(1) DEFAULT 'N',
	PRIMARY KEY (PhotoID)
	FOREIGN KEY (PhotoID) REFERENCES Photo(PhotoID)
	/*ON DELETE CASCADE*/
	/*ON UPDATE CASCADE*/

);

CREATE TABLE Models (

	PhotoID int NOT NULL,
	MName VARCHAR(255),
	MBDate Datetime,
	Agency VARCHAR(255),

	PRIMARY KEY (PhotoID, MName, MBDate)
	FOREIGN KEY (PhotoID) REFERENCES Portrait(PhotoID),
	/*ON UPDATE CASCADE*/
	/*ON DELETE CASCADE*/
	FOREIGN KEY (MName, MBDate) REFERENCES Model(MName, MBDate)
	/*ON UPDATE CASCADE*/
	/*ON DELETE CASCADE*/
);

CREATE TABLE Model (
	MName VARCHAR( 255 ),
	MBDate Datetime,
	MBio VARCHAR( 255 ),
	MSex Char (1),

	PRIMARY KEY (MName, MBDate)

);

CREATE TABLE Photographer (

	PName VARCHAR(255),
	PBDate Date,
	PBio VARCHAR(255),
	PAddress VARCHAR(255),
	PNationality VARCHAR(100),

	PRIMARY KEY (PName, PBDate)


);

CREATE TABLE Influences (
	EPName VARCHAR(255),
	EPBDate Date,
	RPName VARCHAR(255),
	RPBDate Date,

	PRIMARY KEY (EPName, EPBDate, RPName, RPBDate)
	FOREIGN KEY (EPName, EPBDate) REFERENCES Photographer(PName, PBDate)
	/*ON UPDATE CASCADE*/
	/*ON DELETE CASCADE*/
	FOREIGN KEY (RPName, RPBDate) REFERENCES Photographer(PName, PBDate)
	/*ON UPDATE CASCADE*/
	/*ON DELETE CASCADE*/
);


CREATE TABLE Transaction (
<<<<<<< HEAD

=======
>>>>>>> e0e9ebcbe704f099301ba518f614828b104ce671
	TransID int AUTO_INCREMENT,
	TDate Datetime,
	CardNo int UNIQUE,
	CardType VARCHAR(100),
	CardExpDate Date,
	TotalAmount FLOAT(6,2),
	LoginName VARCHAR(100),

	PRIMARY KEY (TransID)
	FOREIGN KEY (LoginName) REFERENCES Customer(LoginName)
	/*ON UPDATE CASCADE*/
	/*ON DELETE SET NULL*/

);

CREATE TABLE Customer (

	LoginName VARCHAR(100) NOT NULL,
	Password VARCHAR(100) NOT NULL,
	CName VARCHAR(255),
	CType VARCHAR(50),
	BillingAddress VARCHAR(255),
	Str1 VARCHAR(100),
	Str2 VARCHAR(100),
	City VARCHAR(100),
	State VARCHAR(100),
	Zip int,

	PRIMARY KEY (LoginName)


);
