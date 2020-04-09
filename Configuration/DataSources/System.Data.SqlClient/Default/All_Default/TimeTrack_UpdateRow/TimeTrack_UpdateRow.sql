OPEN SYMMETRIC KEY SymKey
DECRYPTION BY ASYMMETRIC KEY AsymKey
DECLARE @param AS [uniqueidentifier] 
SET @param = KEY_GUID('SymKey') 
IF (@param IS NOT NULL)
Begin
update [dbo].[TimeTrack] set [ListTasksId] = @ListTasksId
                            ,[StartDate] = @StartDate
                            ,[EndDate] = @EndDate                           
							,[Note] = ENCRYPTBYKEY(@param, @Note)
                            ,[StatusId] = @StatusId
                            ,[IsBusinessTime] = @IsBusinessTime
                            ,[JiraTaskCode] = @JiraTaskCode
                            ,[EditedAt] = getutcdate()
                            ,[EditedUserById] = @CreatedUserById
where [Id] = @Id
end

       
