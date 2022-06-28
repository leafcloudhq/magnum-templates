#!/bin/bash

COMMAND="openstack coe cluster create messier22v9 \
    --cluster-template k8s-normal-v1.21.2-template-v2.0-rc5 \
    --keypair thatcher_oatcake \
    --labels auto_scaling_enabled=True,min_node_count=2,max_node_count=10 \
    --merge-labels \
    --node-count 2 \
    --master-count 1 \
    --timeout 20 \
    "

echo Executing
$COMMAND

