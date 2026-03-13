enable
configure terminal
hostname RT2

interface g0/0.30
 encapsulation dot1Q 30
 ip address 192.168.30.1 255.255.255.0
 exit

interface g0/0.40
 encapsulation dot1Q 40
 ip address 192.168.40.1 255.255.255.0
 exit

interface g0/0
 no shutdown
 exit

interface g0/1
 ip address 10.10.10.2 255.255.255.252
 no shutdown
 exit

interface s0/0/0
 ip address 20.20.20.1 255.255.255.252
 clock rate 64000
 no shutdown
 exit

interface s0/0/1
 ip address 30.30.30.1 255.255.255.252
 clock rate 64000
 no shutdown
 exit

ip route 192.168.10.0 255.255.255.0 10.10.10.1
ip route 192.168.20.0 255.255.255.0 10.10.10.1
ip route 172.16.100.0 255.255.255.0 20.20.20.2
ip route 172.16.200.0 255.255.255.0 30.30.30.2