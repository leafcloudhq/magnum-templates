resource "openstack_containerinfra_clustertemplate_v1" "magnum-20-beta" {
  name                  = "k8s-normal-v1.21.2-template-v2.0-beta"
  image                 = "fedora-coreos-33.20210426.3.0-openstack.x86_64"
  coe                   = "kubernetes"
  flavor                = "ec1.medium"
  master_flavor         = "cc1.medium"
  docker_storage_driver = "overlay2"
  docker_volume_size    = 40
  network_driver        = "calico"
  volume_driver         = "cinder"
  external_network_id   = "external"
  floating_ip_enabled   = false
  master_lb_enabled     = false
  public                = true

  labels = {
    kube_tag                      = "v1.21.2"
    monitoring_enabled            = "False"
    master_lb_floating_ip_enabled = "True"
    cinder_csi_enabled            = "True"
    container_infra_prefix        = "ghcr.io/stackhpc/"
    cloud_provider_tag            = "v1.20.2"
    admission_control_list        = "NamespaceLifecycle,ServiceAccount,DefaultStorageClass,ResourceQuota"
  }
}

