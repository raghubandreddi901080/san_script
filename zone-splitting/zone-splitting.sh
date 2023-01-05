cat zone-splitting/input.txt | while read column1 column2 column3 column4 column5 ; do
    SER_NAME=$(echo $column1 | sed 's/_ *..//')
    STO_NAME1=$(echo $column3 | sed 's/G *..//')
    STO_NAME2=$(echo $column4 | sed 's/G *..//')
    echo "zonecreate "\"$SER_NAME\_$STO_NAME2\", \"$column1\;$column4\""" >> zone-splitting/output.txt
    echo "cfgadd "\"$column5\", \"$SER_NAME\_$STO_NAME2\""" >> zone-splitting/output.txt
    echo "cfg enable "\"$column5\" >> zone-splitting/output.txt
    echo "" >> zone-splitting/output.txt
    echo "zoneremove "\"$column2\", \"$column4\""" >> zone-splitting/output.txt
    echo "cfg enable "\"$column5\" >> zone-splitting/output.txt
    echo "zoneobjectrename "\"$column2\", \"$SER_NAME\_$STO_NAME1\""" >> zone-splitting/output.txt
    echo "============================================================" >> zone-splitting/output.txt
done

# cat zone-splitting/input.txt | while read column1 column2 column3 column4 column5 ; do
#     # SER_NAME=$(echo $column1 | sed 's/_ *..//')
#     # STO_NAME1=$(echo $column3 | sed 's/G *..//')
#     # STO_NAME2=$(echo $column4 | sed 's/G *..//')
#     echo "zonecreate "\"$column1\_$column4\", \"$column1\;$column4\""" >> zone-splitting/output.txt
#     echo "cfgadd "\"$column5\", \"$column1\_$column4\""" >> zone-splitting/output.txt
#     echo "cfg enable "\"$column5\" >> zone-splitting/output.txt
#     echo "" >> zone-splitting/output.txt
#     echo "zoneremove "\"$column2\", \"$column4\""" >> zone-splitting/output.txt
#     echo "cfg enable "\"$column5\" >> zone-splitting/output.txt
#     echo "zoneobjectrename "\"$column2\", \"$column1\_$column3\""" >> zone-splitting/output.txt
#     echo "============================================================" >> zone-splitting/output.txt
# done