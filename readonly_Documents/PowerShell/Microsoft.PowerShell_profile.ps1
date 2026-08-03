# $env:PATH += ";$env:USERPROFILE\Documents\PowerShell\Scripts"


# zk 默认知识库 
$env:ZK_NOTEBOOK_DIR = "D:\Wiki"
# zk 编辑器设置为helix
$env:ZK_EDITOR = "hx"
# zk 默认浏览工具
$env:PAGER = "bat"

# 命令历史和tab补全设置
Set-PSReadLineOption -PredictionSource HistoryAndPlugin
Set-PSReadLineOption -PredictionViewStyle ListView
Set-PSReadLineKeyHandler -Key Tab -Function MenuComplete
Set-PSReadLineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadLineKeyHandler -Key DownArrow -Function HistorySearchForward


$env:SHELL = "C:\Program Files\Git\bin\bash.exe"


# oh-my-posh 主题
oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\pure.omp.json" | Invoke-Expression


# 删除系统自带的ls别名
if(Test-Path Alias:ls) { Remove-Item Alias:ls -Force }
# 基础 ls -> eza
function ls { eza --icons --group-directories-first @args }
function ll { eza -l --icons --git --group-directories-first @args }
function lt { eza --tree --level=2 --icons --group-directories-first @args }
