cat input.txt | while read column1 column2 ; do
    echo "alicreate "\"$column1\", \"$column2\""" >> output.txt
done


#          echo "The End" | tee -a input.txt