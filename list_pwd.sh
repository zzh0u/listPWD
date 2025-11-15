#!/usr/bin/env zsh

# listPWD - 自动在目录切换后显示目录内容
# 将此文件 source 到您的 .zshrc 中即可使用

# 加载钩子管理器
autoload -Uz add-zsh-hook

# 目录变动后自动 lsd -l（带保护）
list_pwd() {
    # 1. 非交互式直接返回
    [[ -o interactive ]] || return

    # 2. 耗时目录跳过：文件数>200 或当前路径是网络挂载
    local n=$(ls -1 2>/dev/null | wc -l)
    (( n > 200 )) && return
    mount | grep -q " on ${PWD} " && return   # 简单判断挂载点，可再细化

    # 3. 保留原命令的退出码
    local ret=$?
    lsd -l
    return $ret
}

# 挂到 chpwd 钩子
add-zsh-hook chpwd list_pwd
