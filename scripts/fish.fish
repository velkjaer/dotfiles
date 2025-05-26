#!/usr/bin/env fish

function install_fisher_plugins --description "Install Fisher plugins"
    if not type -q fisher
        echo "Fisher is not installed. Please install it first."
        return 1
    end
    for plugin in \
      "jorgebucaran/fisher" \
      "danhper/fish-ssh-agent" \
      "oh-my-fish/plugin-pj" \
      "oh-my-fish/plugin-license" \
      "patrickf1/fzf.fish" \
      "jorgebucaran/nvm.fish" \
      "jorgebucaran/getopts.fish" \
      "jhillyerd/plugin-git";
      fisher install $plugin
    end
end

install_fisher_plugins