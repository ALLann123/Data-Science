-- dates changing its variable type
#lets look at the date

SELECT `date`
FROM layoffs_staging2;

#lets  convert the string to date
SELECT `date`,
str_to_date(`date`, '%m/%d/%Y') AS updated_date
FROM layoffs_staging2;

#now lets update our table 
UPDATE layoffs_staging2
SET `date` = str_to_date(`date`, '%m/%d/%Y');

#lets confirm the change
SELECT *
FROM layoffs_staging2;

#now we can change the dates data type. Never do this on the original table
ALTER TABLE layoffs_staging2
MODIFY `date` DATE;