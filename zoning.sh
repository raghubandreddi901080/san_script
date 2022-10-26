cat zoning_info.txt | while read wwpn server ; do
    echo "alicreate "\"$wwpn\", \"$server\""" >> output.txt
done