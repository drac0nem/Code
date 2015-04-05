#!/bin/bash
#Static IP adress Auto Script
#Created By Drac0nem
#-NOTE-: YOU WILL HAVE TO CHANGE ALL THE IP ADRESSES TO MATCH YOUR "IP-RANGE"
/etc/init.d/networking stop
sleep 1
/etc/init.d/networking start
sleep 1
#If you have network manager copy this out
#/etc/init.d/network-manager stop
#sleep 1
#/etc/init.d/network-manager start
ifconfig eth0 up
sleep 1
ifconfig eth0 192.168.1.85
sleep 1
ifconfig eth0 netmask 255.255.255.0
sleep 1
ifconfig eth0 broadcast 192.168.1.255
sleep 1
route add default gw 192.168.1.254 eth0
#IF YOU HAVE TO ADD A NAMESERVER COPY THIS OUT:
#echo “nameserver 8.8.8.8\n nameserver 8.8.4.4″ >>/etc/resolv.conf