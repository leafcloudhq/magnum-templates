#!/bin/bash

COMMAND="openstack coe cluster create test_template_v1.2 \
    --cluster-template k8s-v1.21.2-template-v1.2.2 \
    --keypair thatcher_oatcake"

echo Executing
$COMMAND

