***** Spice Netlist for Cell 'Lab4' *****

************** Module Lab4 **************
xi0 n0 n3 n2 gnd vout opamp1 
v1 n1 gnd dc='10' ac='0' 
v2 n2 gnd dc='10' ac='0' 
v0 vin gnd dc='0' ac='0' 
r2 n3 n1 1k noisy=0
r3 gnd n3 1k noisy=0
r0 vin n0 6k noisy=0
r1 n0 vout 10k noisy=0





.include '../../../SpiceModels/ECE214_models.mod'
.temp 27
.dc V0 10 0 -.1
.global gnd
.options post=1 delmax=5p relv=1e-6 reli=1e-6 relmos=1e-6 method=gear
.op

.end

