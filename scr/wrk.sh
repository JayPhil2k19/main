#! /bin/bash
wrk_spc=1
while read line; do
if [ "$line" = true ]; then
  break
else
  wrk_spc="$line"
fi
done < <(i3-msg -t get_workspaces | jshon -a -e focused -u -p -e name -u)
echo $wrk_spc
 
