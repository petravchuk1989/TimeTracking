
declare @TypeId int = (SELECT top 1 [Id] FROM [dbo].[QuestionTypes] where #filter_columns#)

if @TypeId = 1
begin
		with [Parent_question_types] as (
		   SELECT 
				 [Id]
				 ,[Name]
				 ,[question_type_id] as [ParentId]
				 ,[has_child]
		    FROM [dbo].[QuestionTypes]
			where active = 1
			and #filter_columns#
		),
		[Child_question_types] as (
			SELECT 
			   [Id]
		      ,[ParentId]
		      ,[Name]
		      ,[has_child]
		    FROM [Parent_question_types]
		    
		    UNION all
		    
		    SELECT
		         [Id]
		         ,[question_type_id] as [ParentId]
				 ,[Name]
				 ,[has_child]
		    from [dbo].[QuestionTypes]
		    where active = 1 and exists(select * from [Parent_question_types] where [Parent_question_types].[Id] = [QuestionTypes].[question_type_id])
		)
		
		
		select 
		   [Id]
		      ,[ParentId]
		      ,[Name]
		      ,[has_child]
		from [Child_question_types]

end
else
begin
		with [Parent_question_types] as (
		   SELECT 
				 [Id]
				 ,[Name]
				 ,[question_type_id] as [ParentId]
				 ,[has_child]
		    FROM [dbo].[QuestionTypes]
			where active = 1
			and #filter_columns#
		),
		[Child_question_types] as (
			SELECT 
			   [Id]
		      ,[ParentId]
		      ,[Name]
		      ,[has_child]
		    FROM [Parent_question_types]
		    
		    UNION all
		    
		    SELECT 
				 [Id]
				 ,[question_type_id] as [ParentId]
				 ,[Name]
				 ,[has_child]
		    FROM [dbo].[QuestionTypes]
			where active = 1
		    and [QuestionTypes].Id in (select Id from [Parent_question_types] where [Parent_question_types].[Id] = [QuestionTypes].[question_type_id])
		)
		
		
		select 
		   [Id]
		      ,[ParentId]
		      ,[Name]
		      ,[has_child]
		from [Child_question_types]
end


