cat zoning-creation/input.txt | while read column1 column2 column3 ; do
    echo "alicreate "\"$column1\", \"$column2\""" >> zoning-creation/output.txt
    echo "zonecreate "\"$column1\", \"$column3\""" >> zoning-creation/output.txt
done


#          echo "The End" | tee -a input.txt