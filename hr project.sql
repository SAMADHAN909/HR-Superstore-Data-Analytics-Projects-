CREATE TABLE hr (
Age numeric,
Attrition text,
BusinessTravel text,
DailyRate numeric,
Department text,
DistanceFromHome numeric,
Education numeric,
EducationField  text,
EmployeeCount numeric,
EmployeeNumber numeric,
EnvironmentSatisfaction numeric,
Gender  text,
HourlyRate  numeric,
JobInvolvement  numeric,
JobLevel  numeric,
JobRole text,
JobSatisfaction  numeric,
MaritalStatus text,
MonthlyIncome numeric,
MonthlyRate numeric,
NumCompaniesWorked  numeric,
Over18  text,
OverTime  text,
PercentSalaryHike  numeric,
PerformanceRating  numeric,
RelationshipSatisfaction numeric,
StandardHours numeric, 
StockOptionLevel  numeric,
TotalWorkingYears numeric,
TrainingTimesLastYear numeric,
WorkLifeBalance numeric,
YearsAtCompany numeric,
YearsInCurrentRole numeric,
YearsSinceLastPromotion numeric,
YearsWithCurrManager numeric

)

SELECT * FROM hr

SELECT
ROUND(
SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END)*100.0
/COUNT(*),2) AS Attrition_Rate
FROM hr;



SELECT Department,
COUNT(*) Total,
SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END) Attrition_Count
FROM hr
GROUP BY Department;


