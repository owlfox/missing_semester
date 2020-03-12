#!env bash
v1="A string"
echo "$v1 is a string, time is $(date)"
echo $@;

# Implementation of ls?

marco () {
    export THE_PLACE=$(pwd)
}

polo () {
    cd $THE_PLACE
}
