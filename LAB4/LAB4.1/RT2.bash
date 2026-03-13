enable
configure terminal
hostname RT2

interface GigabitEthernet0/0
no shutdown
interface GigabitEthernet0/0.30
encapsulation dot1Q 30
ip address 192.168.30.1 255.255.255.0
no shutdown
exit
interface GigabitEthernet0/0.40
encapsulation dot1Q 40
ip address 192.168.40.1 255.255.255.0
no shutdown
exit

interface GigabitEthernet0/1
ip address 10.10.10.2 255.255.255.0
no shutdown
exit

ip route 192.168.10.0 255.255.255.0 10.10.10.1
ip route 192.168.20.0 255.255.255.0 10.10.10.1

exit
exit