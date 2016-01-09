-- Openstates lists New Hampshire's lower district ids as COUNTY_NAME #.  This doesn't
-- match the format the US Census Bureau uses, which is a digit.  This converts the
-- census name to the openstates data district format and then assigns the id to the
-- district as it is defined by the US census.
-- tl;dr - set openstates district to match district assigned by us census
with normalized_district_names as (
  select
    sldlst,
    substring(namelsad, '([0-9a-z]+\s[a-zA-Z]+) District') as normalized_name,
    namelsad
  from house_districts
  where statefp = '25' and
  sldlst != 'ZZZ' and
  namelsad != 'Barnstable, Dukes & Nantucket District'

  -- Because this one is special
  union select
    sldlst,
    namelsad as normalized_name,
    namelsad
  from house_districts
  where statefp = '25' and
  namelsad = 'Barnstable, Dukes & Nantucket District'
)

update openstates_data
  set district = sldlst
  from normalized_district_names
  where district = normalized_name
  and state_abbr = 'ma'
  and chamber = 'lower';
