select m.FILM_ID,CC.CAST_ID,CC.NAME_,CC.CHARACTER_ from cast_credýt cc
FULL OUTER JOIN MOVIE M ON cc.fýlm_ýd = m.fýlm_ýd
UNION 
select m.FILM_ID,CC.CAST_ID,CC.NAME_,CC.CHARACTER_  from MOVIE m
FULL OUTER JOIN cast_credýt cc ON m.fýlm_ýd = cc.fýlm_ýd