# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "fifteen" -parent ${Page_0}
  ipgui::add_param $IPINST -name "five" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ten" -parent ${Page_0}
  ipgui::add_param $IPINST -name "thirty" -parent ${Page_0}
  ipgui::add_param $IPINST -name "thirtyfive" -parent ${Page_0}
  ipgui::add_param $IPINST -name "twenty" -parent ${Page_0}
  ipgui::add_param $IPINST -name "twentyfive" -parent ${Page_0}
  ipgui::add_param $IPINST -name "zero" -parent ${Page_0}


}

proc update_PARAM_VALUE.fifteen { PARAM_VALUE.fifteen } {
	# Procedure called to update fifteen when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.fifteen { PARAM_VALUE.fifteen } {
	# Procedure called to validate fifteen
	return true
}

proc update_PARAM_VALUE.five { PARAM_VALUE.five } {
	# Procedure called to update five when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.five { PARAM_VALUE.five } {
	# Procedure called to validate five
	return true
}

proc update_PARAM_VALUE.ten { PARAM_VALUE.ten } {
	# Procedure called to update ten when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ten { PARAM_VALUE.ten } {
	# Procedure called to validate ten
	return true
}

proc update_PARAM_VALUE.thirty { PARAM_VALUE.thirty } {
	# Procedure called to update thirty when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.thirty { PARAM_VALUE.thirty } {
	# Procedure called to validate thirty
	return true
}

proc update_PARAM_VALUE.thirtyfive { PARAM_VALUE.thirtyfive } {
	# Procedure called to update thirtyfive when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.thirtyfive { PARAM_VALUE.thirtyfive } {
	# Procedure called to validate thirtyfive
	return true
}

proc update_PARAM_VALUE.twenty { PARAM_VALUE.twenty } {
	# Procedure called to update twenty when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.twenty { PARAM_VALUE.twenty } {
	# Procedure called to validate twenty
	return true
}

proc update_PARAM_VALUE.twentyfive { PARAM_VALUE.twentyfive } {
	# Procedure called to update twentyfive when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.twentyfive { PARAM_VALUE.twentyfive } {
	# Procedure called to validate twentyfive
	return true
}

proc update_PARAM_VALUE.zero { PARAM_VALUE.zero } {
	# Procedure called to update zero when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.zero { PARAM_VALUE.zero } {
	# Procedure called to validate zero
	return true
}


proc update_MODELPARAM_VALUE.zero { MODELPARAM_VALUE.zero PARAM_VALUE.zero } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.zero}] ${MODELPARAM_VALUE.zero}
}

proc update_MODELPARAM_VALUE.five { MODELPARAM_VALUE.five PARAM_VALUE.five } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.five}] ${MODELPARAM_VALUE.five}
}

proc update_MODELPARAM_VALUE.ten { MODELPARAM_VALUE.ten PARAM_VALUE.ten } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ten}] ${MODELPARAM_VALUE.ten}
}

proc update_MODELPARAM_VALUE.fifteen { MODELPARAM_VALUE.fifteen PARAM_VALUE.fifteen } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.fifteen}] ${MODELPARAM_VALUE.fifteen}
}

proc update_MODELPARAM_VALUE.twenty { MODELPARAM_VALUE.twenty PARAM_VALUE.twenty } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.twenty}] ${MODELPARAM_VALUE.twenty}
}

proc update_MODELPARAM_VALUE.twentyfive { MODELPARAM_VALUE.twentyfive PARAM_VALUE.twentyfive } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.twentyfive}] ${MODELPARAM_VALUE.twentyfive}
}

proc update_MODELPARAM_VALUE.thirty { MODELPARAM_VALUE.thirty PARAM_VALUE.thirty } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.thirty}] ${MODELPARAM_VALUE.thirty}
}

proc update_MODELPARAM_VALUE.thirtyfive { MODELPARAM_VALUE.thirtyfive PARAM_VALUE.thirtyfive } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.thirtyfive}] ${MODELPARAM_VALUE.thirtyfive}
}

