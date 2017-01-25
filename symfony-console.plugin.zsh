_symfony_console_all_commands() {
    local command

    if [ -f "./$words[1]" ]; then
        command=('php' $words[1])
    elif type "$words[1]" &> /dev/null; then
        command=$words[1]
    else
        return
    fi

    eval "$command" | sed "1,/Available commands/d" | grep "^\s.*\s.*$" | sed 's/:/\\:/' | perl -pe 's/\x1b.*?[mGKH]//g' | sed -E "s/ *([a-z:\\-]+) *(.*)/\1:\2/"
}

_symfony_console_describe() {
    local suggestions

    suggestions=("${(@f)$(_symfony_console_all_commands)}")

    _describe -t commands "command subcommand" suggestions
}

tools=("${(@s/ /)SYMFONY_CONSOLE_TOOLS}")

compdef _symfony_console_describe $tools
