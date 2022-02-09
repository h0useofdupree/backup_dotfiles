function cpt
cat $argv | xclip -selection clipboard 
echo "Copied content of $argv to clipboard"
end
