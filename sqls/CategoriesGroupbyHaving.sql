--  CategoryID 가 10개 이상

SELECT *, COUNT(CategoryID) as CategoryCount
FROM Products as Products_A
GROUP BY Products_A.CategoryID -- CategoryID로 그룹화
HAVING COUNT(CategoryID) >= 10;

-- Number of Records: 5