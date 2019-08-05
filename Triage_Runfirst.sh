var1=`hostnamectl | grep 'Operating System' || echo "None"`
var2=`uname -a | grep 'solaris'`

echo $var1 | grep -E "Red Hat|Ubuntu" > /dev/null

if [ $? -eq 0 ]
then
	chmod +x Bash/Bash_manual.sh
	bash Bash/Bash_manual.sh
else
	chmod +x Non-Bash/Solaris/non-Bash.sh
	bash Non-Bash/Solaris/non-Bash.sh
fi

