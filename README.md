# ~/dotfiles

Here is my Arch Linux configuration

### Tools i used to make my Desktop environment sassy :

| Category                 | Packages/Programs                                                                                                      |
| ------------------------ | ---------------------------------------------------------------------------------------------------------------------- |
| **Distribution**         | Arch Linux                                                                                                             |
| **Window Manager**       | [bspwm](https://github.com/baskerville/bspwm) with [sxhkd](https://github.com/baskerville/sxhkd) as keybindings daemon |
| **Shell**                | Bash                                                                                                                   |
| **Terminal**             | [URxvt](http://software.schmorp.de/pkg/rxvt-unicode.html)                                                              |
| **Display Manager**      | [LightDM](https://github.com/canonical/lightdm) with [webkit2-greeter](https://github.com/antergos/web-greeter)        |
| **Apps Launcher**        | [dmenu](https://tools.suckless.org/dmenu/)                                                                             |
| **Text Editor**         | Neovim                                                                                                                 |
| **File Manager (CLI)**   | [ranger](http://ranger.github.io/)                                                                                     |
| **File Manager (GUI)**   | PCManFM                                                                                                                |
| **Sound Mixer**         | Pulseaudio                                                                                                             |
| **Sound Control**        | Pavucontrol                                                                                                            |
| **Network Manager**      | [NetworkManager](https://wiki.gnome.org/Projects/NetworkManager/)                                                      |
| **Image Viewer**         | [feh](https://feh.finalrewind.org/)                                                                                    |
| **Screenshot App**       | [scrot](https://github.com/resurrecting-open-source-projects/scrot)                                                    |
| **System Monitor (CLI)** | ytop                                                                                                                   | 
| **Notification-daemon**  | [Deadd Notification Center](https://aur.archlinux.org/packages/deadd-notification-center/)                             |

### Here is the screenshot 

![Screenshot of my Arch Linux environment](desktop.jpg)

### Here is all other details 

-   **WM**: bspwm
-   **Terminal**: URxvt
-   **Font**: [Monospace](https://github.com/be5invis/Iosevka)
-   **Color Scheme**: [Gruvbox (Dark)](https://github.com/morhetz/gruvbox)
-   **Compositor**: Yeah(but not for terminal)
-   **AUR Package Manager**: [Yay](https://github.com/Jguer/yay)

**Wallpaper [hear](wallpaper7.jpg)**.

# To have polybar you have to Install following packages:
-   **Font**: [Inter](https://www.archlinux.org/packages/community/any/inter-font/),[font-Awesome](https://www.archlinux.org/packages/community/any/ttf-font-awesome/)
-   **Spotify**: [Here](https://github.com/dietervanhoof/polybar-spotify-controls) is the link to get all required files and dependencies to run it
## To clone my repo do as following 

1. Clone this in your home directory

```console
$ git clone https://github.com/harshbaliyan126/dotfiles.git
```

2. Copy the config files to their respective directories(-u stands for update so it's gonna update your present directories )

```console
$ cp -ur ~/dotfiles/bspwm/ ~/.config
$ cp -ur ~/dotfiles/sxhkd/ ~/.config
$ cp -ur ~/dotfiles/polybar/ ~/.config
$ cp -ur ~/dotfiles/nvim/ ~/.config
$ cp -ur ~/dotfiles/picom/ ~/.config
$ cp -ur ~/dotfiles/.Xresources ~
$ cp -ur ~/dotfiles/wallpaper7.jpg ~/Pictures	
```
3. Then simply reboot 

```console
$ reboot 
```
