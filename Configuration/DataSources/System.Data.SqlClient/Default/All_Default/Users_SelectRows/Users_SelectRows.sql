SELECT AUser.[Id]
      ,AUser.[SystemUserId]
      ,AUser.[FIO]
      ,AUser.[CreatedAt]
      ,AUser.[CreatedUserById]
      ,AUser.[EditedAt]
      ,AUser.[EditedUserById]
FROM [CRM_TimeTracking_Analitics].[dbo].[Users] AUser
left join [CRM_TimeTracking_System].[dbo].[User] SUser on [SUser].[UserId] = [AUser].[SystemUserId]
 where #filter_columns#
 #sort_columns#
 offset @pageOffsetRows rows fetch next @pageLimitRows rows only