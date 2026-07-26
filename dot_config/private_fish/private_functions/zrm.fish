function zrm
    set file (zk list --format "{{title}}	{{abs-path}}" --no-pager | fzf --delimiter="\t" --with-nth=1 --preview 'glow -s dark {2}')
    if test -z "$file"
        return
    end
    set path (string split -f2 \t "$file")

    if gum confirm --default=false "确定删除「$path」吗？"
        rm "$path"
        gum style --foreground 2 已删除
    else
        gum style --foreground 3 已取消
    end
end
