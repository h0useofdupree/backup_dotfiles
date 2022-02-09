function ipp
  printf "\nIPP by Joel Riekemann. Pssst, it's just a fish script 🥲\n"
  printf "\nPublic IP\n"
  host myip.opendns.com resolver1.opendns.com | grep "myip.opendns.com has" | awk '{print $4}'
  printf "\nPrivate IP\n"
  ip -4 a s $INT | grep -oP '(?<=inet\\s)\\d+(\\.\\d+){3}'
end
