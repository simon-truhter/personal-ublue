usermod -aG libvirt $(cat /etc/passwd | sed -n '2p' | cut -d':' -f1)
#$(whoami)
# no clue if whoami will work - it does not
