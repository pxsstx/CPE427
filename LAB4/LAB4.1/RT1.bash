enable
configure terminal
hostname RT1

interface GigabitEthernet0/0
no shutdown
interface GigabitEthernet0/0.10
encapsulation dot1Q 10
ip address 192.168.10.1 255.255.255.0
no shutdown
exit
interface GigabitEthernet0/0.20
encapsulation dot1Q 20
ip address 192.168.20.1 255.255.255.0
no shutdown
exit

interface GigabitEthernet0/1
ip address 10.10.10.1 255.255.255.0
no shutdown
exit

ip route 192.168.30.0 255.255.255.0 10.10.10.2
ip route 192.168.40.0 255.255.255.0 10.10.10.2
exit
exit