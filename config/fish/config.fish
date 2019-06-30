function memory_usage
    free | grep Mem | awk '{printf "%0.1f%", (($2 - $7) / $2) * 100}'
end

set fish_greeting "Date: "(set_color purple)(date --rfc-3339=seconds)(set_color normal)"
Host: "(set_color blue)(hostname)(set_color normal)"
Path: "(set_color green)(pwd)(set_color normal)"
RAM: "(set_color yellow)(memory_usage)(set_color normal)"
CPU: "(set_color red)(echo unknown)(set_color normal)

function fish_prompt
    set -l color_cwd
    set -l suffix
    switch "$USER"
        case root toor
            if set -q fish_color_cwd_root
                set color_cwd $fish_color_cwd_root
            else
                set color_cwd $fish_color_cwd
            end
            set suffix '#'
        case '*'
            set color_cwd $fish_color_cwd
            set suffix '> '
    end
    echo -n -s (set_color $color_cwd) (prompt_pwd) (set_color normal) "$suffix"
end
