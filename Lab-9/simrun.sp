***** Spice Netlist for Cell 'Lab9Pre' *****

************** Module Lab9Pre **************
xi0 n1 n0 vout Lab7Pre
xi1 n0 n1 Lab8Pre
r0 gnd vout 10k noisy=0
v0 n0 gnd dc='12' ac='1' 

************** Module Lab8Pre **************
.subckt Lab8Pre dc fg
r0 n0 dc 1k noisy=0
r1 fg dc 1k noisy=0
r2 vc2 dc 60k noisy=0
r3 vc1 dc 60k noisy=0
r4 gnd vc1 30k noisy=0
r5 gnd vc2 30k noisy=0
x1 fg vc2 gnd 2n7000_mod 
x0 n0 vc1 gnd 2n7000_mod 
c1 n0 vc2 950pf ic=0
c0 vc1 fg 575pf ic=0
.ends Lab8Pre

************** Module Lab7Pre **************
.subckt Lab7Pre fg dc output
x0 n2 n3 n4 irfl110 
c0 n5 n0 10uf ic=0
d0 n2 n0 1n4004rl 
r1 fg n3 50 noisy=0
r2 gnd n4 1.1 noisy=0
l0 n2 n1 1.041mh 
r3 dc n1 3 noisy=0
r5 gnd n5 0.5 noisy=0
c1 gnd output 10uf ic=0
r0 n0 gnd 600 noisy=0
r4 n0 output 460 noisy=0
.ends Lab7Pre





.include '../../../SpiceModels/ECE214_models.mod'
.temp 27
.tran 1u 120m 60m
.global gnd
.param freq=40000
.options post=1 delmax=5p relv=1e-6 reli=1e-6 relmos=1e-6 method=gear
.op
.IC V(xi1.Vc1) = 0
.end

