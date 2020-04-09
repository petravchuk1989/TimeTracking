OPEN SYMMETRIC KEY SymKey
DECRYPTION BY ASYMMETRIC KEY AsymKey
DECLARE @param AS [uniqueidentifier] 
SET @param = KEY_GUID('SymKey') 
IF (@param IS NOT NULL)
Begin
insert into [dbo].[TimeTrack] ([ListTasksId]
                            ,[StartDate]
                            ,[EndDate]
                            ,[Note]
                            ,[StatusId]
                            ,[IsBusinessTime]
                            ,[JiraTaskCode]
                            ,[CreatedAt]
                            ,[CreatedUserById]
                            ,[EditedAt]
                            ,[EditedUserById]
                            )
output inserted.Id
values ( @ListTasksId
        ,@StartDate
        ,@EndDate
        ,ENCRYPTBYKEY(@param, @Note)   
        ,@StatusId
        ,@IsBusinessTime
        ,@JiraTaskCode
        ,getutcdate()
        ,@CreatedUserById
        ,getutcdate()
        ,@CreatedUserById
        )
end;
