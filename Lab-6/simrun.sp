***** Spice Netlist for Cell 'Lab6Pre' *****

************** Module Lab6Pre **************
r0 vg vin 50 noisy=0
v0 vg gnd dc 0v ac 1v sin('0v' '1v' 'frequency' '0s') 
l0 vc n0 ind 
c0 gnd n1 cap ic=0
r1 vin n0 res1 noisy=0
r2 n1 vc res2 noisy=0





.include '../../../SpiceModels/ECE214_models.mod'
.temp 27
.tran 1u 0.2m 10u
.global gnd
.param res1=0
.param res2=0
.param cap=3.3e-07
.param ind=0.001
.options post=1 delmax=5p relv=1e-6 reli=1e-6 relmos=1e-6 method=gear
.op

.end

