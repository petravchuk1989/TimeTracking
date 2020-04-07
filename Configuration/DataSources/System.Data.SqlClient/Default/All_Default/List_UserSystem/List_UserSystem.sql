Select [UserId] as [Id],
([FirstName] + ' ' + [LastName] + ' ' + [Patronymic] + ' (' + [UserName]+ ')' ) as Name
FROM [CRM_TimeTracking_System].[dbo].[User]
where #filter_columns#
#sort_columns#
offset @pageOffsetRows rows fetch next @pageLimitRows rows only