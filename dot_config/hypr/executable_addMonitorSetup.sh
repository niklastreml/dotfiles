#!/bin/bash

usage() {
  echo "Usage: $0 [-f]"
  echo "  -f    Force overwrite if the output file already exists"
  echo "  -h    Show this help message"
}

FORCE=0

# Parse options
while getopts "fh" opt; do
  case "$opt" in
    f) FORCE=1 ;;
    h) usage; exit 0 ;;
    *) usage; exit 1 ;;
  esac
done

# Get monitors from hyprctl
monitors=$(hyprctl monitors | grep '^Monitor.*:$' | cut -c9- | rev | cut -c9- | rev | sed 's/^/#   /')

# Hyprland monitor template
template=$(cat <<'EOF'
$mainMonitor=<REPLACEME>
$sideMonitor=<REPLACEME>
monitor=$mainMonitor,preferred,0x0,1
monitor=$sideMonitor,preferred,auto-right,1
monitor=,preferred,auto,1 # connect any monitor
EOF
)

filename="monitors-$(hostname).conf"

# Check if file exists
if [[ -e "$filename" && $FORCE -ne 1 ]]; then
  echo "Error: $filename already exists. Use -f to overwrite."
  exit 1
fi

# Write output
{
  echo "# These monitors were found:"
  echo "$monitors"
  printf '%s\n' "$template"
} > "$filename"

echo "Monitor configuration written to $filename"

