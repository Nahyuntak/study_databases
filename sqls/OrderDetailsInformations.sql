
select OrderDetailsInformations.CustomerName, OrderDetailsInformations.ProductName, OrderDetailsInformations.Price, count(OrderDetailsInformations.ProductID) as Product_n
from (select Customers_copy.*, products.ProductName, products.Price
from (Select Customers.CustomerName, Orders_copy.* 
from (SELECT Orders.CustomerID, OrderDetails.*
FROM OrderDetails
inner join Orders 
on Orders.OrderID = OrderDetails.OrderID) as Orders_copy
inner join Customers
on Orders_copy.CustomerID = Customers.CustomerID) as Customers_copy
inner join products
on Customers_copy.ProductID = products.ProductID) as OrderDetailsInformations
group by OrderDetailsInformations.ProductID

-- Result:
-- Number of Records: 77
-- CustomerName	ProductName	Price	Product_n
-- QUICK-Stop	Chais	18	8
-- Richter Supermarkt	Chang	19	11
-- B's Beverages	Aniseed Syrup	10	2
-- Hungry Owl All-Night Grocers	Chef Anton's Cajun Seasoning	22	5
-- Ernst Handel	Chef Anton's Gumbo Mix	21.35	4
-- Hungry Owl All-Night Grocers	Grandma's Boysenberry Spread	25	2
-- Rattlesnake Canyon Grocery	Uncle Bob's Organic Dried Pears	30	2
-- White Clover Markets	Northwoods Cranberry Sauce	40	2
-- Wellington Importadora	Mishi Kobe Niku	97	1
-- QUICK-Stop	Ikura	31	4
-- Wilman Kala	Queso Cabrales	21	9
-- Wartian Herkku	Queso Manchego La Pastora	38	2
-- Tortuga Restaurante	Konbu	6	7
-- Tradição Hipermercados	Tofu	23.25	8
-- LILA-Supermercado	Genen Shouyu	15.5	2
-- Richter Supermarkt	Pavlova	17.45	10
-- Blondel père et fils	Alice Mutton	39	11
-- Tortuga Restaurante	Carnarvon Tigers	62.5	5
-- Romero y tomillo	Teatime Chocolate Biscuits	9.2	9
-- Suprêmes délices	Sir Rodney's Marmalade	81	5
-- Centro comercial Moctezuma	Sir Rodney's Scones	10	8
-- Victuailles en stock	Gustaf's Knäckebröd	21	2
-- Frankenversand	Tunnbröd	9	4
-- Chop-suey Chinese	Guaraná Fantástica	4.5	11
-- Königlich Essen	NuNuCa Nuß-Nougat-Creme	14	4
-- LILA-Supermercado	Gumbär Gummibärchen	31.23	8
-- HILARIÓN-Abastos	Schoggi Schokolade	43.9	3
-- Morgenstern Gesundkost	Rössle Sauerkraut	45.6	10
-- GROSELLA-Restaurante	Thüringer Rostbratwurst	123.79	9
-- Ernst Handel	Nord-Ost Matjeshering	25.89	8
-- Hanari Carnes	Gorgonzola Telino	12.5	14
-- Ernst Handel	Mascarpone Fabioli	32	3
-- Suprêmes délices	Geitost	2.5	9
-- Ricardo Adocicados	Sasquatch Ale	14	6
-- Que Delícia	Steeleye Stout	18	9
-- Richter Supermarkt	Inlagd Sill	19	9
-- Centro comercial Moctezuma	Gravad lax	26	3
-- Split Rail Beer & Ale	Côte de Blaye	263.5	7
-- Hanari Carnes	Chartreuse verte	18	8
-- Frankenversand	Boston Crab Meat	18.4	8
-- Hanari Carnes	Jack's New England Clam Chowder	9.65	9
-- Wilman Kala	Singaporean Hokkien Fried Mee	14	6
-- Wartian Herkku	Ipoh Coffee	46	6
-- Berglunds snabbköp	Gula Malacca	19.45	5
-- Seven Seas Imports	Røgede sild	9.5	1
-- Ricardo Adocicados	Spegesild	12	7
-- Mère Paillarde	Zaanse koeken	9.5	3
-- Ernst Handel	Chocolade	12.75	1
-- Hanari Carnes	Maxilaku	20	6
-- La maison d'Asie	Valkoinen suklaa	16.25	3
-- Tradição Hipermercados	Manjimup Dried Apples	53	6
-- Pericles Comidas clásicas	Filo Mix	7	3
-- Wellington Importadora	Perth Pasties	32.8	10
-- Reggiani Caseifici	Tourtière	7.45	12
-- Chop-suey Chinese	Pâté chinois	24	7
-- Rattlesnake Canyon Grocery	Gnocchi di nonna Alice	38	12
-- Victuailles en stock	Ravioli Angelo	19.5	8
-- Rattlesnake Canyon Grocery	Escargots de Bourgogne	13.25	4
-- Richter Supermarkt	Raclette Courdavault	55	14
-- Suprêmes délices	Camembert Pierrot	34	12
-- QUICK-Stop	Sirop d'érable	28.5	2
-- Old World Delicatessen	Tarte au sucre	49.3	13
-- Berglunds snabbköp	Vegie-spread	43.9	6
-- B's Beverages	Wimmers gute Semmelknödel	33.25	7
-- Hanari Carnes	Louisiana Fiery Hot Pepper Sauce	21.05	9
-- Magazzini Alimentari Riuniti	Louisiana Hot Spiced Okra	17	2
-- Lehmanns Marktstand	Laughing Lumberjack Lager	14	1
-- Reggiani Caseifici	Scottish Longbreads	12.5	11
-- LILA-Supermercado	Gudbrandsdalsost	36	10
-- Old World Delicatessen	Outback Lager	15	8
-- Vins et alcools Chevalier	Fløtemysost	21.5	13
-- Wilman Kala	Mozzarella di Giovanni	34.8	14
-- Berglunds snabbköp	Röd Kaviar	15	2
-- Chop-suey Chinese	Longlife Tofu	10	7
-- Berglunds snabbköp	Rhönbräu Klosterbier	7.75	8
-- Frankenversand	Lakkalikööri	18	10
-- Wellington Importadora	Original Frankfurter grüne Soße	13	8


