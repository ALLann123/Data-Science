-- standadizing data
#refers to finding issues in our data and then fixing it
#LOOK at all columns individually

SELECT *
FROM layoffs_staging2;

#select one column only
SELECT DISTINCT(company)
FROM layoffs_staging2;

#lets remove the spaces at the begining and end using trim()
SELECT company, TRIM(company)
FROM layoffs_staging2;

#now implement the above onthe table
UPDATE layoffs_staging2
SET company=TRIM(company);

#set it to only distinct values and in descending order to identify white spaces
SELECT DISTINCT industry
FROM layoffs_staging2
ORDER BY 1;

#looking the word that means the same as crypto i.e crypto_cur
SELECT *
FROM layoffs_staging2
WHERE industry LIKE 'Crypto%'    #LIKE IS USED to search for specified pattern in a column
;

#lets update all of them to be crypto
UPDATE layoffs_staging2
SET industry = 'Crypto'
WHERE industry LIKE 'Crypto%'
;

#now lets see the unique values for the industry
SELECT DISTINCT(industry)
FROM layoffs_staging2
ORDER BY 1;

-- lets check location for issues
SELECT DISTINCT(location)
FROM layoffs_staging2
order by 1;

-- lets check country
SELECT DISTINCT(country)
FROM layoffs_staging2
order by 1;

#lets correct the issue, do a trim of the fullstop
SELECT DISTINCT(country), trim(TRAILING '.' FROM country)
FROM layoffs_staging2;


UPDATE layoffs_staging2
SET country= trim(TRAILING '.' FROM country)
WHERE country LIKE 'United states%'
;

#confirm the updated changes
SELECT DISTINCT(country)
FROM layoffs_staging2
WHERE country LIKE 'United states%'
;