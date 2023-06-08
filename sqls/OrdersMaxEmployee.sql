-- - Table : Orders
-- - 조건 : 가장 많이 주문 받은 회사 직원이름과 갯수

SELECT MAX(OrdersMaxEmployee.COUNT_ID) AS MAX_OrdersMaxEmployee, OrdersMaxEmployee.NAME 
FROM (SELECT Orders_S.EmployeeID, COUNT(Orders_S.EmployeeID) AS COUNT_ID, Employees_S.LastName AS NAME 
FROM Orders AS Orders_S
INNER JOIN Employees AS Employees_S
ON Orders_S.EmployeeID = Employees_S.EmployeeID
GROUP BY Employees_S.EmployeeID
) AS OrdersMaxEmployee;

-- Result:
-- Number of Records: 1
-- MAX_OrdersMaxEmployee	NAME
-- 40	                    Peacock