SELECT m.fýlm_ýd,c.ýd,m.name,c.name_ FROM MOVIE m
JOIN COMPANY C ON m.company_ýd = c.ýd
unýon 
SELECT m.fýlm_ýd,c.ýd,m.name,c.name_ FROM company c
JOIN movýe m ON c.ýd = m.company_ýd;
