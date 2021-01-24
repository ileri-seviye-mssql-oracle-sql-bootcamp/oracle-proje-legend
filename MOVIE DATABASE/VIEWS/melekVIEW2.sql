CREATE VIEW VW_MAX_BUDGET_FILM2
AS SELECT  s.genre_ýd FROM MOVIE M 
CROSS APPLY
(SELECT  m.genre_ýd,
AVG(M.BUDGET)
FROM MOVIE M INNER JOIN GENRES G 
ON M.GENRE_ID=g.ýd
WHERE M.BUDGET = (SELECT MAX(BUDGET) FROM MOVIE)
GROUP BY m.genre_ýd)S;

SELECT  *
FROM vw_max_budget_fýlm2 WHERE ROWNUM=1---mutlaka çaðrýldýðýnda bu formatta çaðrýlmalý.
