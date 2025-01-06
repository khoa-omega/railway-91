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

-- VD: Lấy ra câu hỏi có nhiều câu trả lời nhất
SELECT question.*
FROM answer
RIGHT JOIN question USING (question_id)
GROUP BY question_id
HAVING COUNT(answer_id) =
    (SELECT MAX(answer_count)
    FROM
        (SELECT COUNT(answer_id) AS answer_count
        FROM answer
        RIGHT JOIN question USING (question_id)
        GROUP BY question_id) AS t);

-- VIEW: Bảng ảo
-- VD: Tạo view chứa tất cả phòng ban
DROP VIEW IF EXISTS view_01;

CREATE OR REPLACE VIEW view_01 AS
SELECT *
FROM department;

-- Sử dụng view
SELECT *
FROM view_01;

-- CTE: Bảng tạm
-- VD: Lấy ra câu hỏi có nhiều câu trả lời nhất
WITH c1 AS (
    SELECT question.*, COUNT(answer_id) AS answer_count
    FROM answer
    RIGHT JOIN question USING (question_id)
    GROUP BY question_id
)
SELECT *
FROM c1
WHERE answer_count =
    (SELECT MAX(answer_count)
    FROM c1);















