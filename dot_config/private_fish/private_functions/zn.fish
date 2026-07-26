function zn
    set selection (zk list --format "{{title}}	{{abs-path}}" --no-pager | fzf --delimiter="\t" --with-nth=1 --preview 'glow -s pink {2}')
    if test -z "$selection"
        return
    end
    set file (string split -f2 \t "$selection")
    helix "$file"
end
