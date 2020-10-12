
CREATE TRIGGER T2
	ON 活动人员名单 FOR INSERT
	AS
	BEGIN
		UPDATE  学生
		SET 学生.总工时+=I.工时
		FROM deleted D,inserted I
		WHERE 学生.学号=i.学号
	END;