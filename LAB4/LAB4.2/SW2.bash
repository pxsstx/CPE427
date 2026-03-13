enable
configure terminal
hostname SW2

vlan 30
name HR
vlan 40
name IT
exit

interface range FastEthernet0/1-10
switchport access vlan 30
no shutdown
exit

interface range FastEthernet0/11-20
switchport access vlan 40
no shutdown
exit

interface GigabitEthernet0/1
switchport mode trunk
no shutdown
exit
exit
exit