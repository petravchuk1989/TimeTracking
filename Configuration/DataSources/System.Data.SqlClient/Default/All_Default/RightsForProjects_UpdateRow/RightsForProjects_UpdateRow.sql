Update [dbo].[RightsForProjects] set [ProjectId] = @ProjectId
							 [UsersId] = @UsersId
							 [Accessibility] = @Accessibility
					     	,[EditedAt] = GETUTCDATE() 
						    ,[EditedUserById] = @EditedUserById
Where [Id] = @Id