#!/bin/bash
IN_FILE='./zoning_info.txt'
while read -ra LINE
do
        a="${LINE[0]}"; b="${LINE[1]}";
        echo -e "alicreate "\"$b\",\"$a\""" >> output.txt
done < "$IN_FILE"
