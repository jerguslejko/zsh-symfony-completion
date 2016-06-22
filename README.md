# (Oh My) ZSH Symfony Console Completion

### Instalation

1. Clone the repository into `~/.oh-my-zsh/plugins/symfony-console` directory

    ```
git clone https://github.com/jerguslejko/zsh-symfony-completion.git ~/.oh-my-zsh/plugins/symfony-console
```

2. Activate the plugin and specify which `symfony/console` tools you want to activate the plugin for by placing these lines into your `~/.zshrc` configuration file

    ```
# activate the plugin
plugins=(symfony-console)

# provide a space separated list of tools
export SYMFONY_CONSOLE_TOOLS="composer valet artisan"
```

3. Reload your shell

### Local vs Global

You cas use this completion plugin for local as well as global `symfony/console` tools. The plugin will first check if there is a globally available command that matches one of the tools specified in the _SYMFONY_CONSOLE_TOOLS_ list. If there is one, the plugin will use it (ex. composer). Otherwise, it will try to look into `pwd` and figure out if there is a file with such name (ex. artisan).

---

> Jergus Lejko <jergus.lejko@gmail.com> 2016
