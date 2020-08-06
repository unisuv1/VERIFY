# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "COUNT_ing" -parent ${Page_0}
  ipgui::add_param $IPINST -name "IDLE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "POWER_ing" -parent ${Page_0}
  ipgui::add_param $IPINST -name "START_count" -parent ${Page_0}
  ipgui::add_param $IPINST -name "down_delay" -parent ${Page_0}
  ipgui::add_param $IPINST -name "power_14v" -parent ${Page_0}
  ipgui::add_param $IPINST -name "power_5v" -parent ${Page_0}
  ipgui::add_param $IPINST -name "power_7v" -parent ${Page_0}
  ipgui::add_param $IPINST -name "up_delay" -parent ${Page_0}


}

proc update_PARAM_VALUE.COUNT_ing { PARAM_VALUE.COUNT_ing } {
	# Procedure called to update COUNT_ing when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.COUNT_ing { PARAM_VALUE.COUNT_ing } {
	# Procedure called to validate COUNT_ing
	return true
}

proc update_PARAM_VALUE.IDLE { PARAM_VALUE.IDLE } {
	# Procedure called to update IDLE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.IDLE { PARAM_VALUE.IDLE } {
	# Procedure called to validate IDLE
	return true
}

proc update_PARAM_VALUE.POWER_ing { PARAM_VALUE.POWER_ing } {
	# Procedure called to update POWER_ing when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.POWER_ing { PARAM_VALUE.POWER_ing } {
	# Procedure called to validate POWER_ing
	return true
}

proc update_PARAM_VALUE.START_count { PARAM_VALUE.START_count } {
	# Procedure called to update START_count when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.START_count { PARAM_VALUE.START_count } {
	# Procedure called to validate START_count
	return true
}

proc update_PARAM_VALUE.down_delay { PARAM_VALUE.down_delay } {
	# Procedure called to update down_delay when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.down_delay { PARAM_VALUE.down_delay } {
	# Procedure called to validate down_delay
	return true
}

proc update_PARAM_VALUE.power_14v { PARAM_VALUE.power_14v } {
	# Procedure called to update power_14v when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.power_14v { PARAM_VALUE.power_14v } {
	# Procedure called to validate power_14v
	return true
}

proc update_PARAM_VALUE.power_5v { PARAM_VALUE.power_5v } {
	# Procedure called to update power_5v when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.power_5v { PARAM_VALUE.power_5v } {
	# Procedure called to validate power_5v
	return true
}

proc update_PARAM_VALUE.power_7v { PARAM_VALUE.power_7v } {
	# Procedure called to update power_7v when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.power_7v { PARAM_VALUE.power_7v } {
	# Procedure called to validate power_7v
	return true
}

proc update_PARAM_VALUE.up_delay { PARAM_VALUE.up_delay } {
	# Procedure called to update up_delay when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.up_delay { PARAM_VALUE.up_delay } {
	# Procedure called to validate up_delay
	return true
}


proc update_MODELPARAM_VALUE.IDLE { MODELPARAM_VALUE.IDLE PARAM_VALUE.IDLE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.IDLE}] ${MODELPARAM_VALUE.IDLE}
}

proc update_MODELPARAM_VALUE.START_count { MODELPARAM_VALUE.START_count PARAM_VALUE.START_count } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.START_count}] ${MODELPARAM_VALUE.START_count}
}

proc update_MODELPARAM_VALUE.POWER_ing { MODELPARAM_VALUE.POWER_ing PARAM_VALUE.POWER_ing } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.POWER_ing}] ${MODELPARAM_VALUE.POWER_ing}
}

proc update_MODELPARAM_VALUE.power_5v { MODELPARAM_VALUE.power_5v PARAM_VALUE.power_5v } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.power_5v}] ${MODELPARAM_VALUE.power_5v}
}

proc update_MODELPARAM_VALUE.power_14v { MODELPARAM_VALUE.power_14v PARAM_VALUE.power_14v } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.power_14v}] ${MODELPARAM_VALUE.power_14v}
}

proc update_MODELPARAM_VALUE.power_7v { MODELPARAM_VALUE.power_7v PARAM_VALUE.power_7v } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.power_7v}] ${MODELPARAM_VALUE.power_7v}
}

proc update_MODELPARAM_VALUE.COUNT_ing { MODELPARAM_VALUE.COUNT_ing PARAM_VALUE.COUNT_ing } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.COUNT_ing}] ${MODELPARAM_VALUE.COUNT_ing}
}

proc update_MODELPARAM_VALUE.up_delay { MODELPARAM_VALUE.up_delay PARAM_VALUE.up_delay } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.up_delay}] ${MODELPARAM_VALUE.up_delay}
}

proc update_MODELPARAM_VALUE.down_delay { MODELPARAM_VALUE.down_delay PARAM_VALUE.down_delay } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.down_delay}] ${MODELPARAM_VALUE.down_delay}
}

