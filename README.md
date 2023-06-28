# noodle
my arch r̶i̶c̶e̶ noodle

---
### Install

1. Install Basic Minimal System (audio, xorg, picom & boot-manager via grub)
```bash
sudo pacman -S $(cat packages.minimalsys.txt | sed '/^#/d' | tr '\n' ' ')
```
**Note**: i showed the example of pacman but if you are in a live-iso or something, you may need to install the packages using `pacstrap`.

2. You may now install dwm, st from wherever you want.
3. I use dwm + st from suckless and some extra programs which you can install like this:
```bash
sudo pacman -S $(cat packages.sysrepo.txt | sed '/^#/d' | tr '\n' ' ')
```

---
# Thanks
