#!/bin/bash
arg="$1"


# if status is passed, return the current power profile
# else if toggle, then cycle to next profile

function handle_toggle {
    current=$(powerprofilesctl get)
    profiles=($(powerprofilesctl list | sed -n 's/^[ *]*\([a-z-]*\):.*/\1/p'))
    for i in "${!profiles[@]}"; do
        if [[ "${profiles[$i]}" == "$current" ]]; then
            next=$(( (i + 1) % ${#profiles[@]} ))
            powerprofilesctl set "${profiles[$next]}"
            break
        fi
    done
}

function handle_status {
    mode=$(powerprofilesctl get)
    cat << EOF
{"alt": "$mode", "text": "$mode"}
EOF
}

if [[ "$arg" == "status" ]]; then
    handle_status
fi

if [[ "$arg" == "toggle" ]]; then
    handle_toggle
fi

