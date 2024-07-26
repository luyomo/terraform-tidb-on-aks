## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >=1.0 |
| <a name="requirement_azapi"></a> [azapi](#requirement\_azapi) | ~>1.5 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | ~>3.0 |
| <a name="requirement_helm"></a> [helm](#requirement\_helm) | ~> 2.11.0 |
| <a name="requirement_random"></a> [random](#requirement\_random) | ~>3.0 |
| <a name="requirement_time"></a> [time](#requirement\_time) | 0.9.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azapi"></a> [azapi](#provider\_azapi) | ~>1.5 |
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | ~>3.0 |
| <a name="provider_local"></a> [local](#provider\_local) | n/a |
| <a name="provider_random"></a> [random](#provider\_random) | ~>3.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azapi_resource.ssh_public_key](https://registry.terraform.io/providers/azure/azapi/latest/docs/resources/resource) | resource |
| [azapi_resource_action.ssh_public_key_gen](https://registry.terraform.io/providers/azure/azapi/latest/docs/resources/resource_action) | resource |
| [azurerm_kubernetes_cluster.k8s](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/kubernetes_cluster) | resource |
| [azurerm_kubernetes_cluster_node_pool.lightning](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/kubernetes_cluster_node_pool) | resource |
| [azurerm_kubernetes_cluster_node_pool.pd](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/kubernetes_cluster_node_pool) | resource |
| [azurerm_kubernetes_cluster_node_pool.ticdc](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/kubernetes_cluster_node_pool) | resource |
| [azurerm_kubernetes_cluster_node_pool.tidb](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/kubernetes_cluster_node_pool) | resource |
| [azurerm_kubernetes_cluster_node_pool.tiflash](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/kubernetes_cluster_node_pool) | resource |
| [azurerm_kubernetes_cluster_node_pool.tikv](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/kubernetes_cluster_node_pool) | resource |
| [local_sensitive_file.kubeconfig](https://registry.terraform.io/providers/hashicorp/local/latest/docs/resources/sensitive_file) | resource |
| [random_pet.ssh_key_name](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/pet) | resource |
| [azurerm_resource_group.rg](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/resource_group) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cluster_name"></a> [cluster\_name](#input\_cluster\_name) | Cluster name ID | `string` | `"jaytest"` | no |
| <a name="input_cluster_version"></a> [cluster\_version](#input\_cluster\_version) | TiDB Cluster version | `string` | `"v6.5.4"` | no |
| <a name="input_k8s_version"></a> [k8s\_version](#input\_k8s\_version) | K8S version | `string` | `"1.25.11"` | no |
| <a name="input_kube_config_file"></a> [kube\_config\_file](#input\_kube\_config\_file) | The kube config file | `string` | `"~/"` | no |
| <a name="input_node_count"></a> [node\_count](#input\_node\_count) | The initial quantity of nodes for the node pool. | `number` | `1` | no |
| <a name="input_operator_version"></a> [operator\_version](#input\_operator\_version) | The kube config file | `string` | `"v1.5.0"` | no |
| <a name="input_pd_count"></a> [pd\_count](#input\_pd\_count) | The initial quantity of pd count. | `number` | `3` | no |
| <a name="input_register_app_client_id"></a> [register\_app\_client\_id](#input\_register\_app\_client\_id) | client id of the registered application | `string` | n/a | yes |
| <a name="input_register_app_client_secret"></a> [register\_app\_client\_secret](#input\_register\_app\_client\_secret) | client secret of the registered application | `string` | n/a | yes |
| <a name="input_resource_group"></a> [resource\_group](#input\_resource\_group) | Resource group for aks cluster | `string` | n/a | yes |
| <a name="input_resource_group_location"></a> [resource\_group\_location](#input\_resource\_group\_location) | Location of the resource group. | `string` | `"eastus"` | no |
| <a name="input_ticdc_node_count"></a> [ticdc\_node\_count](#input\_ticdc\_node\_count) | The initial quantity of nodes for the node pool. | `number` | `3` | no |
| <a name="input_tiflash_node_count"></a> [tiflash\_node\_count](#input\_tiflash\_node\_count) | The initial quantity of nodes for the node pool. | `number` | `3` | no |
| <a name="input_tikv_count"></a> [tikv\_count](#input\_tikv\_count) | The initial quantity of tikv count. | `number` | `3` | no |
| <a name="input_username"></a> [username](#input\_username) | The admin username for the new cluster. | `string` | `"azureadmin"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_client_certificate"></a> [client\_certificate](#output\_client\_certificate) | n/a |
| <a name="output_client_key"></a> [client\_key](#output\_client\_key) | n/a |
| <a name="output_cluster_ca_certificate"></a> [cluster\_ca\_certificate](#output\_cluster\_ca\_certificate) | n/a |
| <a name="output_cluster_password"></a> [cluster\_password](#output\_cluster\_password) | n/a |
| <a name="output_cluster_username"></a> [cluster\_username](#output\_cluster\_username) | n/a |
| <a name="output_host"></a> [host](#output\_host) | n/a |
| <a name="output_key_data"></a> [key\_data](#output\_key\_data) | n/a |
| <a name="output_kube_config"></a> [kube\_config](#output\_kube\_config) | n/a |
| <a name="output_kube_config_file"></a> [kube\_config\_file](#output\_kube\_config\_file) | n/a |
| <a name="output_kubernetes_cluster_name"></a> [kubernetes\_cluster\_name](#output\_kubernetes\_cluster\_name) | n/a |
| <a name="output_resource_group_name"></a> [resource\_group\_name](#output\_resource\_group\_name) | n/a |
