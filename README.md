## files

`mas_list.txt ` - apps that are downloadable from the AppStore (to be downloaded using [mas-cli](https://github.com/mas-cli/mas))

`cask_list.txt` - apps that are to be downloeaded using brew-cask

`other_programs.md` - apps that are neither on AppStore nor cask - currently without automatic install solution

## steps

`/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"` - install brew

`cat brew_list.txt | xargs brew install` - install all brew packages/programs

`cat cask_list.txt | xargs brew cask install` - install all cask apps

`awk '{print $1}' mas_list.txt | xargs mas install` - install all App Store apps

### problems

- *cask will break if some app from the list is already installed from a different source.* To avoid this and have the whole list install, do this on a fresh start or remove apps you already have. Likely very easy to solve with good bash skills (output redirect?). 
- *some cask packages provoke a password prompt or take long* I moved them to the bottom of the list to go around it, [ptb/mac-setup](https://github.com/ptb/mac-setup) probably contains a better solution.


### sources

https://github.com/ptb/mac-setup

https://pawelgrzybek.com/change-macos-user-preferences-via-command-line/#the-way-to-find-the-domain--key-responsible-for-a-setting

