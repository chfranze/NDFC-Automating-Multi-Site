# ============================================================================
# External Links Configuration
# ============================================================================

# VRF_LITE link from Leaf-101 (Site1) to DC-Border (Internet Fabric)
# resource "ndfc_links" "Leaf_101_to_DC_Border" {
#   source_fabric         = "Site1"
#   destination_fabric    = "Internet"
#   source_device         = "10.199.101.101"
#   destination_device    = "10.199.101.200"
#   source_interface      = "Ethernet1/3"
#   destination_interface = "GigabitEthernet1"
#   template_name         = "ext_fabric_setup"
#   link_parameters = {
#     # BGP ASN Parameters
#     "asn"          = "65001"
#     "NEIGHBOR_ASN" = "100"

#     # IP Address Parameters
#     "IP_MASK"      = "169.254.101.1/30"
#     "NEIGHBOR_IP"  = "169.254.101.2"

#     # Interface Parameters
#     "MTU"        = "1500"
#     "PEER1_DESC" = "Link to DC-Border from Leaf-101"
#     "PEER2_DESC" = "Link to Leaf-101 from DC-Border"

#     # VRF Parameters
#     "AUTO_VRF_LITE_FLAG"       = "true"
#     "VRF_LITE_JYTHON_TEMPLATE" = "Ext_VRF_Lite_Jython_IOS_XE"

#     # Advanced Parameters
#     "PEER1_CONF" = "no shutdown"
#     "PEER2_CONF" = "no shutdown"
#   }
# }

# VRF_LITE link from Leaf-102 (Site1) to DC-Border (Internet Fabric)
# This is commented out in the playbook but included here for reference
# Uncomment to enable
# resource "ndfc_links" "Leaf_102_to_DC_Border" {
#   source_fabric         = "Site1"
#   destination_fabric    = "Internet"
#   source_device         = "10.199.101.102"
#   destination_device    = "10.199.101.200"
#   source_interface      = "Ethernet1/3"
#   destination_interface = "GigabitEthernet2"
#   template_name         = "ext_fabric_setup"
#   link_parameters = {
#     # BGP ASN Parameters
#     "asn"          = "65001"
#     "NEIGHBOR_ASN" = "100"

#     # IP Address Parameters
#     "IP_MASK"      = "169.254.102.1/30"
#     "NEIGHBOR_IP"  = "169.254.102.2"

#     # Interface Parameters
#     "MTU"        = "1500"
#     "PEER1_DESC" = "Link to DC-Border from Leaf-102"
#     "PEER2_DESC" = "Link to Leaf-102 from DC-Border"

#     # VRF Parameters
#     "AUTO_VRF_LITE_FLAG"       = "true"
#     "VRF_LITE_JYTHON_TEMPLATE" = "Ext_VRF_Lite_Jython_IOS_XE"

#     # Advanced Parameters
#     "PEER1_CONF" = "no shutdown"
#     "PEER2_CONF" = "no shutdown"
#   }
# }
