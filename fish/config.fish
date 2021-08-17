alias la 'exa -a'
alias ll 'exa -l --git -h --icons'
alias ls 'exa'
alias lst 'exa -T --icons'

alias gs 'git status'
alias ga 'git add'
alias gc 'git commit'
alias gpush 'git push'
alias gpull 'git pull'
alias gl 'git log --graph --all --format="%x09%C(cyan bold)%an%Creset%x09%C(yellow)%h%Creset %C(black magenta)%d%Creset %s"'

set fish_color_param "#2b98f0"
set fish_color_command brwhite
set fish_color_autosuggestion "#94A3B8"
set fish_color_operator "#fee94e"
set fish_color_escape purple
set fish_color_error "#FF5252"
set fish_color_quote "#9CCC65"

set fish_greeting "Happy Hacking!"

set -x PATH /Users/object_1037/.local/bin $PATH
set -x PATH /Users/object_1037/.nodebrew/current/bin $PATH
set -x PATH $HOME/.rbenv/shims $PATH
set -x PATH $HOME/.pyenv/shims $PATH
set -x PATH $HOME/bin $PATH

source "/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.fish.inc"

set -x LANG ja_JP.UTF-8

function fish_title
    echo $_ ' '
    pwd
end

# opam configuration
eval (opam env)

starship init fish | source