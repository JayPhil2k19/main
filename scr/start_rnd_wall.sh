#! /bin/bash
if [ -f rnd_wall.pid ]; then
rm -iv rnd_wall.pid
fi
if [[ ! -x `/home/jason/scr/rnd_wall.sh` ]]; then
. /home/jason/scr/rnd_wall.sh
touch rnd_wall.pid
pidof -x rnd_wall.sh  > rnd_wall.pid
return 0
exit
fi
