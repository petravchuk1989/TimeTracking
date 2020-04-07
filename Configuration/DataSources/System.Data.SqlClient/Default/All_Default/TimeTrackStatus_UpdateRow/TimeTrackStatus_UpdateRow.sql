Update [dbo].[TimeTrackStatus] set [Name] = @Name								 
								  ,[EditedAt] = GETUTCDATE() 
								  ,[EditedUserById] = @EditedUserById
Where [Id] = @Id