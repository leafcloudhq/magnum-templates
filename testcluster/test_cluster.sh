#!/bin/bash

COMMAND="openstack coe cluster create testcluster2 \
    --cluster-template k8s-normal-v1.21.2-template-v2.0-beta4 \
    --keypair thatcher_oatcake"

echo Executing
$COMMAND

