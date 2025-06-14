-- Remove columns and rows

SELECT *
FROM layoffs_staging2
WHERE total_laid_off IS NULL
AND percentage_laid_off IS NULL
;  

#lets delete the rows where we had nulls in two rows
DELETE
FROM layoffs_staging2
WHERE total_laid_off IS NULL
AND percentage_laid_off IS NULL
;

#now lets display the whole updated table
SELECT *
FROM layoffs_staging2;

#lets get rid of a row_num. This is how to delete a column
ALTER TABLE layoffs_staging2
DROP COLUMN row_num;