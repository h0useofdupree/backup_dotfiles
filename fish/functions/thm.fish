function thm
    echo "Getting ready for a THM run..."
    sleep .5
    cd ~/sec/thm/
    echo "Here's your available directories, $USER"
    ls
    echo
    echo "Starting your VPN connection with TryHackMe..."
    sudo nohup openvpn ~/sec/thm/JUULS\ EU.ovpn &
    echo "Starting BurpSuite with wmname set to LG3D"
    wmname LG3D
    nohup BurpSuiteCommunity &
    echo
    echo "Starting $BROWSER and connecting to 'TryHackMe.com'"
    screen $BROWSER www.tryhackme.com &
    echo
    echo "Done, exiting"
    exit
end
