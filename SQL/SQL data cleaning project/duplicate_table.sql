-- Data cleaning
SELECT *
FROM layoffs;

SELECT company, total_laid_off ttl
FROM layoffs
WHERE total_laid_off >= 500;

-- Clean the data by:
# 1)Remove duplicates inthe data
#2)Standadize the data
#3)Remove null values and blanks
#4)Remove unnecessary columns and rows

#create a copy of our layoff data
CREATE TABLE layoffs_staging
LIKE layoffs;

SELECT *
FROM layoffs_staging;

#insert the data into the columns
INSERT layoffs_staging
SELECT *
FROM layoffs;

 