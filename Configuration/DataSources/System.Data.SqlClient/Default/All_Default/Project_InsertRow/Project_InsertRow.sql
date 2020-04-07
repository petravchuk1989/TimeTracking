Insert into [dbo].[Project] ([Name]
							,[CreatedAt]
							,[CreatedUserById]
							,[EditedAt]
							,[EditedUserById]
							)
output inserted.Id
values ( @Name
      ,GETUTCDATE()
      ,@CreatedUserById
      ,GETUTCDATE()
      ,@CreatedUserById
	  )