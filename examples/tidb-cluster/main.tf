variable "register_app_client_id" {}
variable "register_app_client_secret" {}

module "akscluster" {
    source = "../../modules/aks"

    cluster_name    = var.cluster_name                                 # Cluster Name
    resource_group  = "jp-presale-test"                                # resource group name in which AKS is created
    k8s_version     = "1.30.0"                                         # K8S version

    tiflash_node_count = 2

    register_app_client_id     = "${var.register_app_client_id}"       # Azure APP Registration client id
    register_app_client_secret = "${var.register_app_client_secret}"   # Azure APP Registration secret id
    kube_config_file           = "/tmp/master_kubeconfig"              # K8S Config file 
}

module "tidbcluster" {
    # depends_on = [module.masteraks]

    source = "../../modules/tidb-operator"

    cluster_name = var.cluster_name                                    # Cluster Name 
    cluster_version = "v7.5.2"                                         # TiDB Version


    kube_config        = module.akscluster.kube_config
    cluster_ca_cert    = module.akscluster.cluster_ca_certificate
    client_certificate = module.akscluster.client_certificate
    client_key         = module.akscluster.client_key
    cluster_endpoint   = module.akscluster.host

}
