gpg-connect-agent updatestartuptty /bye &>> "$HOME/.gnupg/.zlogin.log"

export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)

