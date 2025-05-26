
## Get the SSH config for the dev environment
function fetch-devenv-ssh-config --description fetch-devenv-ssh-config
    for region in northeurope eastus
        bash "$DEPLOYMENTS_TOOLING_REPOSITORY_PATH/scripts/get-devenv-ssh-config.sh" $region
    end
end
