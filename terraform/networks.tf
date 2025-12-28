# ============================================================================
# Network Definitions - Networks created in Multi-Site (MSD) parent fabric
# Note: Networks are created in the MSD parent, not in child fabrics
# VRF1 is also created in the MSD parent fabric
# ============================================================================

# ============================================================================
# Network L3 Gateway Configuration for Multi-Site (MSD)
# ============================================================================

resource "ndfc_networks" "MultiSite_Networks" {
  fabric_name            = "Multi-Site"
  deploy_all_attachments = false
  networks = {
    "10-1-0-0--16" = {
      display_name               = "10-1-0-0--16"
      network_id                 = 30001
      network_template           = "Default_Network_Universal"
      network_extension_template = "Default_Network_Extension_Universal"
      vrf_name                   = "VRF1"
      gateway_ipv4_address       = "10.1.1.254/16"
      vlan_id                    = 2300
      vlan_name                  = "VLAN2300"
      layer2_only                = false
      mtu                        = 9216
      arp_suppression            = false
      deploy                     = false
    },
    "10-2-0-0--16" = {
      display_name               = "10-2-0-0--16"
      network_id                 = 30002
      network_template           = "Default_Network_Universal"
      network_extension_template = "Default_Network_Extension_Universal"
      vrf_name                   = "VRF1"
      gateway_ipv4_address       = "10.2.1.254/16"
      vlan_id                    = 2301
      vlan_name                  = "VLAN2301"
      layer2_only                = false
      mtu                        = 9216
      arp_suppression            = false
      deploy                     = false
    },
    "10-3-0-0--16" = {
      display_name               = "10-3-0-0--16"
      network_id                 = 30003
      network_template           = "Default_Network_Universal"
      network_extension_template = "Default_Network_Extension_Universal"
      vrf_name                   = "VRF1"
      gateway_ipv4_address       = "10.3.1.254/16"
      vlan_id                    = 2302
      vlan_name                  = "VLAN2302"
      layer2_only                = false
      mtu                        = 9216
      arp_suppression            = false
      deploy                     = false
    }
  }

  depends_on = [ndfc_vrfs.Multi_Site_VRFs]
}
