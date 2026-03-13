enable
configure terminal
hostname SW-FL-3

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

! 2. ตั้งค่า Port แผนก Account (3 เครื่อง)
interface range FastEthernet 0/1-3
switchport mode access
switchport access vlan 10
no shutdown
exit

! 3. แผนก Sale (0 เครื่อง)

! 4. ตั้งค่า Port แผนก Engineer (3 เครื่อง)
interface range FastEthernet 0/4-6
switchport mode access
switchport access vlan 30
no shutdown
exit

! 5. ตั้งค่า Port แผนก HR (3 เครื่อง)
interface range FastEthernet 0/7-9
switchport mode access
switchport access vlan 40
no shutdown
exit

! 6. ตั้งค่า Port แผนก Executive (1 เครื่อง)
interface FastEthernet 0/10
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