/* PHOTO APPLICATIONS */
INSERT INTO Photo ( PhotoId, Speed, Film, Fstop, Color, Resolution, 
		    Price, `Date`, PName, PBDate )
       VALUES ( 57, 10, 35, 10.2, 'Yes', '640x480', 100, now(), 'Will Smith', 9-25-1968 
);
DELETE FROM Photo WHERE PhotoId=57;

UPDATE Photo 
SET
	Speed = 11,
	Film = 37,
	Fstop = 11.2,
	Color = 'No',
	Price = '1000',
	PName = 'Jack Nicholson',
	PBDate = '4-22/1937'
WHERE
	PhotoID=57;

SELECT * FROM PHOTO WHERE PhotoID=57;

/* SALES APPLICATIONS */

INSERT INTO Customer ( LoginName, Password, CName, CType, CardNo, BillingAddress, Str1, City, State, Zip )
       VALUES ( 'jimmy3', '123', 'James', 'Blunt', 'Mastercard', 1111111111111111, '23 willow st, Newark, NJ, 07101', 'Willow', 'Newark', 'NJ', 07041 ) 

INSERT INTO Transaction ( Tdate, CardNo, CardType, CardExpDate, TotalAmount )
       VALUES ( now(), 1111111111111111, 'Mastercard', 11-5-2020, 105.3 ) 

UPDATE Photo, Transaction
SET
	Photo.Sold = 'Y'
	Photo.TransID = Transaction.TransID
WHERE 
	PhotoID=57;


SELECT *
FROM Photo, Transaction
WHERE 
	Photo.Sold='Y' AND
	Transaction.TransID=40;

