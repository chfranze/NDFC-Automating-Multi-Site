# ============================================================================
# Site1 Fabric Inventory
# ============================================================================

resource "ndfc_inventory_devices" "Site1_devices" {
  fabric_name                               = "Site1"
  auth_protocol                             = "md5"
  username                                  = "admin"
  password                                  = "Cisco123"
  max_hops                                  = 0
  set_as_individual_device_write_credential = false
  preserve_config                           = false
  save                                      = true
  deploy                                    = false
  retries                                   = 300
  retry_wait_timeout                        = 20
  devices = {
    "10.199.101.101" = {
      role                    = "border"
      discovery_type          = "discover"
      discovery_auth_protocol = "md5"
    },
    "10.199.101.102" = {
      role                    = "leaf"
      discovery_type          = "discover"
      discovery_auth_protocol = "md5"
    },
    "10.199.101.201" = {
      role                    = "border_gateway_spine"
      discovery_type          = "discover"
      discovery_auth_protocol = "md5"
    }
  }
}

# ============================================================================
# Site2 Fabric Inventory
# ============================================================================

resource "ndfc_inventory_devices" "Site2_devices" {
  fabric_name                               = "Site2"
  auth_protocol                             = "md5"
  username                                  = "admin"
  password                                  = "Cisco123"
  max_hops                                  = 0
  set_as_individual_device_write_credential = false
  preserve_config                           = false
  save                                      = true
  deploy                                    = false
  retries                                   = 300
  retry_wait_timeout                        = 20
  devices = {
    "10.199.101.103" = {
      role                    = "leaf"
      discovery_type          = "discover"
      discovery_auth_protocol = "md5"
    },
    "10.199.101.104" = {
      role                    = "leaf"
      discovery_type          = "discover"
      discovery_auth_protocol = "md5"
    },
    "10.199.101.202" = {
      role                    = "border_gateway_spine"
      discovery_type          = "discover"
      discovery_auth_protocol = "md5"
    }
  }
}

# ============================================================================
# DCI Fabric Inventory
# ============================================================================

resource "ndfc_inventory_devices" "DCI_devices" {
  fabric_name                               = "DCI"
  auth_protocol                             = "md5"
  username                                  = "admin"
  password                                  = "Cisco123"
  max_hops                                  = 0
  set_as_individual_device_write_credential = false
  preserve_config                           = false
  save                                      = true
  deploy                                    = false
  retries                                   = 300
  retry_wait_timeout                        = 20
  devices = {
    "10.199.101.203" = {
      role                    = "edge_router"
      discovery_type          = "discover"
      discovery_auth_protocol = "md5"
    },
    "10.199.101.204" = {
      role                    = "edge_router"
      discovery_type          = "discover"
      discovery_auth_protocol = "md5"
    }
  }
}