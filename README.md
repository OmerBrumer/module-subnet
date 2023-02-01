<!-- BEGIN_TF_DOCS -->

# Subnet module
There's an option to associate Route Table and NSG to the Subnet

## Examples
```hcl
module "subnet" {
  source = "./subnet"

  virtual_network_name      = "brumer-final-terraform-hub-vnet"
  resource_group_name       = "brumer-final-terraform-hub-rg"
  location                  = "West-Europe"
  subnet_name               = "EndpointSubnet"
  subnet_address_prefix     = "10.0.4.0/26"
  route_table_id            = "/subscriptions/d94fe338-52d8-4a44-acd4-4f8301adf2cf/resourceGroups/brumer-final-terraform-hub-rg/providers/Microsoft.Network/routeTables/brumer-final-terraform-hub-firewall-routetable"
  network_security_group_id = "/subscriptions/d94fe338-52d8-4a44-acd4-4f8301adf2cf/resourceGroups/brumer-final-terraform-hub-rg/providers/Microsoft.Network/networkSecurityGroups/brumer-final-terraform-hub-nsg"
}
```

#### Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |

#### Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | Id of subnet. |
| <a name="output_name"></a> [name](#output\_name) | Name of subnet. |
| <a name="output_object"></a> [object](#output\_object) | Object of subnet. |

#### Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_location"></a> [location](#input\_location) | (Required)The location to keep all your network resources. To get the list of all locations with table format from azure cli, run 'az account list-locations -o table'. | `string` | n/a | yes |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | (Required)A container that holds related resources for an Azure solution. | `string` | n/a | yes |
| <a name="input_subnet_address_prefixes"></a> [subnet\_address\_prefixes](#input\_subnet\_address\_prefixes) | (Required)Subnet address prefix. | `list(string)` | n/a | yes |
| <a name="input_subnet_name"></a> [subnet\_name](#input\_subnet\_name) | (Required)Subnet name. | `string` | n/a | yes |
| <a name="input_virtual_network_name"></a> [virtual\_network\_name](#input\_virtual\_network\_name) | (Required)Virtual network name to attach the subnet. | `string` | n/a | yes |
| <a name="input_network_security_group_id"></a> [network\_security\_group\_id](#input\_network\_security\_group\_id) | (Optional)Id of network security group to associate to the subnet. | `string` | `null` | no |
| <a name="input_route_table_id"></a> [route\_table\_id](#input\_route\_table\_id) | (Optional)Id of route table to associate to the subnet. | `string` | `null` | no |



# Authors
Originally created by Omer Brumer
<!-- END_TF_DOCS -->