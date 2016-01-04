-- Vermont
with normalized_district_names as (
  select
    sldlst,
    replace(namelsad, ' State House District', '') as normalized_name
  from house_districts
  where statefp = '50'
)

update openstates_data
  set district = sldlst
  from normalized_district_names
  -- What's a few more different variations
  where district = case when normalized_name = 'Grand-Isle-Chittenden' then 'Grand Isle-Chittenden' else normalized_name end and
  state = 'vt' and
  chamber = 'lower';
