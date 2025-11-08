# @arguments
#   version_number_major, version_number_minor, version_number_patch
#   target_variable
$data modify storage chain_mining:data data.$(target_variable) set value v$(version_number_major).$(version_number_minor).$(version_number_patch)
