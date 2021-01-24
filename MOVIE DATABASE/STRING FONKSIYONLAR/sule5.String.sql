
-------------------------------------STRING/CONCAT
SELECT
  NAME  || ' - '  || ORIGINAL_LANGUAGE
FROM
  MOVIE;

-------------------------------------STRING/CHR
  SELECT
  NAME  || ' - '  || ORIGINAL_LANGUAGE  || 
  CHR( 9 )  || ' RELEASE DATE '  || CHR( 9 )  || 
  to_char(RELEASE_DATE,'DD-MON-YYYY') first_5_movies
FROM
  MOVIE
ORDER BY
  RELEASE_DATE
FETCH
  FIRST 5 ROWS ONLY;

-------------------------------------STRING/DUMP

  
SELECT 
    DEPARTMENT_NAME, 
    DUMP(DEPARTMENT_NAME) result
FROM 
    DEPARTMENT
ORDER BY 
    DEPARTMENT_NAME;

-------------------------------------STRING/LENGTH

SELECT
  NAME_,
  CASE
    WHEN LENGTH( CHARACTER_ ) > 5 THEN CONCAT( SUBSTR( CHARACTER_,
      1, 5 ), '...' )
    ELSE CHARACTER_
  END NAME_expert
FROM
  CAST_CREDIT
ORDER BY
  NAME_;

-------------------------------------STRING/REGEXP_LIKE

SELECT
  DEPARTMENT_NAME,JOB
FROM
  JOBS
WHERE
  REGEXP_LIKE( DEPARTMENT_NAME, 'Costume & Make-Up' )
ORDER BY DEPARTMENT_NAME;

