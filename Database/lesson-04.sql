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

-- CROSS JOIN
-- VD:
SELECT *
FROM department
CROSS JOIN position;

-- UNION / UNION ALL
-- VD: Lấy ra phòng ban hoặc chức vụ có chứa kí tự "d"
SELECT department_id AS id, department_name AS name
FROM department
WHERE department_name LIKE "%d%"
UNION
SELECT position_id AS id, position_name AS name
FROM position
WHERE position_name LIKE "%d%";
-- VD:
SELECT 1 AS month
UNION ALL
SELECT 1 AS month;

-- INTERSECT: Giao 2 tập hợp
SELECT 1 AS month
INTERSECT
SELECT 2 AS month;

-- EXCEPT: Trừ 2 tập hợp
SELECT 1 AS month
EXCEPT
SELECT 2 AS month;
