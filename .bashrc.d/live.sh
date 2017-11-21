# Executes command 
function live() {
    last_hash=""

    while true; do
        new_hash=$($@ 2> /dev/null | md5sum)
        if [ "$new_hash" != "$last_hash" ]; then
            last_hash=$new_hash
            clear
            $@
        fi
        sleep 0.2
    done
}
