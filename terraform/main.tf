terraform {
  required_version = ">= 1.0"
  
  required_providers {
    ndfc = {
      source  = "CiscoDevNet/ndfc"
      version = ">= 0.2.1"
    }
  }
}

provider "ndfc" {
  username = var.ndfc_username
  password = var.ndfc_password
  url      = var.ndfc_host
  insecure = true
}

# ============================================================================
# Variables
# ============================================================================

variable "ndfc_host" {
  description = "NDFC controller URL (e.g., https://10.199.101.100)"
  type        = string
  default     = "https://10.199.101.100"
}

variable "ndfc_username" {
  description = "NDFC controller username"
  type        = string
  sensitive   = true
  default     = "admin"
}

variable "ndfc_password" {
  description = "NDFC controller password"
  type        = string
  sensitive   = true
  default     = "Cisco123"
}
