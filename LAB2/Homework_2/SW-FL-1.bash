enable
configure terminal
hostname SW-FL-1

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

! 2. ตั้งค่า Port แผนก Account (5 เครื่อง)
interface range FastEthernet 0/1-5
switchport mode access
switchport access vlan 10
no shutdown
exit

! 3. ตั้งค่า Port แผนก HR (4 เครื่อง)
interface range FastEthernet 0/6-9
switchport mode access
switchport access vlan 40
no shutdown
exit

! 4. ตั้งค่า Port แผนก Executive (1 เครื่อง)
interface FastEthernet 0/10
switchport mode access
switchport access vlan 50
no shutdown
exit

! 5. ตั้งค่า Trunk Port
interface range gigabitEthernet 0/1-2
switchport mode trunk
switchport trunk allowed vlan 10,20,30,40,50
no shutdown
exit
exit
exit