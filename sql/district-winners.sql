with early_history as (
  SELECT v02 as state,
         v05 as year,
         v06 as month,
         v07 as branch,
         (v10a*100)+v10b+(v10c*10000)+v10d as v10,
         concat(v08, v09, v10) as combined,
         count(*) as num_winners
  FROM elections_1967_2010
  WHERE v05 >= 1990
      AND v24 = 't'
      AND v02 = 'WV'
  GROUP BY 1,
           2,
           3,
           4,
           5
  ORDER BY 6 DESC
),
late_history as (
  SELECT v02 as state,
         v05 as year,
         v06 as month,
         v07 as branch,
         concat(v08, v09, v10) as combined,
         count(*) as num_winners
  FROM elections_2011_2012
  WHERE v05 >= 1990
      AND v24 = 't'
      AND v02 = 'WV'
  GROUP BY 1,
           2,
           3,
           4,
           5
  ORDER BY 6 DESC
)


select * from early_history;
