function con
echo "Hello $USER, here are your current connections:"
echo
echo "Network: $NW"
echo "UUID: $UUID"
echo "Type: $TYPE"
echo "Interface: $IF"
echo $$argv | xclip -selection clipboard
echo
echo "Goodybye, $USER!"
end
