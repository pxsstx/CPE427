# RTA0

```bash
enable
configure terminal
hostname RTAO

! Configure Interfaces
interface s0/0/0
ip address 20.20.20.1 255.255.255.252
clock rate 128000
no shutdown
exit

interface s0/0/1
ip address 30.30.30.2 255.255.255.252
no shutdown
exit

interface g0/0
ip address 60.60.60.1 255.255.255.252
no shutdown
exit

interface loopback 0
ip address 1.1.1.1 255.255.255.255
no shutdown
exit

! Configure OSPF
router ospf 1
network 1.1.1.1 0.0.0.0 area 0
network 20.20.20.1 0.0.0.0 area 0
network 30.30.30.2 0.0.0.0 area 0
network 60.60.60.1 0.0.0.0 area 10
end
```

# RTB0

```bash
enable
configure terminal
hostname RTBO

! Configure Interfaces
interface s0/0/0
ip address 10.10.10.1 255.255.255.252
clock rate 128000
no shutdown
exit

interface s0/0/1
ip address 20.20.20.2 255.255.255.252
no shutdown
exit

interface g0/0
ip address 50.50.50.1 255.255.255.252
no shutdown
exit

interface loopback 0
ip address 2.2.2.2 255.255.255.255
no shutdown
exit

! Configure OSPF
router ospf 1
network 2.2.2.2 0.0.0.0 area 0
network 20.20.20.2 0.0.0.0 area 0
network 10.10.10.1 0.0.0.0 area 0
network 50.50.50.1 0.0.0.0 area 20
end
```

# RTC0

```bash
enable
configure terminal
hostname RTCO

! Configure Interfaces
interface s 0/0/0
ip address 30.30.30.1 255.255.255.252
clock rate 128000
no shutdown
exit

interface s 0/0/1
ip address 10.10.10.2 255.255.255.252
no shutdown
exit

interface g 0/0
ip address 40.40.40.1 255.255.255.252
no shutdown
exit

interface loopback 0
ip address 3.3.3.3 255.255.255.255
no shutdown
exit

! Configure OSPF
router ospf 1
network 3.3.3.3 0.0.0.0 area 0
network 10.10.10.2 0.0.0.0 area 0
network 30.30.30.1 0.0.0.0 area 0
network 40.40.40.1 0.0.0.0 area 30
end
```

# RT10

```bash
enable
configure terminal
hostname RT10

! Configure Interfaces
interface g 0/0
ip address 60.60.60.2 255.255.255.252
no shutdown
exit

interface g0/1
ip address 192.168.1.1 255.255.255.0
no shutdown
exit

interface loopback 0
ip address 11.11.11.11 255.255.255.255
no shutdown
exit

! Configure OSPF
router ospf 1
network 11.11.11.11 0.0.0.0 area 10
network 60.60.60.0 0.0.0.3 area 10
network 192.168.1.0 0.0.0.255 area 10
end
```

# RT20

```bash
enable
configure terminal
hostname RT20

! Configure Interfaces
interface g0/0
ip address 50.50.50.2 255.255.255.252
no shutdown
exit

interface g0/1
ip address 192.168.2.1 255.255.255.0
no shutdown
exit

interface loopback 0
ip address 22.22.22.22 255.255.255.255
no shutdown
exit

! Configure OSPF
router ospf 1
network 22.22.22.22 0.0.0.0 area 20
network 50.50.50.0 0.0.0.3 area 20
network 192.168.2.0 0.0.0.255 area 20
end
```

# RT30

```bash
enable
configure terminal
hostname RT30

! Configure Interfaces
interface g0/0
ip address 40.40.40.2 255.255.255.252
no shutdown
exit

interface g0/1
ip address 192.168.3.1 255.255.255.0
no shutdown
exit

interface loopback 0
ip address 33.33.33.33 255.255.255.255
no shutdown
exit

! Configure OSPF
router ospf 1
network 33.33.33.33 0.0.0.0 area 30
network 40.40.40.0 0.0.0.3 area 30
network 192.168.3.0 0.0.0.255 area 30
end
```
