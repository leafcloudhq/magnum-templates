#!/bin/bash

COMMAND="openstack coe cluster create ha-cluster-6 \
    --cluster-template k8s-normal-v1.21.2-template-v2.0-ha-beta6 \
    --keypair thatcher_oatcake \
    --labels auto_scaling_enabled=True,min_node_count=2,max_node_count=10 \
    --merge-labels \
    --node-count 2 \
    --master-count 3 \
    --master-flavor en1.small \
    --flavor en1.medium \
    --docker-volume-size 12
    " 

echo Executing
$COMMAND

