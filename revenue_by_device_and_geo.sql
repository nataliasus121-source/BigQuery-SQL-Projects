with revenue_data AS
(
SELECT sp.continent,
       sum (p.price) as revenue,
       sum (case when sp.device = 'mobile'then p.price end) as revenue_from_mobile,
       sum (case when sp.device = 'desktop'then p.price end) as revenue_from_desktop,
       sum (sum(p.price)) OVER () as revenue_total
FROM `DA.order`  o
join `DA.product` p
on o.item_id=p.item_id
join `DA.session_params` sp
on o.ga_session_id=sp.ga_session_id
group by sp.continent),


account_data AS
(
  SELECT
      sp.continent,
      count (distinct acc.id) as account_count,
      count (case when acc.is_verified=1 then acc.id end) as verified_account
  FROM `DA.account` acc
  join `DA.account_session` acs
  on acc.id=acs.account_id
  join `DA.session_params`  sp
  on acs.ga_session_id=sp.ga_session_id
group by sp.continent
),


session_data AS
(
select
    sp.continent,
    count (distinct ss.ga_session_id) as ssession_count,
FROM `DA.session` ss
join `DA.session_params` sp
on ss.ga_session_id=sp.ga_session_id
group by sp.continent
),
 
 final AS
 ( SELECT
     continent,
     revenue,
     revenue_from_mobile,
     revenue_from_desktop,
     revenue_total,
     0 as account_count,
     0 as verified_account,
     0 as ssession_count
 FROM revenue_data
 UNION ALL
 SELECT
     continent,
     0 as revenue,
     0 as revenue_from_mobile,
     0 as revenue_from_desktop,
     0 as revenue_total,
     account_count,
     verified_account,
     0 as ssession_count
 FROM account_data
UNION ALL
SELECT
     continent,
     0 as revenue,
     0 as revenue_from_mobile,
     0 as revenue_from_desktop,
     0 as revenue_total,
     0 as account_count,
     0 as verified_account,
     ssession_count
FROM session_data
 )


SELECT
     continent,
     sum (revenue) as revenue,
     sum (revenue_from_mobile) as revenue_from_mobile,
     sum (revenue_from_desktop) as revenue_from_desktop,
     sum (revenue)/sum (revenue_total)*100 as revenue_persent_from_total,
     sum (account_count) as account_count,
     sum (verified_account) as verified_account,
     sum (ssession_count) as ssession_count
FROM final
group by continent
order by continent
