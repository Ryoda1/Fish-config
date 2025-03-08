# ~/.config/fish/config.fish

set -U fish_greeting ""

echo (set_color blue)"Welcome" (set_color white)"to Fedowa Terminal, Nya." (set_color normal)

set -g fish_color_normal white
set -g fish_color_command blue
set -g fish_color_comment grey
set -g fish_color_operator magenta
set -g fish_color_param yellow
set -g fish_color_redirection magenta

set -g fish_complete_case_sensitive false

set -gx PATH $PATH /usr/local/bin

if test -d ~/.config/fish/plugins/fish-syntax-highlighting
    source ~/.config/fish/plugins/fish-syntax-highlighting/fish-syntax-highlighting.fish
end

function fish_prompt
    echo -n ""

    set_color blue
    echo -n "UwU "
    set_color normal

    set_color magenta
    echo -n "ryoda"
    set_color normal
    echo -n " "

    set_color blue
    echo -n "at"
    set_color normal
    echo -n " "

    set_color yellow
    echo -n "Fedowa"
    set_color normal
    echo -n " "

    set_color white
    echo -n "in"
    set_color normal
    echo -n " "

    set_color blue
    echo -n (prompt_pwd)
    set_color normal

    echo ""

    set_color blue
    echo -n "↪ "
    set_color normal
end

