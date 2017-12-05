## Oh My ZSH Completion plugin for `symfony/console` based tools
 

### Installation

1. Clone the repository into `~/.oh-my-zsh/custom/plugins/symfony-console` directory.

```zsh
git clone https://github.com/jerguslejko/zsh-symfony-completion.git ~/.oh-my-zsh/custom/plugins/symfony-console
```

2. Activate the plugin by inserting `symfony-console` into the `plugins` list in your `~/.zshrc`.

```zsh
plugins=(symfony-console)
```

3. Optionally, specify which `symfony/console` tools you want to activate auto-completion for. If you do not define this variable, values below will be used as defaults.

```zsh
export SYMFONY_CONSOLE_TOOLS="composer artisan valet envoy bin/console"
```

4. Reload your shell

### Local vs Global

You can use this auto-completion plugin for local as well as global tools. It will first check if there is a file in `pwd` that matches one of tools specified in the _SYMFONY_CONSOLE_TOOLS_ list. If there is one, the plugin will use it (eg. `artisan`). Otherwise, it will try to find a globally available command (eg. `composer`).

---

## Licence

Copyright (c) 2016 Jerguš Lejko

MIT License

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
