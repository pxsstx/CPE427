enable
configure terminal
hostname SW-FL-4

! 1. สร้าง VLAN
vlan 10
name Account
vlan 20
name Sale
vlan 30
name Engineer
vlan 40
name HR
vlan 50
name Executive
exit

! 2. ตั้งค่า Port Account (2 เครื่อง)
interface range FastEthernet 0/1-2
switchport mode access
switchport access vlan 10
no shutdown
exit

! 3. ตั้งค่า Port Sale (2 เครื่อง)
interface range FastEthernet 0/3-4
switchport mode access
switchport access vlan 20
no shutdown
exit

! 4. ตั้งค่า Port Engineer (2 เครื่อง)
interface range FastEthernet 0/5-6
switchport mode access
switchport access vlan 30
no shutdown
exit

! 5. ตั้งค่า Port HR (2 เครื่อง)
interface range FastEthernet 0/7-8
switchport mode access
switchport access vlan 40
no shutdown
exit

! 6. ตั้งค่า Port Executive (2 เครื่อง)
interface range FastEthernet 0/9-10
switchport mode access
switchport access vlan 50
no shutdown
exit

! 7. ตั้งค่า Trunk Port
interface range gigabitEthernet 0/1-2
switchport mode trunk
switchport trunk allowed vlan 10,20,30,40,50
no shutdown
exit
exit
exit