set cashyos_fish_config "/usr/share/cachyos-fish-config/cachyos-config.fish"

if test -f "$cashyos_fish_config"
    source "$cashyos_fish_config"
end

function fish_greeting
    switch "$TERM_PROGRAM"
        case vscode zed
            return
    end

    if test "$ZED_TERM" = "true"
        return
    end

    fastfetch
end

if status is-interactive
    alias ls "eza -l"

    bind ctrl-я undo
end
