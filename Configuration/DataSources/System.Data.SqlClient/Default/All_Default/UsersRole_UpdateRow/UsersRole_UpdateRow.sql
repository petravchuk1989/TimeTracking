Update [dbo].[UsersRole] set [UsersId] = @UsersId
							 [RoleId] = @RoleId	
					     	,[EditedAt] = GETUTCDATE() 
						    ,[EditedUserById] = @EditedUserById
Where [Id] = @Id