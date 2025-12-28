# ============================================================================
# VRF Definitions for Multi-Site MSD Parent Fabric
# ============================================================================

resource "ndfc_vrfs" "Multi_Site_VRFs" {
  fabric_name            = "Multi-Site"
  deploy_all_attachments = true
  
  vrfs = {
    "VRF1" = {
      vrf_template                   = "Default_VRF_Universal"
      vrf_extension_template         = "Default_VRF_Extension_Universal"
      vrf_id                         = 50001
      vlan_name                      = "VRF1-L3VNI"
      vrf_description                = "VRF1 - Multi-Site"
      mtu                            = 9216
      deploy_attachments             = false
      max_bgp_paths                  = 4
      max_ibgp_paths                 = 4
    }
  }
}

