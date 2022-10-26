cat zoning_info.txt | while read column1 column2 ; do
    echo "alicreate "\"$column1\", \"$column2\""" >> /home/runner/work/san_script/san_script/output.txt
done