#!/bin/bash

# cap nhat

sudo apt update && sudo apt upgrade -y && sudo apt install wget -y


sudo apt-get install zip curl openssl

# Mở tệp /etc/network/interfaces và thêm cấu hình IPv6
echo -e "\n# IPv6 configuration for the primary network interface\niface enp1s0 inet6 auto" | sudo tee -a /etc/network/interfaces

# Khởi động lại dịch vụ mạng
sudo systemctl restart networking.service
