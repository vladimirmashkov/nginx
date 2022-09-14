```bash
sudo su
apt update -y && apt upgrade -y && apt update -y
apt install -y wget
wget -c "https://raw.githubusercontent.com/vladimirmashkov/nginx/main/debian/debian_11.sh"
chmod +x *.sh
sh debian_11.sh
```