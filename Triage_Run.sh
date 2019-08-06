#!/bin/sh

var1=`hostname`

if (echo $var1 | grep "rhel" > /dev/null)
then
	chmod +x Bash/Bash_mannual.sh
	bash Bash/Bash_mannual.sh
elif (echo $var1 | grep "ubuntu" > /dev/null)
then
	chmod +x Bash/Bash_mannual.sh
	bash Bash/Bash_mannual.sh
elif (echo $var1 | grep "solaris" > /dev/null)
then
	chmod +x Non-Bash/Solaris/non-Bash.sh
	sh Non-Bash/Solaris/non-Bash.sh
elif (echo $var1 | grep "freebsd" > /dev/null)
then
	chmod +x Non-Bash/FreeBSD/freebsd.sh
	sh Non-Bash/FreeBSD/freebsd.sh
else
	echo "Error !!"
fi
