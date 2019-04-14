#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
# PS1='[\u@\h \W]\$ '


export DOTNET_CLI_TELEMETRY_OPTOUT="1"
export MSBuildSDKsPath="/opt/dotnet/sdk/2.2.105/Sdks"
export GPG_TTY=$(tty)
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
export PATH="$PATH:$HOME/.local/bin:$MSBuildSDKsPath:/opt/mssql-tools/bin:$HOME/.dotnet/tools"

gpg-connect-agent updatestartuptty /bye >/dev/null
