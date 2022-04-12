#!/bin/bash

COMMAND="openstack coe cluster create ha-cluster-8 \
    --cluster-template k8s-normal-v1.21.2-template-v2.0-ha-rc2 \
    --keypair thatcher_oatcake \
    --labels auto_scaling_enabled=True,min_node_count=2,max_node_count=3 \
    --merge-labels \
    --node-count 2 \
    --master-count 3 \
    --master-flavor cn1.small \
    --flavor en1.medium \
    --docker-volume-size 12
    " 

echo Executing
$COMMAND

