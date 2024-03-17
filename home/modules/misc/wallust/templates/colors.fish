# Fish variables
set -U wallpaper "{wallpaper}"

# Special
set -U background '{background}'
set -U foreground '{foreground}'
set -U cursor '{cursor}'

# Colors
set -U color0 '{color0}'
set -U color1 '{color1}'
set -U color2 '{color2}'
set -U color3 '{color3}'
set -U color4 '{color4}'
set -U color5 '{color5}'
set -U color6 '{color6}'
set -U color7 '{color7}'
set -U color8 '{color8}'
set -U color9 '{color9}'
set -U color10 '{color10}'
set -U color11 '{color11}'
set -U color12 '{color12}'
set -U color13 '{color13}'
set -U color14 '{color14}'
set -U color15 '{color15}'

# Shell colors
set -U fish_color_normal normal
set -U fish_color_command {color1.strip}
set -U fish_color_param {color5.strip}
set -U fish_pager_color_completion
set -U fish_pager_color_description $fish_color_quote yellow
set -U fish_pager_color_progress brwhite --background=cyan
set -U fish_color_history_current --bold

# FZF colors
set -gx FZF_DEFAULT_OPTS "
    $FZF_DEFAULT_OPTS
    --color fg:7,bg:0,hl:1,fg+:232,bg+:1,hl+:255
    --color info:7,prompt:2,spinner:1,pointer:232,marker:1
"
