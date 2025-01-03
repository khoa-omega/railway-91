-- SUBQUERY: Truy vấn con
-- VD: Lấy ra nhân viên thuộc phòng ban "Giám đốc"
SELECT *
FROM account
WHERE department_id =
    (SELECT department_id
    FROM department
    WHERE department_name = "Giám đốc");

-- Toán tử: IN, ANY, ALL, EXISTS
-- VD: Lấy ra phòng ban của nhân viên họ "Nguyễn"
SELECT *
FROM department
WHERE department_id = ANY
    (SELECT DISTINCT department_id
    FROM account
    WHERE full_name LIKE "Nguyễn%");
