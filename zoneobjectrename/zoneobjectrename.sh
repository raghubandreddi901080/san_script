cat input.txt | while read column1 column2 ; do
    echo "zoneobjectrename "\"$column1\", \"$column2\""" >> output.txt
done


#          echo "The End" | tee -a input.txt