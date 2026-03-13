enable
configure terminal
hostname RT4
no ip domain-lookup

interface Serial0/0/0
ip address 30.30.30.2 255.255.255.252
no shutdown
exit

interface GigabitEthernet0/0
ip address 172.16.200.1 255.255.255.0
no shutdown
exit

ip route 0.0.0.0 0.0.0.0 30.30.30.1
ip route 192.168.0.0 255.255.0.0 30.30.30.1
exit
exit