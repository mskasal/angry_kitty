command_exists () {
    type "$1" &> /dev/null ;
}

command_exists $1