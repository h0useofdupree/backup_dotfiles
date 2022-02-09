function nmapnfs
nmap -p 111 --script=nfs-ls,nfs-statfs,nfs-showmount $argv
end
