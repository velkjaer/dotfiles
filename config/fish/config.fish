if status is-interactive
    # Commands to run in interactive sessions can go here
    # GitHub Settings
    export GITHUB_USERNAME="velkjaer"
    export HISTTIMEFORMAT="%F %T "

    # Helm stuff
    export HELM_EXPERIMENTAL_OCI=1

    # Keybindings
    set -g fish_key_bindings fish_vi_key_bindings

    # Abbreviations
    abbr k kubectl
    abbr ktx kubectx
    abbr kns kubens
    abbr tf terraform
    abbr d docker
    abbr clm colima
    abbr clmu colima start
    abbr clmd colima stop
    abbr cons "code $HOME/Code/NewSage/newsage.code-workspace" 
    abbr codf "code $HOME/dotfiles"
    abbr dco docker-compose
    abbr ghce "gh copilot explain"  
    abbr ghcs "gh copilot suggest"

    alias claudec "npx @anthropic-ai/claude-code"
    alias rm="rm -i"
    alias cat="bat"
    alias npm="pnpm"

    starship init fish | source    

end