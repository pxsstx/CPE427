# R0A (Area 0, 10, 20)

```bash
enable
configure terminal
hostname R0A

! Configure Interfaces
interface s0/0/0
ip address 80.1.1.2 255.255.255.252
no shutdown
exit

interface s0/0/1
ip address 90.1.1.1 255.255.255.252
clock rate 128000
no shutdown
exit

interface s0/1/0
ip address 10.1.1.1 255.255.255.252
clock rate 128000
no shutdown
exit

interface s0/1/1
ip address 30.1.1.2 255.255.255.252
no shutdown
exit

interface loopback 0
ip address 10.10.10.10 255.255.255.255
no shutdown
exit

! Configure OSPF
router ospf 1
network 10.10.10.10 0.0.0.0 area 0
network 10.1.1.1 0.0.0.0 area 0
network 30.1.1.2 0.0.0.0 area 0
network 80.1.1.2 0.0.0.0 area 10
network 90.1.1.1 0.0.0.0 area 20
end

```

# R0B (Area 0, 30)

```bash
enable
configure terminal
hostname R0B

! Configure Interfaces
interface s0/0/0
ip address 10.1.1.2 255.255.255.252
no shutdown
exit

interface s0/0/1
ip address 20.1.1.1 255.255.255.252
clock rate 128000
no shutdown
exit

interface s0/1/0
ip address 60.1.1.1 255.255.255.252
clock rate 128000
no shutdown
exit

interface s0/1/1
ip address 70.1.1.2 255.255.255.252
no shutdown
exit

interface loopback 0
ip address 20.20.20.20 255.255.255.255
no shutdown
exit

! Configure OSPF
router ospf 1
network 20.20.20.20 0.0.0.0 area 0
network 10.1.1.2 0.0.0.0 area 0
network 20.1.1.1 0.0.0.0 area 0
network 60.1.1.1 0.0.0.0 area 30
network 70.1.1.2 0.0.0.0 area 30
end

```

# R0C (Area 0, 40)

```bash
enable
configure terminal
hostname R0C

! Configure Interfaces
interface s0/0/0
ip address 30.1.1.1 255.255.255.252
clock rate 128000
no shutdown
exit

interface s0/0/1
ip address 20.1.1.2 255.255.255.252
no shutdown
exit

interface s0/1/0
ip address 40.1.1.1 255.255.255.252
clock rate 128000
no shutdown
exit

interface loopback 0
ip address 30.30.30.30 255.255.255.255
no shutdown
exit

! Configure OSPF
router ospf 1
network 30.30.30.30 0.0.0.0 area 0
network 30.1.1.1 0.0.0.0 area 0
network 20.1.1.2 0.0.0.0 area 0
network 40.1.1.1 0.0.0.0 area 40
end

```

# R1A (Area 10)

```bash
enable
configure terminal
hostname R1A

! Configure Interfaces
interface s0/0/0
ip address 80.1.1.1 255.255.255.252
clock rate 128000
no shutdown
exit

interface fa0/0
ip address 192.168.10.1 255.255.255.0
no shutdown
exit

interface loopback 0
ip address 70.70.70.70 255.255.255.255
no shutdown
exit

! Configure OSPF
router ospf 1
network 70.70.70.70 0.0.0.0 area 10
network 80.1.1.1 0.0.0.0 area 10
network 192.168.10.1 0.0.0.0 area 10
end

```

# R2A (Area 20)

```bash
enable
configure terminal
hostname R2A

! Configure Interfaces
interface s0/0/0
ip address 90.1.1.2 255.255.255.252
no shutdown
exit

interface fa0/0
ip address 192.168.20.1 255.255.255.0
no shutdown
exit

interface loopback 0
ip address 60.60.60.60 255.255.255.255
no shutdown
exit

! Configure OSPF
router ospf 1
network 60.60.60.60 0.0.0.0 area 20
network 90.1.1.2 0.0.0.0 area 20
network 192.168.20.1 0.0.0.0 area 20
end

```

# R3A (Area 30)

(หมายเหตุ: ในรูปเขียน RBA แต่ตาราง Loopback เขียน R3A )

```bash
enable
configure terminal
hostname R3A

! Configure Interfaces
interface s0/0/0
ip address 60.1.1.2 255.255.255.252
no shutdown
exit

interface s0/0/1
ip address 100.1.1.1 255.255.255.252
clock rate 128000
no shutdown
exit

interface fa0/0
ip address 192.168.30.1 255.255.255.0
no shutdown
exit

interface loopback 0
ip address 80.80.80.80 255.255.255.255
no shutdown
exit

! Configure OSPF
router ospf 1
network 80.80.80.80 0.0.0.0 area 30
network 60.1.1.2 0.0.0.0 area 30
network 100.1.1.1 0.0.0.0 area 30
network 192.168.30.1 0.0.0.0 area 30
end

```

# R3B (Area 30)

```bash
enable
configure terminal
hostname R3B

! Configure Interfaces
interface s0/0/0
ip address 70.1.1.1 255.255.255.252
clock rate 128000
no shutdown
exit

interface s0/0/1
ip address 100.1.1.2 255.255.255.252
no shutdown
exit

interface fa0/0
ip address 192.168.31.1 255.255.255.0
no shutdown
exit

interface loopback 0
ip address 90.90.90.90 255.255.255.255
no shutdown
exit

! Configure OSPF
router ospf 1
network 90.90.90.90 0.0.0.0 area 30
network 70.1.1.1 0.0.0.0 area 30
network 100.1.1.2 0.0.0.0 area 30
network 192.168.31.1 0.0.0.0 area 30
end

```

# R4A (Area 40)

```bash
enable
configure terminal
hostname R4A

! Configure Interfaces
interface s0/0/0
ip address 40.1.1.2 255.255.255.252
no shutdown
exit

interface fa0/0
ip address 192.168.40.1 255.255.255.0
no shutdown
exit

interface loopback 0
ip address 40.40.40.40 255.255.255.255
no shutdown
exit

! Configure OSPF
router ospf 1
network 40.40.40.40 0.0.0.0 area 40
network 40.1.1.2 0.0.0.0 area 40
network 192.168.40.1 0.0.0.0 area 40
end

```
