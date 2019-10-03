## files

`mas_list.txt ` - apps that are downloadable from the AppStore (to be downloaded using [mas-cli](https://github.com/mas-cli/mas))

`cask_list.txt` - apps that are to be downloeaded using brew-cask

`other_programs.md` - apps that are neither on AppStore nor cask - currently without automatic install solution

## commands

`cat cask_list.txt | xargs brew cask install` - install all cask apps

`awk '{print $1}' mas_list.txt | xargs mas install` - install all App Store apps

### problems

- *cask will break if some app from the list is already installed from a different source.* Likely not hard to solve with good bash skills. 
- *cask's Google Drive File Stream provokes a password prompt.* I moved it to the bottom of the list to go around it, [ptb/mac-setup](https://github.com/ptb/mac-setup) probably contains a better solution


### sources

https://github.com/ptb/mac-setup



