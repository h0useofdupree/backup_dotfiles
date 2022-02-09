function gn
    getup 
    #askex "speakers off"
    speakers off
    sleep 2
    printf "\nApplying above mentionend updates.\n"
    yay -Syu --noconfirm    
    sleep 10
    $argv 
end
