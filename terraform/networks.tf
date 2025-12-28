# ============================================================================
# Network Definitions - Networks created in child fabrics only
# Note: Networks are created in Site1 and Site2, not in MSD parent
# NOTE: Networks are commented out until VRFs are successfully created
# Uncomment after VRFs are deployed and verified in the NDFC GUI
# ============================================================================

/*
# ============================================================================
# Network L3 Gateway Configuration for Site1
# ============================================================================

resource "ndfc_networks" "Site1_Networks" {
  fabric_name            = "Site1"
  deploy_all_attachments = true
  networks = {
    "10-1-0-0--16" = {
      display_name               = "10-1-0-0--16"
      network_id                 = 30001
      network_template           = "Default_Network_Universal"
      network_extension_template = "Default_Network_Extension_Universal"
      vrf_name                   = "VRF1"
      network_type               = "Normal"
      gateway_ipv4_address       = "10.1.1.254/16"
      vlan_id                    = 2300
      vlan_name                  = "VLAN2300"
      layer2_only                = false
      mtu                        = 9216
      arp_suppression            = false
      ingress_replication        = false
      route_target_both          = true
      netflow                    = false
      l3_gatway_border           = true
      deploy_attachments         = false
      attachments                = {}
    },
    "10-2-0-0--16" = {
      display_name               = "10-2-0-0--16"
      network_id                 = 30002
      network_template           = "Default_Network_Universal"
      network_extension_template = "Default_Network_Extension_Universal"
      vrf_name                   = "VRF1"
      network_type               = "Normal"
      gateway_ipv4_address       = "10.2.1.254/16"
      vlan_id                    = 2301
      vlan_name                  = "VLAN2301"
      layer2_only                = false
      mtu                        = 9216
      arp_suppression            = false
      ingress_replication        = false
      route_target_both          = true
      netflow                    = false
      l3_gatway_border           = true
      deploy_attachments         = false
      attachments                = {}
    },
    "10-3-0-0--16" = {
      display_name               = "10-3-0-0--16"
      network_id                 = 30003
      network_template           = "Default_Network_Universal"
      network_extension_template = "Default_Network_Extension_Universal"
      vrf_name                   = "VRF1"
      network_type               = "Normal"
      gateway_ipv4_address       = "10.3.1.254/16"
      vlan_id                    = 2302
      vlan_name                  = "VLAN2302"
      layer2_only                = false
      mtu                        = 9216
      arp_suppression            = false
      ingress_replication        = false
      route_target_both          = true
      netflow                    = false
      l3_gatway_border           = true
      deploy_attachments         = false
      attachments                = {}
    }
  }
}

# ============================================================================
# Network L3 Gateway Configuration for Site2
# ============================================================================

resource "ndfc_networks" "Site2_Networks" {
  fabric_name            = "Site2"
  deploy_all_attachments = true
  networks = {
    "10-1-0-0--16" = {
      display_name               = "10-1-0-0--16"
      network_id                 = 30001
      network_template           = "Default_Network_Universal"
      network_extension_template = "Default_Network_Extension_Universal"
      vrf_name                   = "VRF1"
      network_type               = "Normal"
      gateway_ipv4_address       = "10.1.1.254/16"
      vlan_id                    = 2300
      vlan_name                  = "VLAN2300"
      layer2_only                = false
      mtu                        = 9216
      arp_suppression            = false
      ingress_replication        = false
      route_target_both          = true
      netflow                    = false
      l3_gatway_border           = true
      deploy_attachments         = false
      attachments                = {}
    },
    "10-2-0-0--16" = {
      display_name               = "10-2-0-0--16"
      network_id                 = 30002
      network_template           = "Default_Network_Universal"
      network_extension_template = "Default_Network_Extension_Universal"
      vrf_name                   = "VRF1"
      network_type               = "Normal"
      gateway_ipv4_address       = "10.2.1.254/16"
      vlan_id                    = 2301
      vlan_name                  = "VLAN2301"
      layer2_only                = false
      mtu                        = 9216
      arp_suppression            = false
      ingress_replication        = false
      route_target_both          = true
      netflow                    = false
      l3_gatway_border           = true
      deploy_attachments         = false
      attachments                = {}
    },
    "10-3-0-0--16" = {
      display_name               = "10-3-0-0--16"
      network_id                 = 30003
      network_template           = "Default_Network_Universal"
      network_extension_template = "Default_Network_Extension_Universal"
      vrf_name                   = "VRF1"
      network_type               = "Normal"
      gateway_ipv4_address       = "10.3.1.254/16"
      vlan_id                    = 2302
      vlan_name                  = "VLAN2302"
      layer2_only                = false
      mtu                        = 9216
      arp_suppression            = false
      ingress_replication        = false
      route_target_both          = true
      netflow                    = false
      l3_gatway_border           = true
      deploy_attachments         = false
      attachments                = {}
    }
  }
}

*/
