function mpstat
    podman run --rm mpstat
end

function memory_usage
    free | grep Mem | awk '{printf "%0.1f%", (($2 - $7) / $2) * 100}'
end

function cpu_usage
    mpstat | grep all | awk '{printf "%0.2f%", $3}'
end

set fish_greeting "Who: "(set_color purple)(whoami)(set_color normal)"
When: "(set_color blue)(date --rfc-3339=seconds)(set_color normal)"
Where: "(set_color green)(hostname)" @ "(pwd)(set_color normal)"
Health:
    RAM: "(set_color yellow)(memory_usage)(set_color normal)"
    CPU: "(set_color red)(cpu_usage)(set_color normal)"
"

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
