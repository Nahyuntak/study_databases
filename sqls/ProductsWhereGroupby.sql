--  CategoryID 가 10개 이상

SELECT *, COUNT(CategoryID) as CategoryCount
FROM Products as Products_A
GROUP BY Products_A.CategoryID
HAVING COUNT(CategoryID) >= 10;

-- Number of Records: 5