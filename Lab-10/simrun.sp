***** Spice Netlist for Cell 'Lab10Pre_sue' *****

************** Module Lab10Pre_sue **************
c0 n0 n2 100nf ic=0
d0 n2 vout 1n4004rl 
d1 n1 n2 1n4004rl 
c1 n1 vout 100nf ic=0
r0 n3 n1 1k noisy=0
r1 n0 n1 1k noisy=0
r2 vc2 n1 60k noisy=0
r3 vc1 n1 60k noisy=0
r4 gnd vc1 30k noisy=0
r5 gnd vc2 30k noisy=0
x0 n0 vc2 gnd 2n7000_mod 
x1 n3 vc1 gnd 2n7000_mod 
v0 n1 gnd dc='12' ac='1' 
c3 n3 vc2 100nf ic=0
c2 vc1 n0 100nf ic=0





.include '../../../SpiceModels/ECE214_models.mod'
.temp 27
.tran 1u 200m 0m
.global gnd
.param freq=40000
.options post=1 delmax=5p relv=1e-6 reli=1e-6 relmos=1e-6 method=gear
.op
.IC V(Vc1) = 0
.end

