USER=$(cat /etc/passwd | sed -n '2p' | cut -d':' -f1)
mkdir -p /home/$USER/.local/zsh/
touch /home/$USER/.local/zsh/history
chown $USER:$USER -R  /home/$USER/.local/zsh/
# should add a fixed release instead of pulling it from github
sudo mkdir -p /usr/share/zsh/plugins/fast-syntax-highlighting/
sudo git clone https://github.com/zdharma-continuum/fast-syntax-highlighting /usr/share/zsh/plugins/fast-syntax-highlighting/
cat <<-EOF >> ~/.zshrc
# Zoomer Shell
# Enable colors and change prompt:
autoload -U colors && colors	# Load colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "
setopt autocd		# Automatically cd into typed directory.
stty stop undef		# Disable ctrl-s to freeze terminal.
setopt interactive_comments

# History in .local directory:
HISTSIZE=900000000
SAVEHIST=900000000 # XDG_CACHE_HOME ???
HISTFILE="${XDG_CACHE_HOME:-$HOME/.local}/zsh/history"

# Load syntax highlighting; should be last.
source /usr/share/zsh/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh 2>/dev/null

# Shell alias redirect commands to something else
alias ls='exa -la'
alias history='cat ~/.local/zsh/history'
EOF



