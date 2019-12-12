/* Customer 1  */
INSERT INTO Customer ( LoginName, Password, CName, CType, BillingAddress, Str1, City, State, Zip )
       VALUES ( 'jimmy3', '123', 'James Blunt', 'Mastercard', '23 Willow St, Newark, NJ, 07101', '23 Willow St', 'Newark', 'NJ', '07101' );

/* Customer 2  */
INSERT INTO Customer ( LoginName, Password, CName, CType, BillingAddress, Str1, City, State, Zip )
       VALUES ( 'johnny12', '321', 'Johnny Bravo', 'Mastercard', '43 Mac St, Newark, NJ, 07101', '43 Mac St', 'Newark', 'NJ', '07101' );

/* Customer 3  */
INSERT INTO Customer ( LoginName, Password, CName, CType, BillingAddress, Str1, City, State, Zip )
       VALUES ( 'annie32', '0101', 'Annie May', 'Visa', '30 Fair St, Newark, NJ, 07101', '30 Fair St', 'Newark', 'NJ', '07101' );

/* Customer 4  */
INSERT INTO Customer ( LoginName, Password, CName, CType, BillingAddress, Str1, City, State, Zip )
      VALUES ( 'zoe817', '0101', 'Zoe Din', 'Visa', '30 North St, Newark, NJ, 07101', '30 North St', 'Newark', 'NJ', '07101' );

/* Customer 5  */
INSERT INTO Customer ( LoginName, Password, CName, CType, BillingAddress, Str1, City, State, Zip )
     VALUES ( 'kyle837', '0101', 'Kyle Donovan', 'Visa', '30 South St, Newark, NJ, 07101', '30 South St', 'Newark', 'NJ', '07101' );

/* Customer 6  */
INSERT INTO Customer ( LoginName, Password, CName, CType, BillingAddress, Str1, City, State, Zip )
    VALUES ( 'john583', '0101', 'John Smith', 'Visa', '30 West St, Newark, NJ, 07101', '30 West St', 'Newark', 'NJ', '07101' );

/* Customer 7  */
INSERT INTO Customer ( LoginName, Password, CName, CType, BillingAddress, Str1, City, State, Zip )
        VALUES ( 'rambo483', '0101', 'Rambo Zuck', 'Visa', '30 East St, Newark, NJ, 07101', '30 East St', 'Newark', 'NJ', '07101' );
/*-------------------------------------------------------------------------------------------------------------------------------------------*/

/* Photographer 1 */
INSERT INTO Photographer (
	PName, PBDate, PBio, PAddress, PNationality ) VALUES (
	'Jeff Goldblum', '1998-11-2', 'An artist of the highest caliber.', '11 Fig St, Seattle, California 08765', 'Brazillian' );

/* Photographer 2 */
INSERT INTO Photographer (
	PName, PBDate, PBio, PAddress, PNationality ) VALUES (
	'Sally Mctavern', '1983-6-2', 'Created 255 pieces of art.', '11 Viking St, Valhalla, Washington 74654', 'French' );

/* Photographer 3 */
INSERT INTO Photographer (
	PName, PBDate, PBio, PAddress, PNationality ) VALUES (
	'Martin Freeman', '1975-7-5', 'A photographer.', '32 Pharoah St, Florida 83653', 'Egyptian' );

/* Photographer 4 */
INSERT INTO Photographer (
        PName, PBDate, PBio, PAddress, PNationality ) VALUES (
        'Chris Evans', '1955-6-8', 'Studied in England.', '17 Worchester Drive, Dallas, Texas 84653', 'United States' );

/* Photographer 5 */
INSERT INTO Photographer (

        PName, PBDate, PBio, PAddress, PNationality ) VALUES (
        'Will Smith', '1923-1-1', 'Lived in NYC.', '234 Jefferson Blvd, Savannah, Georgia 83721', 'Canadian' );

/* Photographer 6 */
INSERT INTO Photographer (
        PName, PBDate, PBio, PAddress, PNationality ) VALUES (
        'Jodie Foster', '1925-12-17', 'Lived in France.', '2564 Harlem Ave, NYC, New York 74857', 'Mexican' 

/* Photographer 7 */
INSERT INTO Photographer (
        PName, PBDate, PBio, PAddress, PNationality ) VALUES (
        'Jackie Chan', '1911-6-23', 'Lived in China.', '56 China St, NYC, New York 74857', 'Chinese' );

/* Photographer 8 */
INSERT INTO Photographer (
        PName, PBDate, PBio, PAddress, PNationality ) VALUES (
        'Robert Diniro', '1925-12-17', 'Lived in Russia.', '294 Farm Rd, Allentown, Pennsylvania 37924', 'German' );

/* Photographer 8 */
INSERT INTO Photographer (
        PName, PBDate, PBio, PAddress, PNationality ) VALUES (
        'Anthony Makey', '1987-3-3', 'Loved dogs.', '1 Pennsylvania Ave, Washington D.C. 74857', 'Australian' );

/* Photographer 10 */
INSERT INTO Photographer (
        PName, PBDate, PBio, PAddress, PNationality ) VALUES (
        'Tony Stark', '1899-5-19', 'Likes long walks on the beach.', '567 Flocktown Rd, New Jersey 74638', 'Polish' );
/*-------------------------------------------------------------------------------------------------------------------------------------------*/

/* Model 1 */
INSERT INTO Model (
	MName, MBDate, MBio, MSex ) Values (
	'Tommy LeeJones', '1951-12-18', 'Model F', 'M' );


/* Model 2 */
INSERT INTO Model (
	MName, MBDate, MBio, MSex ) Values (
	'Dave Chapelle', '1969-12-2', 'Model E', 'M' );

/* Model 3 */
INSERT INTO Model (
	MName, MBDate, MBio, MSex ) Values (
	'Sarah OConnor', '1995-5-3', 'Model D', 'F' );


/* Model 4 */
INSERT INTO Model (
	MName, MBDate, MBio, MSex ) Values (
	'Jessica Smar', '1998-4-4', 'Model C', 'F' );

/* Model 5 */
INSERT INTO Model (
	MName, MBDate, MBio, MSex ) Values (
	'Nicole Sullivan', '1985-3-5', 'Model B', 'F' );

/* Model 6 */
INSERT INTO Model (
	MName, MBDate, MBio, MSex ) Values (
	'Jennifer Lopez', '1956-2-6', 'Model A', 'M' );


/*-------------------------------------------------------------------------------------------------------------------------------------------*/

/* Photo 1 */
INSERT INTO Photo (
	PhotoID, Speed, Film, FStop, Color, Resolution, Price, `Date`, PName, PBDate ) Values (
	33, 10, 5, 1.3, 'YES', '4x6', 100.23, '1966-6-6', 'Sally Mctavern', '1983-6-2' );

/* Photo 2 */
INSERT INTO Photo (
	PhotoID, Speed, Film, FStop, Color, Resolution, Price, `Date`, PName, PBDate ) Values (
	31, 11, 5, 1.2, 'NO', '4x6', 150.23, '1987-1-3', 'Jeff Goldblum', '1998-11-2' );

/* Photo 3 */
INSERT INTO Photo (
	PhotoID, Speed, Film, FStop, Color, Resolution, Price, `Date`, PName, PBDate ) Values (
	30, 12, 5, 1.2, 'YES', '4x6', 65.50, '1999-4-6', 'Martin Freeman', '1975-7-5' );

/* Photo 3 */
INSERT INTO Photo (
        PhotoID, Speed, Film, FStop, Color, Resolution, Price, `Date`, PName, PBDate ) Values (
        41, 15, 35, 1.6, 'NO', '4x12', 250.50, '1900-12-10', 'Chris Evans', '1955-6-8' );

/* Photo 4 */
INSERT INTO Photo (
        PhotoID, Speed, Film, FStop, Color, Resolution, Price, `Date`, PName, PBDate ) Values (
        42, 10, 35, 2.1, 'NO', '4x12', 750.50, '1878-12-15', 'Tony Stark', '1899-5-19' );

/* Photo 5 */
INSERT INTO Photo (
        PhotoID, Speed, Film, FStop, Color, Resolution, Price, `Date`, PName, PBDate ) Values (
        43, 20, 35, 2.4, 'YES', '9x16', 150.70, '1938-7-10', 'Tony Stark', '1899-5-19' );

/* Photo 6 */
INSERT INTO Photo (
        PhotoID, Speed, Film, FStop, Color, Resolution, Price, `Date`, PName, PBDate ) Values (
        44, 25, 35, 1.6, 'NO', '9x16', 990.50, '1976-8-8', 'Anthony Makey', '1987-3-3' );

/* Photo 7 */
INSERT INTO Photo (
        PhotoID, Speed, Film, FStop, Color, Resolution, Price, `Date`, PName, PBDate ) Values (
        45, 25, 35, 1.6, 'NO', '9x16', 138.00, '1923-10-8', 'Robert Diniro', '1925-12-17' );


/* Photo 8 */
INSERT INTO Photo (
        PhotoID, Speed, Film, FStop, Color, Resolution, Price, `Date`, PName, PBDate ) Values (
        46, 25, 35, 1.6, 'YES', '10:10', 456.00, '1964-9-8', 'Robert Diniro', '1925-12-17' );


/* Photo 9 */
INSERT INTO Photo (
        PhotoID, Speed, Film, FStop, Color, Resolution, Price, `Date`, PName, PBDate ) Values (
        47, 25, 35, 1.6, 'NO', '10:10', 15.00, '1952-8-16', 'Jackie Chan', '1911-6-23' );



/* Photo 10 */
INSERT INTO Photo (
        PhotoID, Speed, Film, FStop, Color, Resolution, Price, `Date`, PName, PBDate ) Values (
        48, 25, 35, 1.6, 'NO', '10:10', 15.00, '1900-1-1', 'Jodie Foster', '1925-12-17' );

/* Photo 11 */
INSERT INTO Photo (

        PhotoID, Speed, Film, FStop, Color, Resolution, Price, `Date`, PName, PBDate ) Values (
        49, 25, 35, 1.6, 'NO', '10:10', 15.00, '1901-1-2', 'Jodie Foster', '1925-12-17' );

/* Photo 12 */
INSERT INTO Photo (

        PhotoID, Speed, Film, FStop, Color, Resolution, Price, `Date`, PName, PBDate ) Values (
        50, 25, 35, 1.6, 'NO', '10:10', 15.00, '1902-1-3', 'Jodie Foster', '1925-12-17' );

/* Photo 13 */
INSERT INTO Photo (
        PhotoID, Speed, Film, FStop, Color, Resolution, Price, `Date`, PName, PBDate ) Values (
        51, 25, 35, 1.6, 'NO', '10:10', 15.00, '1903-1-4', 'Jodie Foster', '1925-12-17' );


/*-------------------------------------------------------------------------------------------------------------------------------------------*/
