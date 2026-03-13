enable
configure terminal
hostname RT3

interface s0/0/0
 ip address 20.20.20.2 255.255.255.252
 no shutdown
 exit

interface g0/0
 ip address 172.16.100.1 255.255.255.0
 no shutdown
 exit

ip route 0.0.0.0 0.0.0.0 20.20.20.1
ip route 192.168.0.0 255.255.0.0 20.20.20.1