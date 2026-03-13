en
config t
router eigrp 100
no au
network 10.10.10.1 0.0.0.0
network 30.30.30.2 0.0.0.0
network 192.168.1.1 0.0.0.0
exit
exit

en
config t
router eigrp 100
no au
network 20.20.20.1 0.0.0.0
network 10.10.10.2 0.0.0.0
network 192.168.2.1 0.0.0.0
exit
exit

en
config t
router eigrp 100
no au
network 20.20.20.2 0.0.0.0
network 30.30.30.1 0.0.0.0
network 192.168.3.1 0.0.0.0
exit
exit
