#!/usr/bin/env bash


function install_docker_plugins() {
    # Thanks to https://github.com/abiosoft/colima/discussions/273#discussioncomment-4959736
    mkdir -p ~/.docker/cli-plugins
    if [[ ! -L "${HOME}/.docker/cli-plugins/docker-buildx" ]]; then
        echo "Installing docker-buildx plugin..."
        ln -sfn "$(which docker-buildx)" ${HOME}/.docker/cli-plugins/docker-buildx
        docker buildx install # To keep using the `docker build` install but with buildkit: https://docs.docker.com/engine/reference/commandline/buildx_install/
    fi 

    if [[ ! -L "${HOME}/.docker/cli-plugins/docker-compose" ]]; then
        echo "Installing docker-compose plugin..."
        ln -sfn "$(which docker-compose)" ${HOME}/.docker/cli-plugins/docker-compose
    fi
}

install_docker_plugins
