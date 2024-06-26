# Neovim Config
My personal neovim configuration as software developer and a linux user.

## Installation

### Software required

For the well functionality of this configuration you will required the following extra packages.

- [Git](https://git-scm.com)
- [GO](https://go.dev)
- [Go Delve](https://github.com/go-delve/delve?tab=readme-ov-file)
- [NodeJS](https://nodejs.org/en)
- [Yarn](https://yarnpkg.com)
- [Rust](https://www.rust-lang.org)
- [Rust Analyzer](https://rust-analyzer.github.io/manual.html#installation)
- [Gnu Compiler Collection](https://gcc.gnu.org)
- [Wget](https://www.gnu.org/software/wget/)
- [Nerd Font](https://github.com/ryanoasis/nerd-fonts#font-installation)
- [Ripgrep](https://github.com/BurntSushi/ripgrep)

### Installation Steps

1 - Install [Neovim](https://github.com/neovim/neovim/blob/master/INSTALL.md)

2 - Clone the repository into your .config directory
```shell
cd $HOME/.config & git clone https://github.com/rootspyro/NeovimConfig
mv NeovimConfig nvim
```

3 - Execute the nvim command.

4 - Lazy.nvim package manager will start to install the plugins.


### NerdFonts
I currently using the [HackNerdFont - Regular](https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/Hack/Regular/HackNerdFont-Regular.ttf).

```sh
# Installation steps
cd $HOME/.local/share

mkdir fonts & cd fonts

wget https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/Hack/Regular/HackNerdFont-Regular.ttf
```

