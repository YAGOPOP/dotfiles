source /usr/share/cachyos-fish-config/cachyos-config.fish

# overwrite greeting
# potentially disabling fastfetch
#function fish_greeting
#    # smth smth
#end

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
end
