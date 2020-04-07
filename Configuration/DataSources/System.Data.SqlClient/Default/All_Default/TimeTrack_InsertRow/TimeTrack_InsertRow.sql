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
        ,@Note
        ,@StatusId
        ,@IsBusinessTime
        ,@JiraTaskCode
        ,getutcdate()
        ,@CreatedUserById
        ,getutcdate()
        ,@CreatedUserById
        )
