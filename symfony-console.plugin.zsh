_symfony_console_all_commands() {
    local command

    if [ -f "./$words[1]" ]; then
        command=('php' $words[1])
    elif type "$words[1]" &> /dev/null; then
        command=$words[1]
    else
        return
    fi

    eval "$command --raw" | sed 's/:/\\:/g' | sed 's/ \{2,\}/:/g'
}

_symfony_console_describe() {
    local suggestions

    suggestions=("${(@f)$(_symfony_console_all_commands)}")

    _describe -t commands "command subcommand" suggestions
}

tools=("${(@s/ /)SYMFONY_CONSOLE_TOOLS}")

if [ -z "$SYMFONY_CONSOLE_TOOLS" ]; then
    tools=("composer" "artisan" "valet" "envoy")
fi

compdef _symfony_console_describe $tools

