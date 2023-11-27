#!/bin/bash

is_empty() {
    [[ "$1" =~ ^[[:space:]]*$ ]]
}

while IFS= read -r line; do
    if is_empty "$line"; then
        echo "$line" >> zoning-creation/output.txt
    else
        read column1 column2 column3 column4 <<< "$line"
        echo "alicreate "\"$column1\", \"$column2\""" >> zoning-creation/output.txt
    fi
done < zoning-creation/input.txt

echo "============================================================" >> zoning-creation/output.txt

while IFS= read -r line; do
    if is_empty "$line"; then
        echo "$line" >> zoning-creation/output.txt
    else
        read column1 column2 column3 column4 <<< "$line"
        echo "zonecreate "\"$column1\_TO_$column3\", \"$column1\;$column3\""" >> zoning-creation/output.txt
    fi
done < zoning-creation/input.txt

echo "============================================================" >> zoning-creation/output.txt

while IFS= read -r line; do
    if is_empty "$line"; then
        echo "$line" >> zoning-creation/output.txt
    else
        read column1 column2 column3 column4 <<< "$line"
        echo "cfgadd "\"$column4\", \"$column1\_TO_$column3\""" >> zoning-creation/output.txt
    fi
done < zoning-creation/input.txt

echo "============================================================" >> zoning-creation/output.txt

echo "cfg save" >> zoning-creation/output.txt
echo "cfg enable" >> zoning-creation/output.txt
