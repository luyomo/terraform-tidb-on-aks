 output "master_resource_group_name" {
   value = module.akscluster.resource_group_name
 }
 
 output "master_kubernetes_cluster_name" {
   value = module.akscluster.kubernetes_cluster_name
 }
 
 output "master_client_certificate" {
   value     = module.akscluster.client_certificate
   sensitive = true
 }
 
 output "master_client_key" {
   value     = module.akscluster.client_key
   sensitive = true
 }
 
 output "master_cluster_ca_certificate" {
   value     = module.akscluster.cluster_ca_certificate
   sensitive = true
 }
 
 output "master_cluster_password" {
   value     = module.akscluster.cluster_password
   sensitive = true
 }
 
 output "master_cluster_username" {
   value     = module.akscluster.cluster_username
   sensitive = true
 }
 
 output "master_host" {
   value     = module.akscluster.host
   sensitive = true
 }
 
 output "master_kube_config" {
   value     = module.akscluster.kube_config
   sensitive = true
 }

 output "master_kube_config_file" {
   value     = module.akscluster.kube_config_file
 }
