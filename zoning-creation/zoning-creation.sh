cat zoning-creation/input.txt | while read column1 column2 column3 ; do
    echo "alicreate "\"$column1\", \"$column2\""" >> zoning-creation/output.txt
done

echo "============================================================" >> zoning-creation/output.txt

cat zoning-creation/input.txt | while read column1 column2 column3 ; do
    echo "zonecreate "\"$column1\_$column2\", \"$column1\;$column2\""" >> zoning-creation/output.txt
done


#          echo "The End" | tee -a input.txt