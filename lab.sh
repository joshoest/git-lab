#!/bin/bash
echo -e "\e[1;36m current user:\e[0m"
whoami
echo -e "\e[1;36m CPU name and speed:\e[0m"
lscpu | grep "name"
lscpu | grep "MHz"
echo -e "\e[1;36m Free and swap memory:\e[0m"
free -m
echo -e "\e[1;36m Free and total space ext4 partitions:\e[0m"
df -m -t ext4
echo -e "\e[1;36m Ip Address and subnet:\e[0m"
ip -o -f inet addr show | awk '/scope global/ {print $2,$4}'

