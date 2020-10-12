CREATE TRIGGER T3
	ON 活动人员名单 FOR UPDATE
	AS
	BEGIN
	    IF(UPDATE(工时))
		UPDATE  学生
		SET 学生.总工时=学生.总工时-D.工时+I.工时
		FROM deleted D,inserted I
		WHERE 学生.学号=D.学号
	END;