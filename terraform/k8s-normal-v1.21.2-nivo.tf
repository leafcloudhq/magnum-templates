resource "openstack_containerinfra_clustertemplate_v1" "magnum-nivo-v01" {
  name                  = "k8s-normal-v1.21.2-nivo-v0.1"
  image                 = "CoreOS-33"
  coe                   = "kubernetes"
  flavor                = "ec1.small"
  master_flavor         = "ec1.medium"
  docker_storage_driver = "overlay2"
  network_driver        = "calico"
  volume_driver         = "cinder"
  external_network_id   = "external"
  floating_ip_enabled   = false
  master_lb_enabled     = true
  public                = true

  labels = {
    kube_tag                      = "v1.21.2"
    monitoring_enabled            = "False"
    cinder_csi_enabled            = "True"
    container_infra_prefix        = "ghcr.io/stackhpc/"
    cloud_provider_tag            = "v1.20.2"
    admission_control_list        = "NodeRestriction,NamespaceLifecycle,LimitRanger,ServiceAccount,ResourceQuota,TaintNodesByCondition,Priority,DefaultTolerationSeconds,DefaultStorageClass,StorageObjectInUseProtection,PersistentVolumeClaimResize,MutatingAdmissionWebhook,ValidatingAdmissionWebhook,RuntimeClass"
    metrics_server_enabled        = "True"
    auto_healing_controller       = "magnum-auto-healer"
    magnum_auto_healer_tag        = "v1.20.0"
    master_lb_floating_ip_enabled = true
  }
}

