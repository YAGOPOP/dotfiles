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

    set -x EDITOR micro
    set -x PAGER "bat --paging=auto -p"

    set -x MANROFFOPT "-c" # Не использовать цветные/терминальные escape-последовательности для вывода.
    set -x MANPAGER "sh -c 'col -bx | bat -l man -p'"
end
