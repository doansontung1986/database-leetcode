1. Find Customer Referee (https://leetcode.com/problems/find-customer-referee/description/)
# Write your MySQL query statement below
SELECT name FROM Customer
WHERE referee_id != 2 OR referee_id IS NULL;

2. Recyclable and Low Fat Products (https://leetcode.com/problems/recyclable-and-low-fat-products/)
# Write your MySQL query statement below
SELECT product_id FROM Products
WHERE low_fats = 'Y' AND recyclable = 'Y';

3. Invalid Tweets (https://leetcode.com/problems/invalid-tweets/description/)
# Write your MySQL query statement below
SELECT tweet_id FROM Tweets
WHERE length(content) > 15;

4. Employee Bonus (https://leetcode.com/problems/employee-bonus/description/)
# Write your MySQL query statement below
SELECT e.name, b.bonus
FROM Employee e
LEFT JOIN Bonus b
ON e.empId = b.empId
WHERE b.bonus < 1000 OR b.bonus IS NULL;

5. Employees With Missing Information (https://leetcode.com/problems/employees-with-missing-information/description/)
# Write your MySQL query statement below
SELECT employee_id
FROM (
    SELECT s.employee_id
    FROM Employees e
    RIGHT JOIN Salaries s
    ON e.employee_id = s.employee_id
    WHERE e.name IS NULL
    UNION
    SELECT e.employee_id
    FROM Employees e
    LEFT JOIN Salaries s
    ON e.employee_id = s.employee_id
    WHERE s.salary IS NULL
) as result
ORDER BY employee_id;