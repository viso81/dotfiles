if status is-interactive
    # Commands to run in interactive sessions can go here

    starship init fish | source

    alias ll 'eza -l --icons=auto'
    alias ls 'eza --icons=auto'
    alias lt 'eza --tree --level=2 --icons=auto'

    alias bat="bat-smart"
    alias hx="helix"

    function neomutt
        env LANG=zh_CN.utf8 neomutt $argv
    end
    alias mail-live="neomutt -F ~/.config/neomutt/neomuttrc"
    alias mail-qq="neomutt -F ~/.config/neomutt/qq-nemuttrc"
    # alias hxc="EDITOR=helix chezmoi edit"
    function hxc --wraps='chezmoi edit' --description 'alias hxc=EDITOR=helix chezmoi edit'
        EDITOR=helix chezmoi edit $argv
    end
end

# 配置zk
set -gx ZK_NOTEBOOK_DIR "$HOME/Wiki"
set -gx EDITOR helix
set -gx VISUAL helix
