Update [dbo].[Role] set [Name] = @Name								 
						,[EditedAt] = GETUTCDATE() 
						,[EditedUserById] = @EditedUserById
Where [Id] = @Id