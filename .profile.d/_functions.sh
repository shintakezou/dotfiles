#-*- mode: sh -*-

function each {
    find=$1 ; shift
    for found in $(find $PWD -name $find); do
        dir=$(dirname $found)
        pushd "$dir" >/dev/null
        echo $dir && $@
        popd >/dev/null
    done
}