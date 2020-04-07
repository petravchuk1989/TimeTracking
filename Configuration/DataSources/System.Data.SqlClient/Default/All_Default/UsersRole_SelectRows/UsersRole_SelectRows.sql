SELECT [UsersRole].[Id]
      ,[UsersRole].[UsersId]
	  ,[Users].[FIO]
      ,[UsersRole].[RoleId]
	  ,[Role].[Name]
      ,[UsersRole].[CreatedAt]
      ,[UsersRole].[CreatedUserById]
      ,[UsersRole].[EditedAt]
      ,[UsersRole].[EditedUserById]
  FROM [dbo].[UsersRole]
  inner join [dbo].[Users] on [Users].[Id] = [UsersRole].[UsersId]
  inner join [dbo].[Role] on [Role].[Id] = [UsersRole].[RoleId]
Where #filter_columns#
#sort_columns#
offset @pageOffsetRows rows fetch next @pageLimitRows rows only