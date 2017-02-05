SELECT v02 as state,
       v05 as year,
       v06 as month,
       v07 as branch,
       v11 as district,
       count(*) as num_winners
FROM elections
WHERE v05 >= 1990
    AND v24 = 't'
    AND v02 = 'WV'
GROUP BY 1,
         2,
         3,
         4,
         5
ORDER BY 6 DESC
