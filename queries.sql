SELECT CName FROM
	( SELECT * FROM 
	( Customer JOIN Transaction ON Customer.LoginName = Transaction.LoginName ) AND
	( Transaction JOIN Photo ON Transaction.TransID = Photo.TransID	)
WHERE Photo.Sold = 'Y' AND SUM( Price ) > 100 );

SELECT PhotoID FROM
	( SELECT * FROM 
	( Customer JOIN Transaction ON Customer.LoginName = Transaction.LoginName ) AND
	( Transaction JOIN Photo ON Transaction.TransID = Photo.TransID	)
WHERE Photo.Sold = 'N');


/* So first we need all of the portraits by a certain model
/* I'll then join with customer/transaction
/* Two cases where not true -> either not all photos bought,
/* or curr customer isn't the one that bought the things
*/

SELECT CName FROM
	( SELECT * FROM
		( SELECT * FROM 
			((( SELECT PhotoID FROM 
				Model JOIN Models ON Model.MName = Models.MName, Model.MBDate = Modes.MBDate  
					WHERE Model.MName = "Jackie Chan")
				NATURAL JOIN Portrait ) /* Photo ID here from portrait */
			NATURAL JOIN Photo ) /* Photo ID here from photo */
		JOIN Transaction ON Photo.TransID = Transaction.TransID )
 	JOIN Customer ON Transaction.LoginName = Customer.LoginName );
/*
SELECT * FROM ( Landscape JOIN Photo )
	JOIN 
*/

