#!/bin/bash

######################################################################
# Script Name    : azure-start-all-vms.sh
# Description    : Used to start all VMs in a subscription
# Args           : n/a
# Author         : Wellington Ozorio <well.ozorio@gmail.com>
######################################################################

# Stop execution on any error
set -e

# Start all VMs
az vm start --ids $(
  az vm list --query "[].id" --output tsv
)
