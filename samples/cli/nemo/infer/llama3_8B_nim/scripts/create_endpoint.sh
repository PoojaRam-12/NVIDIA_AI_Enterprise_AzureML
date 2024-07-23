#!/bin/bash


source scripts/config_files/deployment_config.sh

cp scripts/auxiliary_files/endpoint_aml.yml scripts/auxiliary_files/actual_endpoint_aml.yml
sed -i "s/endpoint_name_placeholder/${nvidia-llama3-8b-nim-ep}/g" scripts/auxiliary_files/actual_endpoint_aml.yml

echo "Creating Online Endpoint ${nvidia-llama3-8b-nim-kv-ep}"
az ml online-endpoint create -f scripts/auxiliary_files/actual_endpoint_aml.yml --resource-group $resource_group --workspace-name $workspace

rm scripts/auxiliary_files/actual_endpoint_aml.yml
