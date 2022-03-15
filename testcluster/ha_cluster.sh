#!/bin/bash

COMMAND="openstack coe cluster create ha-cluster \
    --cluster-template k8s-normal-v1.21.2-template-v2.0-ha-beta \
    --keypair thatcher_oatcake" \
    --

echo Executing
$COMMAND

