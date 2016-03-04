#!/bin/bash
d='d'
for i in {1..700}; do
  future=$(date -v +"$i$d")
  future=${future//$'\n'/}
  echo $future >> time-travel.txt
  git commit --date "$future" -am 'into the future'
done

