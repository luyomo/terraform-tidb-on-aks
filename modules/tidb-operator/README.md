## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >=1.0 |
| <a name="requirement_azapi"></a> [azapi](#requirement\_azapi) | ~>1.5 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | ~>3.0 |
| <a name="requirement_helm"></a> [helm](#requirement\_helm) | ~> 2.11.0 |
| <a name="requirement_kubectl"></a> [kubectl](#requirement\_kubectl) | >= 1.7.0 |
| <a name="requirement_random"></a> [random](#requirement\_random) | ~>3.0 |
| <a name="requirement_time"></a> [time](#requirement\_time) | 0.9.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_helm.initial"></a> [helm.initial](#provider\_helm.initial) | ~> 2.11.0 |
| <a name="provider_http"></a> [http](#provider\_http) | n/a |
| <a name="provider_kubectl"></a> [kubectl](#provider\_kubectl) | >= 1.7.0 |
| <a name="provider_kubernetes"></a> [kubernetes](#provider\_kubernetes) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [helm_release.tidb-operator](https://registry.terraform.io/providers/hashicorp/helm/latest/docs/resources/release) | resource |
| [kubectl_manifest.tidb_operator_serving_crds](https://registry.terraform.io/providers/gavinbunney/kubectl/latest/docs/resources/manifest) | resource |
| [kubernetes_namespace.tidb-admin](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/namespace) | resource |
| [kubernetes_namespace.tidb-cluster](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/namespace) | resource |
| [http_http.source_crds](https://registry.terraform.io/providers/hashicorp/http/latest/docs/data-sources/http) | data source |
| [kubectl_file_documents.tidb_operator_crds](https://registry.terraform.io/providers/gavinbunney/kubectl/latest/docs/data-sources/file_documents) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_base_values"></a> [base\_values](#input\_base\_values) | n/a | `string` | `""` | no |
| <a name="input_client_certificate"></a> [client\_certificate](#input\_client\_certificate) | endpoint | `string` | n/a | yes |
| <a name="input_client_key"></a> [client\_key](#input\_client\_key) | endpoint | `string` | n/a | yes |
| <a name="input_cluster_ca_cert"></a> [cluster\_ca\_cert](#input\_cluster\_ca\_cert) | endpoint | `string` | n/a | yes |
| <a name="input_cluster_endpoint"></a> [cluster\_endpoint](#input\_cluster\_endpoint) | endpoint | `string` | n/a | yes |
| <a name="input_cluster_name"></a> [cluster\_name](#input\_cluster\_name) | Cluster name ID | `string` | `"jaytest"` | no |
| <a name="input_cluster_version"></a> [cluster\_version](#input\_cluster\_version) | TiDB Cluster version | `string` | `"v6.5.4"` | no |
| <a name="input_k8s_version"></a> [k8s\_version](#input\_k8s\_version) | K8S version | `string` | `"1.25.11"` | no |
| <a name="input_kube_config"></a> [kube\_config](#input\_kube\_config) | kube config content | `string` | n/a | yes |
| <a name="input_kube_config_file"></a> [kube\_config\_file](#input\_kube\_config\_file) | The kube config file | `string` | `"~/"` | no |
| <a name="input_msi_id"></a> [msi\_id](#input\_msi\_id) | The Managed Service Identity ID. Set this value if you're running this example using Managed Identity as the authentication method. | `string` | `null` | no |
| <a name="input_node_count"></a> [node\_count](#input\_node\_count) | The initial quantity of nodes for the node pool. | `number` | `1` | no |
| <a name="input_operator_version"></a> [operator\_version](#input\_operator\_version) | The kube config file | `string` | `"v1.6.0"` | no |
| <a name="input_override_values"></a> [override\_values](#input\_override\_values) | n/a | `string` | `""` | no |
| <a name="input_pd_count"></a> [pd\_count](#input\_pd\_count) | The initial quantity of pd count. | `number` | `3` | no |
| <a name="input_resource_group_location"></a> [resource\_group\_location](#input\_resource\_group\_location) | Location of the resource group. | `string` | `"eastus"` | no |
| <a name="input_resource_group_name_prefix"></a> [resource\_group\_name\_prefix](#input\_resource\_group\_name\_prefix) | Prefix of the resource group name that's combined with a random ID so name is unique in your Azure subscription. | `string` | `"rg"` | no |
| <a name="input_ticdc_node_count"></a> [ticdc\_node\_count](#input\_ticdc\_node\_count) | The initial quantity of nodes for the node pool. | `number` | `3` | no |
| <a name="input_tidb_cluster_chart_version"></a> [tidb\_cluster\_chart\_version](#input\_tidb\_cluster\_chart\_version) | tidb-cluster chart version | `string` | `"v1.6.0"` | no |
| <a name="input_tikv_count"></a> [tikv\_count](#input\_tikv\_count) | The initial quantity of tikv count. | `number` | `3` | no |
| <a name="input_username"></a> [username](#input\_username) | The admin username for the new cluster. | `string` | `"azureadmin"` | no |

## Outputs

No outputs.
