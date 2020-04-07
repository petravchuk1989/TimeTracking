SELECT AUser.[Id]
      ,AUser.[SystemUserId]
      ,AUser.[FIO]
      ,AUser.[CreatedAt]
      ,AUser.[CreatedUserById]
      ,AUser.[EditedAt]
      ,AUser.[EditedUserById]
      ,(SUser.[FirstName] + ' ' + SUser.[LastName] + ' ' + SUser.[Patronymic] + ' (' + SUser.[UserName]+ ')' ) as SystemUserName
FROM [CRM_TimeTracking_Analitics].[dbo].[Users] AUser
left join [CRM_TimeTracking_System].[dbo].[User] SUser on [SUser].[UserId] = [AUser].[SystemUserId] 
Where [Id] = @Id