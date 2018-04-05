***** Spice Netlist for Cell 'Lab7Pre' *****

************** Module Lab7Pre **************
x0 n3 n4 n5 irfl110 
c0 n7 n0 10uf ic=0
v0 n2 gnd dc='12' ac='0' 
d0 n3 n0 1n4004rl 
r1 n6 n4 50 noisy=0
r0 n0 gnd 460 noisy=0
r2 gnd n5 1.1 noisy=0
r4 n0 vout 460 noisy=0
c1 gnd vout 0.33uf ic=0
r3 n2 n1 2.45 noisy=0
l0 n3 n1 1.041mh 
v1 n6 gnd ac 0v pulse 0v 5v 0ns 1ns 1ns 21.5054us 35.8423us 
r5 gnd n7 0.8 noisy=0





.include '../../../SpiceModels/ECE214_models.mod'
.temp 27
.tran 1u 100m 1m
.global gnd
.param freq=40000
.options post=1 delmax=5p relv=1e-6 reli=1e-6 relmos=1e-6 method=gear
.op

.end

