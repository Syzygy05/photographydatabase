CREATE TABLE Photo
( 
	PhotoID int NOT NULL,
	Speed int,
	Film VARCHAR(255),
	FStop DOUBLE PRECISION,
	Color CHAR(3),
	Resolution VARCHAR(20),
	Price int,
	`Date` Datetime,
	TransID int,
	PName VARCHAR(255),
	PBDate Datetime,
	PRIMARY KEY (PhotoID),
	FOREIGN KEY (TransID) REFERENCES Transaction(TransID),
	FOREIGN KEY (PName, PBDate) REFERENCES Photographer(PName, PBDate)
);

CREATE TABLE Landscape
(
	PhotoID int NOT NULL,
	Place VARCHAR(255),
	Country VARCHAR(255),
	PRIMARY KEY (PhotoID),
	FOREIGN KEY (PhotoID) REFERENCES Photo(PhotoID),
	FOREIGN KEY (Place, Country) REFERENCES Location(Place, Country)

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
	PRIMARY KEY (PhotoID),
	FOREIGN KEY (PhotoID) REFERENCES Photo(PhotoID)
);


CREATE TABLE Portrait 
(
	PhotoID int NOT NULL,
	Head char(1),
	PRIMARY KEY (PhotoID),
	FOREIGN KEY PhotoID REFERENCES Photo(PhotoID)

);

CREATE TABLE Models (

	PhotoID int NOT NULL,
	MName VARCHAR(255),
	MBDate Datetime,
	Agency VARCHAR(255),

	PRIMARY KEY (PhotoID, MName, MBDate),
	FOREIGN KEY PhotoID REFERENCES Portrait(PhotoID),
	FOREIGN KEY (MName, MBDate) REFERENCES Model(MName, MBDate)
);

CREATE TABLE Model (
	MName VARCHAR( 255 ),
	MBDate Datetime,
	MBio VARCHAR( 255 ),
	MSex Char (1),

	PRIMARY KEY (PhotoID, MName)

);

CREATE TABLE Photographer (

	PName VARCHAR(255),
	PBDate Datetime,
	PBio VARCHAR(255),
	PAddress VARCHAR(255),
	/* NOT GOING TO BE INCLUDING COLOR LIKE IN HIS EXAMPLE*/
	PNationality VARCHAR(100),

	PRIMARY KEY (PName, PBDate)

	/* FOREIGN KEYS FROM PHOTOGRAPHER (HERE) TO INFLUENCES ARE FUCKEN WEIRD */

);

CREATE TABLE Influences (
	EPName VARCHAR(255),
	EPBDate Datetime,
	RPName VARCHAR(255),
	RPBDate Datetime,

	PRIMARY KEY (EPName, EPBDate, RPName, RPBDate)
);

CREATE TABLE Transaction (

	TransID int NOT NULL,
	TDate Datetime,
	CardNo int,
	CardType VARCHAR(100),
	CardExpDate Datetime,
	TotalAmount DOUBLE PRECISION,
	LoginName VARCHAR(100),

	PRIMARY KEY (TransID),
	FOREIGN KEY LoginName REFERENCES Customer(LoginName)

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
	Zip CHAR(9),

	PRIMARY KEY (LoginName)

);

