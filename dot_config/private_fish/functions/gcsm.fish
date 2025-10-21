function gcsm --wraps='gcs -m' --wraps='git commit --signoff -m' --description 'alias gcsm=git commit --signoff -m'
    git commit --signoff -m $argv
end
