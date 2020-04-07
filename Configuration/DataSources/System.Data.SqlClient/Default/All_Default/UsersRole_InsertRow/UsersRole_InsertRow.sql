Insert into [dbo].[UsersRole] ([UsersId]
							,[RoleId]
							,[CreatedAt]
							,[CreatedUserById]
							,[EditedAt]
							,[EditedUserById]
							)
output inserted.Id
values ( @UsersId
		,@RoleId
      ,GETUTCDATE()
      ,@CreatedUserById
      ,GETUTCDATE()
      ,@CreatedUserById
	  )