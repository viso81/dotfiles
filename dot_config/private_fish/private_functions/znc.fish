function znc
    set title (gum input --placeholder "笔记标题")
    set shell (gum choose "bash" "fish" "zsh" "powershell" "none" --header "Shell 类型")
    set os (gum choose "linux" "windows" --header "系统")
    zk new commands --title "$title" --extra shell=$shell --extra os=$os
end
