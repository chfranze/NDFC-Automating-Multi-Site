# ============================================================================
# VRF Definitions for Child Fabrics
# Note: VRFs must be created in child fabrics (Site1, Site2) not in MSD parent
# ============================================================================

# VRF1 in Site1
resource "ndfc_vrfs" "Site1_VRFs" {
  fabric_name            = "Site1"
  deploy_all_attachments = true
  
  depends_on = [ndfc_inventory_devices.Site1_devices]
  
  vrfs = {
    "VRF1" = {
      vrf_template                   = "Default_VRF_Universal"
      vrf_extension_template         = "Default_VRF_Extension_Universal"
      vrf_id                         = 50001
      vlan_name                      = "VRF1-L3VNI"
      vrf_description                = "VRF1 - Site1"
      mtu                            = 9216
      ipv6_link_local                = false
      no_rp                          = false
      rp_external                    = false
      advertise_default_route        = false
      configure_static_default_route = false
      netflow                        = false
      disable_rt_auto                = true
      deploy_attachments             = false
      attach_list                    = {}
    }
  }
}

# VRF1 in Site2
resource "ndfc_vrfs" "Site2_VRFs" {
  fabric_name            = "Site2"
  deploy_all_attachments = true
  
  depends_on = [ndfc_inventory_devices.Site2_devices]
  
  vrfs = {
    "VRF1" = {
      vrf_template                   = "Default_VRF_Universal"
      vrf_extension_template         = "Default_VRF_Extension_Universal"
      vrf_id                         = 50001
      vlan_name                      = "VRF1-L3VNI"
      vrf_description                = "VRF1 - Site2"
      mtu                            = 9216
      ipv6_link_local                = false
      no_rp                          = false
      rp_external                    = false
      advertise_default_route        = false
      configure_static_default_route = false
      netflow                        = false
      disable_rt_auto                = true
      deploy_attachments             = false
      attach_list                    = {}
    }
  }
}
