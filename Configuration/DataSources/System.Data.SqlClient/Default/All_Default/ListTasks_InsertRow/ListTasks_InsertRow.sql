Insert into [dbo].[ListTasks] ([JiraTaskCode]
							,[Note]
							,[ProjectId]
							,[ValidDate]
							,[CreatedAt]
							,[CreatedUserById]
							,[EditedAt]
							,[EditedUserById]
							)
output inserted.Id
values ( @JiraTaskCode
		,@Note
		,@ProjectId
		,@ValidDate
      ,GETUTCDATE()
      ,@CreatedUserById
      ,GETUTCDATE()
      ,@CreatedUserById
	  )