select leg_id as id,
       od.full_name,
       party,
       sldlst,
       district,
       geom
from house_districts hd
inner join openstates_data od
  on od.district = hd.sldlst
  and od.state_fips = hd.statefp
  and chamber = 'lower'
  and active;
