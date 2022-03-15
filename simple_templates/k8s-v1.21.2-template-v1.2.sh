#!/bin/bash

NAME=k8s-v1.21.2-template-v1.2.3

LABELS="
kube_tag=v1.21.2,
monitoring_enabled=False,
master_lb_floating_ip_enabled=True,
cinder_csi_enabled=True,
container_infra_prefix=ghcr.io/stackhpc/,
cloud_provider_tag=v1.20.2,
admission_control_list=NamespaceLifecycle,ServiceAccount,DefaultStorageClass,ResourceQuota
"

# admission_control_list='\"NamespaceLifecycle\,LimitRanger\,ServiceAccount\,DefaultStorageClass\,ResourceQuota\"

CLEAN_LABELS=${LABELS//[[:space:]]/}

echo $CLEAN_LABELS

# exit 0

COMMAND="openstack coe cluster template create ${NAME} \
   --image fedora-coreos-33.20210426.3.0-openstack.x86_64 \
   --external-network external \
   --flavor m1.medium \
   --master-flavor cn1.small \
   --flavor ec1.medium \
   --network-driver calico \
   --coe kubernetes \
   --docker-storage-driver overlay2 \
   --volume-driver cinder \
   --docker-volume-size 20 \
   --labels ${CLEAN_LABELS} \
   --public \
   --hidden
   "

echo Executing
echo $COMMAND

$COMMAND

