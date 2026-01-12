if status is-interactive
    # Commands to run in interactive sessions can go here
end

source $HOME/.env.fish
test -f $HOME/.config/fish/completions/kubectl_aliases.fish && source $HOME/.config/fish/completions/kubectl_aliases.fish
set -q KREW_ROOT; and set -gx PATH $PATH $KREW_ROOT/.krew/bin; or set -gx PATH $PATH $HOME/.krew/bin

starship init fish | source
set -g -x CMAKE_EXPORT_COMPILE_COMMANDS ON
if type -q ninja
    set -g -x CMAKE_GENERATOR Ninja
end
set -g -x CMAKE_BUILD_PARALLEL_LEVEL $(nproc)

function fish_user_key_bindings
    bind tab complete-and-search
    bind ctrl-j forward-char
    bind ctrl-h backward-kill-path-component
end 

set -g -x EDITOR nvim
set -g -x TERMINAL ghostty
set -g -x GOBIN $HOME/.local/bin

fish_add_path $HOME/.cargo/bin
fish_add_path $HOME/.local/bin
fish_add_path $HOME/.local/go/bin
fish_add_path $HOME/.local/nvim/bin
fish_add_path $HOME/.local/krew/bin

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH
