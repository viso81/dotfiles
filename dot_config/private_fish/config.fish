if status is-interactive
    # Commands to run in interactive sessions can go here

    starship init fish | source

    alias ll 'eza -l --icons'
    alias ls 'eza --icons'
    alias lt 'eza --tree --level=2 --icons'

    alias bat="bat-smart"
    alias hx="helix"
    alias hxc="chezmoi edit"
end

# 配置zk
set -gx ZK_NOTEBOOK_DIR "$HOME/Wiki"
set -gx EDITOR helix
set -gx VISUAL helix
