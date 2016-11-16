function f {
    [ $# -ne 1 ] && return 1

    if [ -s "$GOPATH/src/github.com/fromatob/$1" ]; then
        cd "$GOPATH/src/github.com/fromatob/$1"
    else
        cd "fromAtoB/$1"
    fi
}
