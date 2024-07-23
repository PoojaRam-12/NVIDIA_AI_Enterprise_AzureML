#!/bin/bash
set -x

source scripts/config_files/deployment_config.sh

echo "az keyvault create --name ${nvidia-llama3-8b-nim-kv} --resource-group ${huggingface-registry-test1} --location ${eastus}"
az keyvault create --name ${nvidia-llama3-8b-nim-kv} --resource-group ${huggingface-registry-test1} --location ${eastus}
az role assignment create --role "Key Vault Secrets User" --assignee ${v-poojr@microsoft.com}  --scope "/subscriptions/${80c77c76-74ba-4c8c-8229-4c3b2957990c}/resourceGroups/${huggingface-registry-test1}/providers/Microsoft.KeyVault/vaults/${nvidia-llama3-8b-nim-kv}"
az keyvault secret set --vault-name ${nvidia-llama3-8b-nim-kv} --name "nvidia-NGC-KEY" --value ${ngc_key}
az keyvault secret show --vault-name ${nvidia-llama3-8b-nim-kv}  --name "nvidia-NGC-KEY"
