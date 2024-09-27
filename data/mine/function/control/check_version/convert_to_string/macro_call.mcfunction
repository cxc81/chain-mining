# 参数：
#   version_number_main、version_number_sub、version_number_minor；
#   target_variable
$data modify storage mine:data data.$(target_variable) set value v$(version_number_main).$(version_number_sub).$(version_number_minor)
