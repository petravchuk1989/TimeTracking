Update [dbo].[Users] set [SystemUserId] = @SystemUserId
						,[FIO] = @FIO								 
						,[EditedAt] = GETUTCDATE() 
						,[EditedUserById] = @EditedUserById
Where [Id] = @Id