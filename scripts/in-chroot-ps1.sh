# Temporarily change PS1 to differentiate between the real prompt and the chroot prompt.
if ! grep "export PS1.*(live)" /root/.bashrc
then
	echo 'red=$(tput setaf 1)' >> /root/.bashrc
	echo 'reset=$(tput sgr0)' >> /root/.bashrc
	echo 'export PS1="\[${red}\](live):\w \$ \[${reset}\]"' >> /root/.bashrc
fi