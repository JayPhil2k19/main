#! /bin/bash
conk_var=`pgrep -a conky | grep .conky_music | awk '{print $1}'`
kill $conk_var 2> /dev/null
rm ~/conky.pid
exit

