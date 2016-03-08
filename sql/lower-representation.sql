with lower_affiliation as (
  select
    state,
    case
      when lower(party) in ('democrat', 'democratic', 'progressive/democratic', 'democratic-farmer-labor', 'progressive', 'working families') then 'democrat'
      when lower(party) = 'republican' then 'republican'
      else 'other'
    end as party
  from house_districts hd
  left outer join openstates_data od
    on od.district = hd.sldlst
    and od.state_fips = hd.statefp
    and chamber = 'lower'
  where
    sldlst != 'ZZZ' -- water/border region;
    and active
  order by state
),
state_totals as (
  select
    state,
    count(*) as total,
    sum(case when party = 'democrat' then 1 else 0 end) as total_democrats,
    sum(case when party = 'republican' then 1 else 0 end) as total_republicans,
    sum(case when party = 'other' then 1 else 0 end) as total_other
  from lower_affiliation
  group by 1
)

select *,
  round(100 * total_democrats::numeric / total, 2) as percent_democrat,
  round(100 * total_republicans::numeric / total, 2) as percent_republican,
  round(100 * total_other::numeric / total, 2) as percent_other
from state_totals
order by percent_democrat desc;
