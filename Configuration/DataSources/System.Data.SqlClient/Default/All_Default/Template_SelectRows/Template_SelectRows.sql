SELECT [Id]
      ,[CallDate]
      ,[CallTime]
      ,[CallDateTime]
      ,[CallChar]
      ,[CallVarchar]
      ,[CallIntRadio]
      ,[CallBitCheck]
      ,[CallIntTree]
      ,[CallFile]
      ,[CallFileName]
      ,[CallImage]
  FROM [dbo].[Template]
  where #filter_columns#
 #sort_columns#
 offset @pageOffsetRows rows fetch next @pageLimitRows rows only