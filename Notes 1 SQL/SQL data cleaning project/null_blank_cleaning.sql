-- Removing null and blank values
SELECT *
FROM layoffs_staging2;

#now lets look at the nulls in a column
SELECT *
FROM layoffs_staging2
WHERE total_laid_off IS NULL;    #inorder to look at the null we use the null keyword

#check two columns with nulls in column
SELECT *
FROM layoffs_staging2
WHERE total_laid_off IS NULL
AND percentage_laid_off IS NULL
;  

UPDATE layoffs_staging2
SET industry=NULL
WHERE industry=''
;

#lets look at industry column also we had missing values and null
SELECT *
FROM layoffs_staging2
WHERE industry IS NULL
OR industry = '';

#lets try and populate a blank field 
#check first
select *
FROM layoffs_staging2
WHERE company='Airbnb';
#inthe above we know th blank of the industry should be 'Travel'

#lets update the blank of Airbnb
#use this query below to discover what the blanks maybe inthe table inorder to populate them
SELECT t1.industry, t2.industry
FROM layoffs_staging2 AS t1
JOIN layoffs_staging2 AS t2
	ON t1.company=t2.company
    AND t1.location=t2.location
WHERE (t1.industry IS NULL OR t1.industry = '')
AND t2.industry IS NOT NULL
;

#now write the update statement
UPDATE layoffs_staging2 AS t1
JOIN layoffs_staging2 AS t2
	ON t1.company=t2.company
SET t1.industry=t2.industry
WHERE t1.industry IS NULL
AND t2.industry IS NOT NULL
;

#look at bally's row has a null
select *
FROM layoffs_staging2
WHERE company LIKE 'bally%';

select *
from layoffs_staging2;

-- NOTE
#when we dont have information to perform a calculation we should leave it at null but not blank