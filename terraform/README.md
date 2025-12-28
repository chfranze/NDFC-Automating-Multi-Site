# NDFC VXLAN EVPN Fabric Creation with Terraform

This Terraform configuration automates the creation of VXLAN EVPN fabrics on Cisco Nexus Dashboard Fabric Controller (NDFC).

## Prerequisites

- Terraform >= 1.0
- Cisco DCNM Terraform Provider
- Network connectivity to NDFC controller (default: 10.199.101.100)

## Installation

1. Initialize Terraform:
```bash
cd terraform
terraform init
```

2. Install the Cisco DCNM provider (automatically handled by `terraform init`):
```bash
terraform init
```

## Configuration

### Variables

The main configuration variables are defined in `variables.tf`:

- `ndfc_host`: NDFC controller IP address (default: 10.199.101.100)
- `ndfc_username`: NDFC controller username (default: admin)
- `ndfc_password`: NDFC controller password (sensitive variable)
- `fabrics`: List of fabric configurations

### Fabric Parameters

#### Site1
- **Name**: Site1
- **BGP ASN**: 65001
- **Underlay Routing Loopback**: 10.12.0.0/22
- **Underlay VTEP Loopback**: 10.13.0.0/22
- **Underlay Subnet**: 10.14.0.0/22

#### Site2
- **Name**: Site2
- **BGP ASN**: 65002
- **Underlay Routing Loopback**: 10.22.0.0/22
- **Underlay VTEP Loopback**: 10.23.0.0/22
- **Underlay Subnet**: 10.24.0.0/22

## Usage

### 1. Plan the Deployment

Review the changes Terraform will make:

```bash
terraform plan
```

### 2. Apply the Configuration

Create the VXLAN EVPN fabrics:

```bash
terraform apply
```

Confirm the changes when prompted.

### 3. Verify the Deployment

View the created fabric details:

```bash
terraform show
```

Or view the specific outputs:

```bash
terraform output created_fabrics
```

## File Structure

```
terraform/
├── main.tf                 # Main Terraform configuration
├── variables.tf            # Variable definitions
├── terraform.tfvars        # Variable values (credentials)
├── .gitignore             # Git ignore file
├── .terraform.lock.hcl    # Dependency lock file (auto-generated)
└── README.md              # This file
```

## Important Notes

1. **Credentials**: The `terraform.tfvars` file contains sensitive information. Add it to `.gitignore` and never commit it to version control.

2. **State File**: Terraform creates a state file (`terraform.tfstate`) that tracks the resources. Keep this secure and consider using remote state in production.

3. **Provider Version**: This configuration uses `dcnm` provider version ~> 2.0. Check the [Cisco DCNM Terraform Provider](https://registry.terraform.io/providers/CiscoDevNet/dcnm/latest) documentation for updates.

## Troubleshooting

### Provider Installation Issues

If you encounter provider download issues:

```bash
terraform init -upgrade
```

### Connection Issues

Verify NDFC connectivity:

```bash
ping 10.199.101.100
```

Ensure credentials are correct in `terraform.tfvars`.

### Destroy Resources

To remove all created fabrics:

```bash
terraform destroy
```

Confirm when prompted.

## Additional Resources

- [Cisco DCNM Terraform Provider Documentation](https://registry.terraform.io/providers/CiscoDevNet/dcnm/latest)
- [Terraform Documentation](https://www.terraform.io/docs)
