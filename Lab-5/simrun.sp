***** Spice Netlist for Cell 'Lab5Pre' *****

************** Module Lab5Pre **************
v0 n3 gnd dc='10' ac='0' 
v1 n4 gnd dc='10' ac='0' 
r1 n0 vout2 6k noisy=0
r2 n0 vout1 10k noisy=0
v2 n2 gnd dc='5' ac='0' 
xi0 n2 n1 n3 gnd vout2 tl082 
xi1 n0 n2 n4 gnd vout1 tl082 
c0 n1 vout2 0.1uf ic=0
r0 vout1 n1 1.041k noisy=0





.include '../../../SpiceModels/ECE214_models.mod'
.temp 27
.tran 10u 125m 25m
.global GND
.options post=1 delmax=5p relv=1e-6 reli=1e-6 relmos=1e-6 method=gear
.op

.end

