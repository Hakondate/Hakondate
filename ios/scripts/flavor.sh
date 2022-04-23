#!/bin/sh

OUTPUT_FILE="${SRCROOT}/Flutter/DartDefines.xcconfig"

function decode_url() { echo "${*}" | base64 --decode; }

: > $OUTPUT_FILE

IFS=',' read -r -a define_items <<<"$DART_DEFINES"

for index in "${!define_items[@]}"
do
    item=$(decode_url "${define_items[$index]}")
    if [ $(echo $item | grep 'FLAVOR') ] ; then
        value=${item#*=}
        echo "#include \"$value.xcconfig\"" >> $OUTPUT_FILE
    fi
done
