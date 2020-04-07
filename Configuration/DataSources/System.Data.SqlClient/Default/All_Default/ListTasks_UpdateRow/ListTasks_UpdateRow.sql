Update [dbo].[ListTasks] set [JiraTaskCode] = @JiraTaskCode
							,[Note] = @Note
							,[ProjectId] = @ProjectId
							,[ValidDate] = @ValidDate							 
					     	,[EditedAt] = GETUTCDATE() 
						    ,[EditedUserById] = @EditedUserById
Where [Id] = @Id