
INSERT INTO Customer ( LoginName, Password, CName, CType, BillingAddress, Str1, City, State, Zip )
       VALUES ( 'jimmy3', '123', 'James Blunt', 'Mastercard', '23 willow st, Newark, NJ, 07101', 'Willow', 'Newark', 'NJ', 07101 )

INSERT INTO Customer ( LoginName, Password, CName, CType, BillingAddress, Str1, City, State, Zip )$
       VALUES ( 'johnny12', '321', 'Johnny Bravo', 'Mastercard', '23 willow st, Newark, NJ, 07101', 'Willow', 'Newark', 'NJ', 07101 )

INSERT INTO Customer ( LoginName, Password, CName, CType, BillingAddress, Str1, City, State, Zip )
       VALUES ( 'annie32', '0101', 'Annie May', 'Visa', '23 willow st, Newark, NJ, 07101', 'Willow', 'Newark', 'NJ', 07101 )

INSERT INTO Photographer (
	PName, PBDate, PBio, PAddress, PNationality ) VALUES (
	'Jeff', 11-2-1998, 'cool guy', '11, the middle of nowhere', 'brazillian' );


INSERT INTO Photographer (
	PName, PBDate, PBio, PAddress, PNationality ) VALUES (
	'Sally', 6-2-1983, 'nice girl', 'Valhalla', 'French' );


INSERT INTO Photographer (
	PName, PBDate, PBio, PAddress, PNationality ) VALUES (
	'Martin', 7-5-1975, 'cooler than jeff', '32 wywietrnzik avenue', 'Egyptian' );


INSERT INTO Model (
	MName, MBDate, MBio, MSex ) Values (
	'Tommy', 12-18-1951, 'straight up gangster', 'M' );


INSERT INTO Model (
	MName, MBDate, MBio, MSex ) Values (
	'Dave', 12-18-1951, 'really wanted to be an engineer instead', 'M' );


INSERT INTO Model (
	MName, MBDate, MBio, MSex ) Values (
	'Sarah OConnor', 12-18-1951, 'cool girl', 'F' );

INSERT INTO Photo (
	PhotoID, Speed, Film FStop, Color, Resolution, Price, `Date`, PName, PBDate ) Values (
	33, 10, 12.3, 'YES', '640x480', 100.23, 6-6-1966, 'Sally', '6-2-1983' );

INSERT INTO Photo (
	PhotoID, Speed, Film FStop, Color, Resolution, Price, `Date`, PName, PBDate ) Values (
	31, 11, 15.2, 'NO', '640x480', 150.23, 1-3-1987, 'Jeff', '11-2-1998' );

INSERT INTO Photo (
	PhotoID, Speed, Film FStop, Color, Resolution, Price, `Date`, PName, PBDate ) Values (
	30, 12, 13.2, 'yes', '640x480', 65.50, 4-6-1999, 'Tommy', '12-19-1951' );