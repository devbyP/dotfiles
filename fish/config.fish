if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -x PATH $PATH /usr/local/go/bin $HOME/.cargo/bin $HOME/go/bin $HOME/.local/bin
set -x FLYCTL_INSTALL /home/pui/.fly
set -x PATH $PATH $FLYCTL_INSTALL/bin
set -x PATH $PATH $HOME/.local/tmux-workspaces

bind \cf 'tmux-sessionizer'
bind \ca 'tmux a'

alias vim="nvim"
alias lsws="ls ~/.local/tmux-workspaces"

starship init fish | source

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH
