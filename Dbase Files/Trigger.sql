CREATE Trigger trig
ON dbo.Category
FOR INSERT
AS
	UPDATE Category
	 SET Description = 'N/A'
	 WHERE Description = '';
	 

	
	 