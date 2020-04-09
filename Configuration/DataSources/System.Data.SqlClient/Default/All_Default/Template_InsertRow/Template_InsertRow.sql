Insert into [dbo].[Template] ([CallDate]
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
							)
output inserted.Id
values (@CallDate
      ,@CallTime
      ,@CallDateTime
      ,@CallChar
      ,@CallVarchar
      ,@CallIntRadio
      ,@CallBitCheck
      ,@CallIntTree
      ,@CallFile
      ,@CallFileName
      ,@CallImage
	  )