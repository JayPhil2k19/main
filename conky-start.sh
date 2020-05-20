#! /bin/bash
check_pid(){
if [ -f "~/conky.pid" ]; then
pid_orig=`cat ~/conky.pid`
fi

pid_new=`pgrep -a conky | grep .conky_music | awk '{print $1}'`

if [ "$pid_new" != "$pid_org" ]; then
kill $pid_new
fi
}

check_pid

conky -c ~/.conky_music
 conk_var=`pgrep -a conky | grep .conky_music | awk '{print $1}'`
touch ~/conky.pid
echo $conk_var > conky.pid
#pidof -o %PPID -x $0 >/dev/null && echo "ERROR: Script $0 already running" && exit 1
