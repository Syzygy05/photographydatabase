/* Landscape 1 */
INSERT INTO Landscape ( PhotoID, Place, Country ) VALUES (
        33, 'Stonehenge', 'England' );

/* Landscape 2 */
INSERT INTO Landscape ( PhotoID, Place, Country ) VALUES (
        31, 'Grand Canyon', 'United States' );

/* Landscape 3 */
INSERT INTO Landscape ( PhotoID, Place, Country ) VALUES (
        30, 'Stone Forest', 'China' );

/* Landscape 4 */
INSERT INTO Landscape ( PhotoID, Place, Country ) VALUES (
        41, 'Great Blue Hole', 'Belize' );

/* Landscape 5 */
INSERT INTO Landscape ( PhotoID, Place, Country ) VALUES (
        42, 'Moeraki Boulders', 'New Zealand' );

/*---------------------------------------------------------*/

/* Location 1 */
INSERT INTO Location ( Place, Country, Description ) VALUES (
        'Stonehenge', 'England', 'Stone in a circle.' );

/* Location 2 */
INSERT INTO Location ( Place, Country, Description ) VALUES (
        'Grand Canyon', 'United States', 'Deep Canyons.' );

/* Location 3 */
INSERT INTO Location ( Place, Country, Description ) VALUES (
        'Stone Forest', 'China', 'A large forest of rocks.' );

/* Location 4 */
INSERT INTO Location ( Place, Country, Description ) VALUES (
        'Great Blue Hole', 'Belize', 'Giant hole in the ocean floor.' );

/* Location 5 */
INSERT INTO Location ( Place, Country, Description ) VALUES (
        'Moeraki Boulders', 'New Zealand', 'Colorful boulders.' );

/*---------------------------------------------------------*/

/* Abstract 1 */
INSERT INTO Abstract ( PhotoID, Comment ) VALUES (
        43, 'Swirl pattern.' );

/* Abstract 2 */
INSERT INTO Abstract ( PhotoID, Comment ) VALUES (
        44, 'Colorful pattern.' );

/*---------------------------------------------------------*/

/* Portrait 1 */
INSERT INTO Portrait ( PhotoID, Head ) VALUES (
        45, 'Y' );

/* Portrait 2 */
INSERT INTO Portrait ( PhotoID, Head ) VALUES (
        46, 'Y' );

/* Portrait 3 */
INSERT INTO Portrait ( PhotoID, Head ) VALUES (
        47, 'N' );

/* Portrait 4 */
INSERT INTO Portrait ( PhotoID, Head ) VALUES (
        48, 'N' );

/*---------------------------------------------------------*/

/* Models 1 */
INSERT INTO Models ( PhotoID, MName, MBDate, Agency ) VALUES (
        45, 'Tommy LeeJones', '1951-12-18', 'H Modeling Agency' );

/* Models 2 */
INSERT INTO Models ( PhotoID, MName, MBDate, Agency ) VALUES (
        46, 'Tommy LeeJones', '1951-12-18', 'H Modeling Agency' );

/* Models 3 */
INSERT INTO Models ( PhotoID, MName, MBDate, Agency ) VALUES (
        47, 'Sarah OConnor', '1995-5-3', 'A Modeling Agency' );

/* Models 4 */
INSERT INTO Models ( PhotoID, MName, MBDate, Agency ) VALUES (
        48, 'Jessica Smar', '1998-4-4', 'C Modeling Agency' );

/*---------------------------------------------------------*/

/* Influences 1 */
INSERT INTO Influences ( EPName, EPBDate, RPName, RPBDate ) VALUES (
        'Tony Stark', '1899-5-19', 'Chris Evans', '1955-6-8' );

/* Influences 2 */
INSERT INTO Influences ( EPName, EPBDate, RPName, RPBDate ) VALUES (
        'Jackie Chan', '1911-6-23', 'Chris Evans', '1955-6-8' );

/* Influences 3 */
INSERT INTO Influences ( EPName, EPBDate, RPName, RPBDate ) VALUES (
        'Anthony Makey', '1987-3-3', 'Chris Evans', '1955-6-8' );

/* Influences 4 */
INSERT INTO Influences ( EPName, EPBDate, RPName, RPBDate ) VALUES (
        'Jodie Foster', '1925-12-17', 'Will Smith', '1923-1-1' );

/* Influences 5 */
INSERT INTO Influences ( EPName, EPBDate, RPName, RPBDate ) VALUES (
        'Jeff Goldblum', '1998-11-2', 'Sally Mctavern', '1983-6-2' );

/*---------------------------------------------------------*/

INSERT INTO Transaction ( TransID, TDate, CardNo, CardType, CardExpDate, TotalAmount, LoginName ) VALUES (
        1, '2019-1-1', '1928453857', 'Mastercard', '2020-1-1,', '138.00', 'jimmy3');


INSERT INTO Transaction ( TransID, TDate, CardNo, CardType, CardExpDate, TotalAmount, LoginName ) VALUES (
        2, '2010-1-2', '1928453857', 'Mastercard', '2020-1-1,', '456.00', 'jimmy3');


INSERT INTO Transaction ( TransID, TDate, CardNo, CardType, CardExpDate, TotalAmount, LoginName ) VALUES (
        3, '2019-1-3', '1928453857', 'Mastercard', '2020-1-1,', '100.23', 'johnny12');
