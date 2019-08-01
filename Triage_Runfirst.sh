var1=`hostnamectl | grep 'Operating System' || echo 'None'`
var2=`uname -a | grep 'solaris'`
if ["$var1" == "Red Hat"]; then
	chmod +x Bash/Bash.sh
	bash Bash/Bash.sh
elif ["$var1" == "Ubuntu"]; then
	chmod +x Bash/bash.sh
	bash Bash/Bash.sh
elif ["$var2" == "solaris"]; then
	chmod +x Non-Bash/shell.sh
	sh Non-Bash/shell.sh
else
	echo "Error"
fi