resource "openstack_containerinfra_clustertemplate_v1" "magnum-20-beta7" {
  name                  = "k8s-normal-v1.21.2-template-v2.0-beta7"
  image                 = "CoreOS-33"
  coe                   = "kubernetes"
  flavor                = "ec1.medium"
  master_flavor         = "cc1.medium"
  docker_storage_driver = "overlay2"
  docker_volume_size    = 40
  network_driver        = "calico"
  volume_driver         = "cinder"
  external_network_id   = "external"
  floating_ip_enabled   = true
  master_lb_enabled     = false
  public                = true

  labels = {
    kube_tag                = "v1.21.2"
    monitoring_enabled      = "False"
    cinder_csi_enabled      = "True"
    container_infra_prefix  = "ghcr.io/stackhpc/"
    cloud_provider_tag      = "v1.20.2"
    admission_control_list  = "NodeRestriction,PodSecurityPolicy,NamespaceLifecycle,LimitRanger,ServiceAccount,ResourceQuota,TaintNodesByCondition,Priority,DefaultTolerationSeconds,DefaultStorageClass,StorageObjectInUseProtection,PersistentVolumeClaimResize,MutatingAdmissionWebhook,ValidatingAdmissionWebhook,RuntimeClass"
    boot_volume_size        = 20
    boot_volume_type        = "encrypted"
    metrics_server_enabled  = "True"
    auto_healing_controller = "magnum-auto-healer"
    magnum_auto_healer_tag  = "v1.20.0"
  }
}

