function bobafett() {

    echo "As you wish."

    for i in  $@; do
        if pgrep -f $i >/dev/null 2>&1;then
            pkill $i
        elif id -u $i >/dev/null 2>&1;then
            userdel $i
        else
            find -name $i -execdir shred -u {} +
        fi
    done

}



