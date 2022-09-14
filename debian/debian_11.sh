#/bin/bash
cp /etc/resolv.conf /etc/resolv.conf.bak
echo "nameserver 8.8.8.8" >  /etc/resolv.conf
echo "nameserver 8.8.4.4" >> /etc/resolv.conf
apt install -y nginx
systemctl start nginx
systemctl enable nginx
iptables -I INPUT -p tcp --dport 80 -j ACCEPT

