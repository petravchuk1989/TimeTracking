Update [dbo].[Project] set [Name] = @Name								 
						,[EditedAt] = GETUTCDATE() 
						,[EditedUserById] = @EditedUserById
Where [Id] = @Id