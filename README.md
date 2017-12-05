## Oh My ZSH Completion plugin for `symfony/console` based tools
 

### Instalation

1. Clone the repository into `~/.oh-my-zsh/custom/plugins/symfony-console` directory

```zsh
git clone https://github.com/jerguslejko/zsh-symfony-completion.git ~/.oh-my-zsh/custom/plugins/symfony-console
```

2. Activate the plugin and specify which `symfony/console` tools you want to activate the plugin for by placing these lines into your `~/.zshrc` configuration file. (these lines **must** appear before `source $ZSH/oh-my-zsh.sh` otherwise, the plugin will not be activated)

```zsh
# activate the plugin
plugins=(symfony-console)

# optionally provide a space separated list of tools. If you do not define this variable, values below will be used by default
export SYMFONY_CONSOLE_TOOLS="composer artisan valet envoy bin/console"
```

3. Reload your shell

### Local vs Global

You can use this completion plugin for local as well as global `symfony/console` tools. It will first check if there is a file in `pwd` that matches one of tools specified in the _SYMFONY_CONSOLE_TOOLS_ list. If there is one, the plugin will use it (ex. artisan). Otherwise, it will try to find a globally available command (ex. composer).

---

> Jergus Lejko <jergus.lejko@gmail.com> 2017
