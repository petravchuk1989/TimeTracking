Insert into [dbo].[RightsForProjects] ([ProjectId]
							,[UsersId]
							,[Accessibility]
							,[CreatedAt]
							,[CreatedUserById]
							,[EditedAt]
							,[EditedUserById]
							)
output inserted.Id
values ( @ProjectId
		,@UsersId
		,@Accessibility
      ,GETUTCDATE()
      ,@CreatedUserById
      ,GETUTCDATE()
      ,@CreatedUserById
	  )