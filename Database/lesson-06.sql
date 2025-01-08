-- STORED PROCEDURE: Thủ tục lưu trữ
-- VD: Tạo thủ tục tìm kiếm phòng ban theo id

-- Xóa thủ tục nếu tồn tại
DROP PROCEDURE IF EXISTS sp_01;

-- Tạo thủ tục
DELIMITER $$
CREATE PROCEDURE sp_01 (IN in_department_id INT)
BEGIN
    SELECT *
    FROM department
    WHERE department_id = in_department_id;
END $$
DELIMITER ;

-- Gọi thủ tục
CALL sp_01(8);

-- VD: Tạo thủ tục lấy ra tất cả developer
DROP PROCEDURE IF EXISTS sp_02;
DELIMITER $$
CREATE PROCEDURE sp_02 ()
BEGIN
    DECLARE v_position_id INT;
    
    SELECT position_id INTO v_position_id
    FROM position
    WHERE position_name = "Dev";

    SELECT *
    FROM account
    WHERE position_id = v_position_id;
END $$
DELIMITER ;

CALL sp_02();













