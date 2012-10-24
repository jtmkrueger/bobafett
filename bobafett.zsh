function bobafett() {

    echo "As you wish."

    for i in  $@; do
        if ps -ef | grep -q $i ; then 
            pkill $i
        elif id -u $i >/dev/null 2>&1; then 
            userdel $i ; fi
        else
            find -name $i -execdir shred -u {} +
    done

}


