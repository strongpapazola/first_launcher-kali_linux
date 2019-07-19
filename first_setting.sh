read -p "Download chrome?[y/n]" confirm
if [ $confirm = "y" ];then
	wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
	if [ ! "witch gdebi" ];then
  	      echo "[*] gdebi not installed !"
	      apt install gdebi -y
	else
	        gdebi google-chrome-stable_current_amd64.deb
	fi
else
	echo Abort.
	exit 0
fi

sed -i 's/StartupNotify=true/StartupNotify=false/g' /usr/share/applications/org.gnome.Nautilus.desktop

apt install bleachbit -y

apt install ssh -y

apt install proftpd -y

apt install isc-dhcp-server -y

apt install apache2 -y

apt install php7.3 php7.3-curl php7.3-mysql -y

apt install bind9 -y

apt install asterisk -y

apt install mysql -y

apt install samba -y

apt install tilix -y
