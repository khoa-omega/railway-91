-- Mệnh đề JOIN: Kết hợp bảng
-- INNER JOIN
-- VD: Lấy ra nhân viên thuộc phòng ban "Giám đốc"
SELECT a.*
FROM account AS a
INNER JOIN department AS d ON a.department_id = d.department_id
WHERE department_name = "Giám đốc";
-- Từ khóa USING
-- VD: Lấy ra nhân viên thuộc phòng ban "Giám đốc"
SELECT account.*
FROM account
INNER JOIN department USING (department_id)
WHERE department_name = "Giám đốc";

-- LEFT / RIGHT JOIN
-- VD: Thống kê số nhân viên trong mỗi phòng ban
SELECT department.*, COUNT(account_id)
FROM department
LEFT JOIN account USING (department_id)
GROUP BY department_id;

-- LEFT / RIGHT EXCLUDING JOIN
-- VD: Lấy ra phòng ban không có người
SELECT department.*
FROM department
LEFT JOIN account USING (department_id)
WHERE account_id IS NULL;







