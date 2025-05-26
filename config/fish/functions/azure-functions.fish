###################
#  Azure Functions
###################


## Subscriptions
function list-subscriptions
    az account list | jq -r '.[] | "\(.id)\t\t\(.name)"'
end


## KeyVault

# List secrets
function list-secrets --description "list-secrets <vault-name>"
    az keyvault secret list --vault-name $argv | jq -r '.[] | "\(.attributes.created) \(.name)"' | col
end

# Get secret
function get-secret --description "get-secret <vault-name> <secret-name>"
    az keyvault secret show --vault-name $argv[1] --name $argv[2] | jq -r '. | "\(.value)"' | col
end

# Delete secret
function delete-secret --description "delete-secret <vault_name> <secret_name>"
    az keyvault secret delete --vault-name $argv[1] --name $argv[2]
end

# Purge secret
function purge-secret --description "purge-secret <vault_name> <secret_name>"
    az keyvault secret purge --vault-name $argv[1] --name $argv[2]
end

## AD

# List all AD 
function list-ad-groups
    az ad group list | jq -r '.[] | "ObjectId: \(.objectId)\t\tGroup: \(.displayName)"'
end
# List members of AD group
function list-ad-groupmembers --description "list-ad-groupmembers DevOops"
    az ad group member list --group $argv[1] | jq -r '.[] | .displayName'
end

## Network
function list-vnets --description "list-vnets [ --subscription SUBSCRIPTION_ID ]"
    az network vnet list $argv | jq -r '.[] | "\(.addressSpace.addressPrefixes[]) \t\t \(.name)"'
end

function list-subnets --description "list-subnets <resource-group> <vnet-name>"
    az network vnet subnet list -g $argv[1] --vnet-name $argv[2] | jq -r '.[] | "\(.addressPrefix) \t\t \(.name)"'
end

function list-vm-ips --description "list-vm-ips <resource-group> <vm-name>"
    az vm list-ip-addresses -g $argv[1] --name $argv[2] | jq -r '.[].virtualMachine.network | "privateIP: \(.privateIpAddresses[]) \t\tpublicIP: \(.publicIpAddresses[].ipAddress)"'
end

function get-aks-creds
    az aks get-credentials -g $argv-kubernetes -n $argv --overwrite-existing
end

function switch-subscription --description "switch-subscription <subscription-id>"
    az account set --subscription $argv
end

function list-acr-repository-tags --description "image-repository-tags <image-repository>"
    az acr repository show-tags --name corti --repository "$argv" --output table
end

function refresh-azure-login --description "refresh-azure-login [--use-device-code]"
    az logout && az login
end

