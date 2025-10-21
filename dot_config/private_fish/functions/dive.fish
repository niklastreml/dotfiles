function dive --wraps='docker run -ti --rm  -v /var/run/docker.sock:/var/run/docker.sock wagoodman/dive' --description 'alias dive=docker run -ti --rm  -v /var/run/docker.sock:/var/run/docker.sock wagoodman/dive'
    docker run -ti --rm  -v /var/run/docker.sock:/var/run/docker.sock wagoodman/dive $argv
end
