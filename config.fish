# ~/.config/fish/config.fish

# Отключаем стандартное приветствие
set -U fish_greeting ""

# Цветовая схема с мягкими, гармоничными цветами
set -g fish_color_normal normal
set -g fish_color_command cyan
set -g fish_color_comment grey
set -g fish_color_operator magenta
set -g fish_color_param yellow
set -g fish_color_redirection magenta

# Отключаем чувствительность к регистру в автодополнении
set -g fish_complete_case_sensitive false

# Добавляем пути в переменную PATH
set -gx PATH $PATH /usr/local/bin

# Включаем подсветку синтаксиса (если установлен плагин)
if test -d ~/.config/fish/plugins/fish-syntax-highlighting
    source ~/.config/fish/plugins/fish-syntax-highlighting/fish-syntax-highlighting.fish
end

# Минималистичный и няшный промпт с uwufetch стилем
function fish_prompt
    # Начинаем с пустого пространства для выравнивания
    echo -n ""

    # Используем симпатичные символы для пользователя
    set_color magenta
    echo -n "UwU "
    set_color normal

    # Отображаем имя пользователя (оставляем ryoda)
    set_color cyan
    echo -n "ryoda"
    set_color normal
    echo -n " "

    # Символ "at"
    set_color yellow
    echo -n "at"
    set_color normal
    echo -n " "

    # Имя системы с милым правописанием
    set_color cyan
    echo -n "Fedowa"  # Пример замены на "Fedowa"
    set_color normal
    echo -n " "

    # Символ "in"
    set_color white
    echo -n "in"
    set_color normal
    echo -n " "

    # Отображаем текущую директорию
    set_color cyan
    echo -n "~"  # Для домашней директории, используем символ ~
    set_color normal

    # Переход на новую строку для стрелки
    echo ""

    # Стрелка, которая будет указывать на место ввода
    set_color green
    echo -n "↪ "
    set_color normal
end

