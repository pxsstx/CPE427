# RTA

```bash
enable
configure terminal
router eigrp 100
no auto-summary
network 10.10.10.1 0.0.0.0
network 20.20.20.1 0.0.0.0
network 1.1.1.1 0.0.0.0
network 192.168.10.1 0.0.0.0
exit
```

# RTB

```bash
enable
configure terminal
router eigrp 100
no auto-summary
network 10.10.10.2 0.0.0.0
network 60.60.60.1 0.0.0.0
network 192.168.20.1 0.0.0.0
network 2.2.2.1 0.0.0.0
exit
exit
```

# RTD

```bash
enable
configure terminal
router eigrp 100
no auto-summary
network 20.20.20.2 0.0.0.0
network 30.30.30.1 0.0.0.0
network 192.168.40.1 0.0.0.0
network 2.2.2.2 0.0.0.0
network 3.3.3.1 0.0.0.0
network 70.70.70.1 0.0.0.0
exit
exit
```

# RTC

```bash
enable
configure terminal
router eigrp 100
no auto-summary
network 4.4.4.1  0.0.0.0
network 60.60.60.2 0.0.0.0
network 1.1.1.2 0.0.0.0
network 50.50.50.1 0.0.0.0
network 192.168.30.1 0.0.0.0
network 70.70.70.2 0.0.0.0
exit
exit
```

# RTE

```bash
enable
configure terminal
router eigrp 100
no auto-summary
network 40.40.40.1  0.0.0.0
network 4.4.4.2 0.0.0.0
network 30.30.30.1 0.0.0.0
network 192.168.50.1 0.0.0.0
exit
exit
```

# RTF

```bash
enable
configure terminal
router eigrp 100
no auto-summary
network 40.40.40.2  0.0.0.0
network 50.50.50.2 0.0.0.0
network 192.168.60.1 0.0.0.0
network 3.3.3.2 0.0.0.0
exit
exit
```
