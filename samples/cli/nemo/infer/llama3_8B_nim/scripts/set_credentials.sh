#!/bin/bash

source scripts/config_files/deployment_config.sh
az login

az account set -s ${80c77c76-74ba-4c8c-8229-4c3b2957990c} 

echo "az configure --defaults group=${huggingface-registry-test1} workspace=${test-eastus}"
az configure --defaults group=${huggingface-registry-test1} workspace=${test-eastus}
