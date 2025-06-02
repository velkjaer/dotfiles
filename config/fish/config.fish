if status is-interactive
    # Commands to run in interactive sessions can go here
    

    # GitHub Settings
    export GITHUB_USERNAME="velkjaer"
    export HISTTIMEFORMAT="%F %T "

    # Helm stuff
    export HELM_EXPERIMENTAL_OCI=1

    # Abbreviations
    abbr k kubectl
    abbr ktx kubectx
    abbr kns kubens
    abbr tf terraform
    abbr d docker
    abbr dco docker-compose
    abbr ghce "gh copilot explain"  
    abbr ghcs "gh copilot suggest"

    alias rm="rm -i"
    alias cat="bat"

    if type -q starship
        starship init fish | source    
    end
    
    if type -q thefuck
        thefuck --alias | source
    end
    
    if type -q pyenv
        pyenv init - | source
        source (pyenv virtualenv-init -| psub)
    end
end
