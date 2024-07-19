#!/bin/bash

# Copyright (c) 2021, NVIDIA CORPORATION. All rights reserved.
# 
# Permission is hereby granted, free of charge, to any person obtaining
# a copy of this software and associated documentation files (the
# "Software"), to deal in the Software without restriction, including
# without limitation the rights to use, copy, modify, merge, publish,
# distribute, sublicense, and/or sell copies of the Software, and to
# permit persons to whom the Software is furnished to do so, subject to
# the following conditions:
# 
# The above copyright notice and this permission notice shall be
# included in all copies or substantial portions of the Software.
# 
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
# EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
# MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
# NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
# LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
# OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
# WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

## User Credentials/Info
subscription_id="XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX" #.i.e: "ab221ca4-f098-422d-ab2f-5073b3851e68"
resource_group="your_resource_group"
workspace="your_workspace"
location="your_location" #.i.e: "southcentralus"
ngc_key="XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
email_address="your_email:" #.i.3"mreyes@nvidia.com"
acr_registry_name="your_workspace_acr_registry_name" #.i.e: 81e14b41bf1147cc93fa28eaa94818c3"

## Key Vault and Registry Info
registry_name="NVIDIA-AI-Enterprise-Preview"
keyvault_name="NGC-Credentials"

## Model/NIM pair info 
image_name=llama3_8b_nim_ncd
ngc_container="nvcr.io/nim/meta/llama3-8b-instruct:1.0.0"
endpoint_name="llama3-8b-nim-endpoint-aml-1"
endpoint_id="your_endpoint_id" #.i.e "cf824ba0-e479-4b04-a428-0e0d9d9aab3c"
deployment_name="llama3-8b-nim-deployment-aml-1"
model_name="llama3-8b-instruct-nim_a100_1"
model_version="1"
instance_type="Standard_NC48ads_A100_v4"
environment_version="3"
