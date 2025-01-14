-- count number of athletes from each country
SELECT Country, Count(*) as Total_Athletes
 FROM [TokyoOlympicDB].[dbo].[athletes] 
 GROUP BY Country
 ORDER BY Total_Athletes DESC

-- Calculate total number of medals won by each country

SELECT TeamCountry, SUM(Gold) as Gold_Medals, SUM(Silver) as Silver_Medals, SUM(Bronze) as Bronze_Medals
from medals
GROUP BY TeamCountry
ORDER BY Gold_Medals DESC

--- Calculate the average number of entries by Gender for each discipline.

SELECT Discipline , AVG(Female) Avg_Female, AVG(Male) Avg_Male
from entriesgender
GROUP BY Discipline