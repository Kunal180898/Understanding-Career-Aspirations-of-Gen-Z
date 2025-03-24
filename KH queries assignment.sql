use kulturehire;

-- 1. What industries are Gen-Z most interested in pursuing careers in?

SELECT 
    Aspirations AS interested_careers,
    COUNT(Timestamp) AS number_of_GenZ_Candidates
FROM
    khsqlit
GROUP BY Aspirations
ORDER BY COUNT(Timestamp) DESC;


-- 2. What are the top factors influencing Gen-Z’s career choices?

-- As per career aspiration
SELECT 
    Career_Aspirations AS influencing_factors,
    COUNT(Timestamp) AS number_of_GenZ_Candidates
FROM
    khsqlit
GROUP BY Career_Aspirations
ORDER BY COUNT(Timestamp) DESC;

-- As per Employer choice
SELECT 
    Employers_Choice AS Employers_Choice,
    COUNT(Timestamp) AS number_of_GenZ_Candidates
FROM
    khsqlit
GROUP BY Employers_Choice
ORDER BY COUNT(Timestamp) DESC;


-- 3. . What is the desired work environment for Gen-Z? (e.g., remote, hybrid, in-office)

SELECT 
    Working_Environment AS Working_Environment,
    COUNT(Timestamp) AS number_of_GenZ_Candidates
FROM
    khsqlit
GROUP BY Working_Environment
ORDER BY COUNT(Timestamp) DESC;


-- 4. How do financial goals, such as salary and benefits, impact career aspirations among Gen-Z?

SELECT 
    Start_Min_Salary AS Salery_expectations,
    COUNT(Timestamp) AS number_of_GenZ_Candidates
FROM
    khsqlit
GROUP BY Start_Min_Salary
ORDER BY COUNT(Timestamp) DESC;


-- 5. What role do personal values and social impact play in career choices for Gen-Z?

-- As per mission policy
SELECT 
    Mission_Policy AS Career_aligned_with_company_mission,
    COUNT(Timestamp) AS number_of_GenZ_Candidates
FROM
    khsqlit
GROUP BY Mission_Policy
ORDER BY COUNT(Timestamp) DESC;

-- As per social impact
SELECT 
    Ratings_for_Social_Impact AS Social_impact_rating,
    COUNT(Timestamp) AS number_of_GenZ_Candidates
FROM
    khsqlit
GROUP BY Ratings_for_Social_Impact
ORDER BY Ratings_for_Social_Impact;
