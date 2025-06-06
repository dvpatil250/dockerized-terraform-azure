#!/bin/bash
cd /workspace

if ls *.tf 1> /dev/null 2>&1; then
    az login --use-device-code

    if [ "$1" == "destroy" ]; then
        terraform destroy -auto-approve
    else
        terraform init
        terraform apply -auto-approve
    fi
else
    echo "No Terraform files found in /workspace."
fi

exec bash

