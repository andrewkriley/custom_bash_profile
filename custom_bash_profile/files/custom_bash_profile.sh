#THIS FILE MANAGED BY PUPPET
# SOURCE GITHUB.COM/ANDREWKRILEY

#Root login directory (red and blue)
PS1='\[\e[0;31m\]\u\[\e[m\] \[\e[1;34m\]\w\[\e[m\] \[\e[0;31m\]\$ \[\e[m\]\[\e[0;32m\]'

# This is GOLD for finding out what is taking so much space on your drives! don't work on OSX
#alias ar-diskspace="du -S | sort -n -r |more"

#Dynamic MOTD
/usr/local/bin/dynmotd