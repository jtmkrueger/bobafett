function bobafett() {

    echo "As you wish."

    if ps -ef | grep -q $1 ; then pkill $1 &&  return; fi

    if id -u $1 >/dev/null 2>&1; then userdel $1 && return; fi

    find -name $1 -execdir shred -u {} +
    
}
