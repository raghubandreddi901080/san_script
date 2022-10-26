cat zoneobjectrename/input.txt | while read column1 column2 ; do
    echo "zoneobjectrename "\"$column1\", \"$column2\""" >> zoneobjectrename/output.txt
done


#          echo "The End" | tee -a input.txt