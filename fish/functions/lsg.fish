function lsg
echo "Grepped the following files:\n"
exa -al --color=always --group-directories-first --icons | grep $argv
end
