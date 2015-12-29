-- Openstates lists New Hampshire's lower district ids as COUNTY_NAME #.  This doesn't
-- match the format the US Census Bureau uses, which is a digit.  This converts the
-- census name to the openstates data district format and then assigns the id to the
-- district as it is defined by the US census.
-- tl;dr - set openstates district to match district assigned by us census
with normalized_district_names as (
  select
    sldlst,
    concat_ws(' ',
      substring(namelsad, '([a-zA-Z]+) County'),
      substring(namelsad, 'No. ([0-9]+)')) as normalized_name
  from house_districts
  where statefp = '33'
)

update openstates_data
  set district = sldlst
  from normalized_district_names
  where district = normalized_name;
