export GPG_TTY=$(tty)

gpg-connect-agent updatestartuptty /bye >> "$HOME/.gnupg/.profile.log"
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
