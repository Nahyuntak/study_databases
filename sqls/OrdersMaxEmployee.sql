-- - Table : Orders
-- - 조건 : 가장 많이 주문 받은 회사 직원이름과 갯수

-- 1) 첫번째 방법
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

-- 2) 두번째 방법
SELECT Employees_C.LastName, Employees_C.FirstName, MAX(Orders_D.COUNT_ID) as MAX_COUNT
FROM Employees as Employees_C
INNER JOIN (SELECT Orders_C.EmployeeID, COUNT(Orders_C.EmployeeID) as COUNT_ID
FROM Orders as Orders_C
GROUP BY Orders_C.EmployeeID) as Orders_D
ON Employees_C.EmployeeID = Orders_D.EmployeeID;

-- Number of Records: 1
-- LastName	FirstName	MAX_COUNT
-- Peacock	Margaret	40