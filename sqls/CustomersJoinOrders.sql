-- - Table : Customers, Orders
-- - 조건 : CustomerName별로 주문 갯수 표시
-- - 연결 키는 각자 찾기
-- ref: https://www.w3schools.com/sql/trysql.asp?filename=trysql_select_join

SELECT Customers_S.*, COUNT(Customers_S.CustomerName), Orders_S.OrderID, Orders_S.EmployeeID, Orders_S.OrderDate, Orders_S.ShipperID
FROM Customers as Customers_S
INNER JOIN Orders as Orders_S
ON Customers_S.CustomerID = Orders_S.CustomerID
GROUP BY Customers_S.CustomerName
ORDER BY Customers_S.CustomerID;

-- Number of Records: 74
