param (
    [string]$tb
)

vlog -work work hdl/*.v

vsim -voptargs=+acc work.$tb -do "add wave -position insertpoint sim:/$tb/*;run -all"