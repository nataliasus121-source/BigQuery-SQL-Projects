SELECT
  DISTINCT id_account,
  sent_month,
  SUM(sent_mes) OVER (PARTITION BY sent_month, id_account) * 100.0 /
  SUM(sent_mes) OVER (PARTITION BY sent_month) AS sent_msg_percent_from_this_month,
  MIN(sent_date) OVER (PARTITION BY sent_month, id_account) AS first_sent_date,
  MAX(sent_date) OVER (PARTITION BY sent_month, id_account) AS last_sent_date
FROM (
  SELECT
    acs.account_id AS id_account,
    DATE_ADD(s.date, INTERVAL es.sent_date DAY) AS sent_date,
    DATE_TRUNC(DATE_ADD(s.date, INTERVAL es.sent_date DAY), MONTH) AS sent_month,
    COUNT(es.id_message) AS sent_mes
  FROM `DA.email_sent` es
  JOIN `DA.account_session` acs ON es.id_account = acs.account_id
  JOIN `DA.session` s ON acs.ga_session_id = s.ga_session_id
  GROUP BY id_account, sent_month, sent_date
) mes_per_day
ORDER BY sent_month DESC, id_account
