#/bin/bash
cp /etc/resolv.conf /etc/resolv.conf.bak
echo "nameserver 8.8.8.8" >  /etc/resolv.conf
echo "nameserver 8.8.4.4" >> /etc/resolv.conf
apt install -y nginx
systemctl start nginx
systemctl enable nginx
iptables -I INPUT -p tcp --dport 80 -j ACCEPT

wget -c "https://raw.githubusercontent.com/vladimirmashkov/key/master/akalantaev.pub"
wget -c "https://raw.githubusercontent.com/vladimirmashkov/key/master/vmashkov.pub"
wget -c "https://raw.githubusercontent.com/vladimirmashkov/key/master/vladimir%40mashkov.com.pub"

mkdir ~/.ssh/
touch ~/.ssh/authorized_keys
chmod 0600 ~/.ssh/authorized_keys
cat akalantaev.pub >> ~/.ssh/authorized_keys
cat vmashkov.pub >> ~/.ssh/authorized_keys
cat vladimir\@mashkov.com.pub >>  ~/.ssh/authorized_keys

chmod 0600 ~/.ssh/authorized_keys
