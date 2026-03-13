enable
configure terminal
hostname SW1

vlan 10
name ENGINEER
vlan 20
name SALE
exit

interface range FastEthernet0/1-10
switchport access vlan 10
no shutdown
exit

interface range FastEthernet0/11-20
switchport access vlan 20
no shutdown
exit

interface GigabitEthernet0/1
switchport mode trunk
no shutdown
exit
exit
exit