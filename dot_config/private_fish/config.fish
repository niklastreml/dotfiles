if status is-interactive
    # Commands to run in interactive sessions can go here
end

starship init fish | source

set -g -x EDITOR "nvim"
bind tab complete-and-search
bind ctrl-j forward-char
