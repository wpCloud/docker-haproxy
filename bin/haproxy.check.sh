#!/usr/bin/env bash

## Make sure endpoint is up.
if [ $(/usr/bin/curl --max-time 10 --silent --output /dev/null -w "%{http_code}" http://xadministrator:qydyuqboxqqpordu@0.0.0.0:80/api/stats/v1) == 200 ]; then
  echo -e "[ \e[1;32mok\e[0m ] HAProxy is okay."
else
  echo -e "[ \e[1;31mok\e[0m ] HAProxy is is broken."
  __FAIL=false;
fi

if [ ! -d $__FAIL ]; then
  exit 1;
fi;
