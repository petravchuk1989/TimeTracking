update [dbo].[TimeTrack] set [ListTasksId] = @ListTasksId
                            ,[StartDate] = @StartDate
                            ,[EndDate] = @EndDate
                            ,[Note] = @Note
                            ,[StatusId] = @StatusId
                            ,[IsBusinessTime] = @IsBusinessTime
                            ,[JiraTaskCode] = @JiraTaskCode
                            ,[EditedAt] = getutcdate()
                            ,[EditedUserById] = @CreatedUserById
where [Id] = @Id

       
