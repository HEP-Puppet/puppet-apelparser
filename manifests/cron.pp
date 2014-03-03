class apelparser::cron (
  $cron_minutes = 35,
  $cron_hours   = 1,) {
  cron { apelparser:
    command => "/usr/bin/apelparser >> /var/log/apelparser.log 2>&1",
    user    => root,
    hour    => $cron_hours,
    minute  => $cron_minutes,
  }
}
