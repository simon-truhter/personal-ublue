sudo usermod -aG libvirt user
# i dont like hard coding the user, ask for solution to run post install scripts in the background
#sudo usermod -aG $(cat /etc/passwd | sed -n '2p' | cut -d':' -f1)
#$(whoami)
# no clue if whoami will work - it does not
