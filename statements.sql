/* number 1 */
INSERT INTO Photo ( PhotoId, Speed, Film, Fstop, Color, Resolution, 
		    Price, `Date`, PName, PBDate )
       VALUES ( 57, 10, 35, 10.2, 'Yes', '640x480', 100, now(), 'Will Smith', 9-25-1968 
);
/* number 2 */
DELETE FROM Photo WHERE PhotoId=57;

/* number 3 */
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

/* number 4 */
SELECT * FROM PHOTO WHERE PhotoID=57;

/* number 5 */


