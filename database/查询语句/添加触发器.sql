CREATE TRIGGER T1
	ON 活动人员名单 FOR DELETE
	AS
	BEGIN
		UPDATE  学生
		SET 学生.总工时-=D.工时
		FROM deleted D
		WHERE 学生.学号=D.学号
	END;

