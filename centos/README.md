```bash
sudo su
yum update -y && yum upgrade -y && yum update -y
apt install -y wget
wget -c "https://raw.githubusercontent.com/vladimirmashkov/nginx/main/centos/centos_7.sh"
chmod +x *.sh
sh centos_7.sh
```