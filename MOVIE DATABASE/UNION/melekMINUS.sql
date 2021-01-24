SELECT S.CODE FROM movýe M left JOIN spoken_languages S ON m.spoken_language_code=s.code
MINUS
SELECT  S.CODE FROM spoken_languages S left JOIN movýe M ON m.spoken_language_code=s.code

----Üstte yazýlan kodun doðruluðu için kullanýlabilir











