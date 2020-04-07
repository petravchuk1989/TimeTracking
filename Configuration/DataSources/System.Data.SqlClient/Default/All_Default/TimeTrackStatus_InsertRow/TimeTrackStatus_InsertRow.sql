Insert into [dbo].[TimeTrackStatus] ([Name]
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