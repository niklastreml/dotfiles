if status is-interactive
    # Commands to run in interactive sessions can go here
end

starship init fish | source
set -g -x CMAKE_EXPORT_COMPILE_COMMANDS ON
if type -q ninja
    set -g -x CMAKE_GENERATOR Ninja
end
set -g -x CMAKE_BUILD_PARALLEL_LEVEL $(nproc)

set -g -x EDITOR nvim
set -g -x TERMINAL ghostty
bind tab complete-and-search
bind ctrl-j forward-char
