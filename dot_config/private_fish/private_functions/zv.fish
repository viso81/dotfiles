function zv
    set selection (zk list --format "{{title}}	{{abs-path}}" --no-pager | fzf --delimiter="\t" --with-nth=1 --preview 'glow -s pink {2}')
    if test -z "$selection"
        return
    end
    set file (string split -f2 \t "$selection")
    #   pandoc "$file" -s --css=$HOME/.config/pandoc-css/themes/nerd-theme/everforest.css --embed-resources --standalone -o /tmp/zk-preview.html --mathjax
    #   xdg-open /tmp/zk-preview.html
    glow -s dark -p "$file"
end
