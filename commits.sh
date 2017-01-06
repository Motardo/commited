#!/bin/sh
i=1000
while
  [ $i -gt 0 ]
do
  </dev/urandom tr -dc 'a-z' | head -c10 > useless.txt
  git add -A
  git commit -m "Another trivial change for no reason"
  i=$((i-1))
done

</dev/urandom tr -dc a-z | head -c10 > useless.txt
git add -A
git commit -m "Motherdick"
