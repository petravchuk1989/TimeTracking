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
 Where [Id] = @Id