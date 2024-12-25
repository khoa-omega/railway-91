-- Mệnh đề SELECT
-- VD: Lấy ra ngày hôm nay
SELECT CURRENT_DATE;
-- VD: Lấy ra PI, 1 + 2
SELECT PI(), 1 + 2;
-- VD: Alias
SELECT "MySQL" AS "Database";

-- Mệnh đề FROM
-- VD: Lấy ra tất cả mã đề thi
SELECT code
FROM exam;
-- VD: Lấy ra tất cả câu hỏi
SELECT *
FROM question;
-- VD: Lấy ra tất cả thời gian thi (không trùng nhau)
SELECT DISTINCT duration
FROM exam;

-- Mệnh đề WHERE
-- Toán tử: >, >=, <, <=, =, != (<>)
-- VD: Lấy ra account có id > 5
SELECT *
FROM account
WHERE account_id > 5;











