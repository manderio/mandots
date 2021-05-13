## Mander's ~~shitty~~ dotfiles

These are my dots for my current setup. I use a lot of standard configs, this is mainly for my own sake and backup. If you wish to use, go ahead, but do know that my setup is very much mander specific. Main edits are the ones regarding the i3 keyboard shortcuts. Everything is vim styled.

### Information about my system
// need to set up an image here instead of the fetch

### To-do:
- [x] Customize rofi, make it more gruvbox
- [ ] Customize ~~polybar~~ eww, make my own version of it
- [ ] Work on my ~~termite fork~~ alacritty config to set up the keyboard shortcuts better
- [x] Fix zsh config
- [ ] Fix alias for everything making it all nice and neat
- [x] ~~Create installation script~~

### Applying the dots 
To add dots, which if you're not mander, I do not quite get why you would want to, but you may, as long as you let people know where you got them, go ahead and use. Everything is managed by stow, so run the following:

``sh -c 'echo [a-z]*'``

In case that doesn't work, try running the following: 

``for f in *; do case $f in [a-z]*) [[ -d "$f" ]] && stow --dir=~/dotfiles -t ~ "$f";; esac; done``

### Note for wayland branch
This is ~~completely~~ partially untested and a work in progress. I have to set everything up. 

### Section where I can spend time praising other lovely human beings
Because in this community we all need to show some love to people/tools that are amazing. Give them a hug and thank them for contributing with great things!

### Tools I use in wayland
- [sway](https://swaywm.org/), the wayland version of i3
- [alacritty](https://github.com/alacritty/alacritty), replacement for termite since it got obsoleted
- [mako](https://github.com/emersion/mako), notification daemon, replacement for dunst
- [eww](https://github.com/elkowar/eww), Elkowar's wacky widgets, using the bar functionality as a replacement for polybar
- [stow](https://www.gnu.org/software/stow/), symlink farm manager for my dotfiles
- tbsm, see section from x
- rofi, see section from x
- nvim, also see the x section

### Tools I used in x
- [i3-gaps](https://github.com/Airblader/i3), a fork of [i3](https://i3wm.org/) that adds gaps to the config
- [rofi](https://github.com/davatorium/rofi), a manager that i use along with [dmenu](https://tools.suckless.org/dmenu/)
- [termite](https://github.com/thestinger/termite), a terminal with keybind support, yay! less mouse usage!
- [tbsm](https://github.com/loh-tar/tbsm), a login manager that allows you to log in straight from the terminal! 
- [autorandr](https://github.com/phillipberndt/autorandr), life savior if you are using multiple monitors for i3
- [dunst](https://github.com/dunst-project/dunst), notification dameon, my config is broken, but the tool is lovely
- [nvim](https://github.com/neovim/neovim), what happens if you imorove vi twice? this. this is what happens. It's gret!
- [zsh](https://www.zsh.org/), my shell that I use ~~currently the config is too much of a mess for me to upload it here though~~

### Credit to people who are more talented than me
Note that while I no longer ues some of these, I will still always appreciate and credit the people helping me out below!
- Polybar is a mildly modified version of [this one](https://github.com/adi1090x/polybar-themes#forest) one made by adi1090x
- Rofi I am using the standard sidebar theme from for now, can be found in the original package linked above
- Vim is very much ~~mainly~~all configured ~~with the help of~~ by [Elkowar](https://github.com/elkowar), he's also been a huge help for everything eww related and patiently standing my feedback, as well as my "I BROKE EWW AGAIN :D", so please give him a hug from me and contribewwt
- Gruvbox, the superior color scheme, can be found [here](https://github.com/morhetz/gruvbox)
- Will link source for my wallpaper here once I find it!
- Also, just give an extra hug to [buffet](https://github.com/buffet), he's helped me out a ton and had to listen to me struggle with everything wayland related
