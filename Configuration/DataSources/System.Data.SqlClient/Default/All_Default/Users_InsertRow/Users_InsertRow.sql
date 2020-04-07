Insert into [dbo].[Users] (   [SystemUserId]
							,[FIO]
							,[CreatedAt]
							,[CreatedUserById]
							,[EditedAt]
							,[EditedUserById]
							)
output inserted.Id
values ( @SystemUserId
 	   ,@FIO
       ,GETUTCDATE()
       ,@CreatedUserById
       ,GETUTCDATE()
       ,@CreatedUserById
	  )