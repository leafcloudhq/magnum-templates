#!/bin/bash

COMMAND="openstack coe cluster create testcluster2 \
    --cluster-template k8s-normal-v1.21.2-template-v2.0-beta7 \
    --keypair thatcher_oatcake \
    --labels auto_healing_enabled=True \
    --merge-labels \
    "

echo Executing
$COMMAND

