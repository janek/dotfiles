Restore protocol

### References 
- danijar
- ptp
- dotbot

### Questions: 
- what do you do with your ssh keys?
- what do you do with logins? (also check dotbot and ptp before asking)

### Notes:


- [ ] START: check out dotbot in context of notes here. seems good.
- generate and save new mas_list.txt
- consider having separate lists for setup-essentials for a much quicker setup (don't be stuck installing sketch or spark for ages)

- do-nothing script for backup and rebuild:
	- have you backed up your kmmacros? anki? other content? 

- ln -sv ~/.dotfiles/fish/ .
	ln -sv ~/.dotfiles/karabiner.edn .
- might need a symlink hookup solution (export all the dotfiles from .dotfiles to where they should be). Try to keep it minimal or look at other people's repos
	- danijar's solution is good
	- alternative is dotbot (but then you maintain a list that maps them)
		- but the yaml can also keep nice things 4 u (like scripts)

- consider having a single file

- Fonts:
	- https://github.com/belluzj/fantasque-sans/releases/download/v1.8.0/FantasqueSansMono-NoLoopK.tar.gz

- manually restoring macros :( )
- installing yabai is a pain
- installing doom emacs:
	# required dependencies
	brew install git ripgrep
	# optional dependencies
	brew install coreutils fd
	# Installs clang
	xcode-select --install


### Steps:
- (todo: have a `curl setup.janek.dev` thing to start the proces)
- try `git clone something`
	> system installs “developer tools”. This needs to happen before you can use git and install brew.

- mas could not install things before I manually logged in to the App Store app. More information about why: https://github.com/mas-cli/mas/issues/164

- install .ssh and git clone into .dotfiles or just download zip 
	- To restore the ssh folder from a location:  `cp`, `chmod 400 id_rsa`
	- git clone git@github.com:janek/dotfiles ~/.dotfiles
	- alternative: - https://github.com/janek/dotfiles/archive/master.zip - from the browser, or wget, or curl with some special flag that allows redirects
- switch to fish 
	> echo /usr/local/bin/fish | sudo tee -a /etc/shells
	> chsh -s /usr/local/bin/fish

- login items


- implement defaults

- install programs



 


____ 
App changes:


Cask:
- remove draw.io, franz


Mas:
+ wipr


unorg:
- remove ankiapp
- add Anki 
- add keka (the zip app)
- add Evernote Legacy
- sleep timer



### Unhandled app data

Login required: 
- App Store
- Dropbox
- Spark
- YouTube
- Soundcloud (but what else is new)
- Notion
- Twitter

License required:
- Alfred
- KM
- DaisyDisk

Point-to-preferences required:
- Alfred
- iTerm2



### Archive

- switch default python - I guess not really, all of a sudden it's the newest (maybe after brew install?)
- FAIL: anki cards were not synced :(
- consider having a separate list for totally optional things (like terminal-notifier) [ -> added to other_programs.md]
- add notes on sunsetting old computer (meaning writing down apps)
- Error: You have not agreed to the Xcode license. Please resolve this by running:
  sudo xcodebuild -license accept


