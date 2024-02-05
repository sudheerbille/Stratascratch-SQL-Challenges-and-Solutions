Question:

Find how the survivors are distributed by the gender and passenger classes.
Classes are categorized based on the pclass value as:
pclass = 1: first_class
pclass = 2: second_classs
pclass = 3: third_class
Output the sex along with the corresponding number of survivors for each class.
HINT: each sex should be in the separate line with one column having the value of that sex and other 3 columns having number of survivors for each 3 classes.

Solution:

SELECT SEX,
       COUNT(CASE WHEN PCLASS IN (1) THEN 1 END) AS FIRST_CLASS,
       COUNT(CASE WHEN PCLASS IN (2) THEN 1 END) AS SECOND_CLASS,
       COUNT(CASE WHEN PCLASS IN (3) THEN 1 END) AS THIRD_CLASS
FROM titanic
GROUP BY 1;
