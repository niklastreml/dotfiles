if status is-interactive
    # Commands to run in interactive sessions can go here
end

source $HOME/.env.fish
starship init fish | source
set -g -x CMAKE_EXPORT_COMPILE_COMMANDS ON
if type -q ninja
    set -g -x CMAKE_GENERATOR Ninja
end
set -g -x CMAKE_BUILD_PARALLEL_LEVEL $(nproc)

bind tab complete-and-search
bind ctrl-j forward-char

set -g -x EDITOR nvim
set -g -x TERMINAL ghostty

fish_add_path $HOME/.cargo/bin
fish_add_path $HOME/.local/bin
fish_add_path $HOME/.local/go/bin
fish_add_path $HOME/.local/nvim/bin
fish_add_path $HOME/.local/krew/bin
