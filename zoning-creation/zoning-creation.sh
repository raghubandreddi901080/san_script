cat zoning-creation/input.txt | while read column1 column2 column3 ; do
    echo "alicreate "\"$column1\", \"$column2\""" >> zoning-creation/output.txt
done

echo "============================================================" >> zoning-creation/output.txt

cat zoning-creation/input.txt | while read column1 column2 column3 ; do
    echo "zonecreate "\"$column1\_$column3\", \"$column1\;$column3\""" >> zoning-creation/output.txt
done

echo "============================================================" >> zoning-creation/output.txt

cat zoning-creation/input.txt | while read column1 column2 column3 ; do
    echo "cfgadd "\"$column4\", \"$column1\_$column3\""" >> zoning-creation/output.txt
done

echo "============================================================" >> zoning-creation/output.txt

cfg save >> zoning-creation/output.txt

cfg enable >> zoning-creation/output.txt