# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "DUTY_CYCLE_W" -parent ${Page_0}
  ipgui::add_param $IPINST -name "pwm_clk" -parent ${Page_0}
  ipgui::add_param $IPINST -name "sys_clk" -parent ${Page_0}


}

proc update_PARAM_VALUE.DUTY_CYCLE_W { PARAM_VALUE.DUTY_CYCLE_W } {
	# Procedure called to update DUTY_CYCLE_W when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DUTY_CYCLE_W { PARAM_VALUE.DUTY_CYCLE_W } {
	# Procedure called to validate DUTY_CYCLE_W
	return true
}

proc update_PARAM_VALUE.pwm_clk { PARAM_VALUE.pwm_clk } {
	# Procedure called to update pwm_clk when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.pwm_clk { PARAM_VALUE.pwm_clk } {
	# Procedure called to validate pwm_clk
	return true
}

proc update_PARAM_VALUE.sys_clk { PARAM_VALUE.sys_clk } {
	# Procedure called to update sys_clk when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.sys_clk { PARAM_VALUE.sys_clk } {
	# Procedure called to validate sys_clk
	return true
}


proc update_MODELPARAM_VALUE.sys_clk { MODELPARAM_VALUE.sys_clk PARAM_VALUE.sys_clk } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.sys_clk}] ${MODELPARAM_VALUE.sys_clk}
}

proc update_MODELPARAM_VALUE.pwm_clk { MODELPARAM_VALUE.pwm_clk PARAM_VALUE.pwm_clk } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.pwm_clk}] ${MODELPARAM_VALUE.pwm_clk}
}

proc update_MODELPARAM_VALUE.DUTY_CYCLE_W { MODELPARAM_VALUE.DUTY_CYCLE_W PARAM_VALUE.DUTY_CYCLE_W } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DUTY_CYCLE_W}] ${MODELPARAM_VALUE.DUTY_CYCLE_W}
}

