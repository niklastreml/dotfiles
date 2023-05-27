source ~/.zplug/init.zsh

zplug "plugins/git",   from:oh-my-zsh
zplug "plugins/kubectl",   from:oh-my-zsh
zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug romkatv/powerlevel10k, as:theme, depth:1

if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

zplug load