function bobafett() {

    echo "As you wish."

    if ps -ef | grep -q $1 ; then pkill $1 &&  exit; fi

    if id -u $1 >/dev/null 2>&1; then userdel $1 && exit; fi

    find -name $1 -execdir shred -u {} +
    
}
