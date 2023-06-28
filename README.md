# noodle
my arch r̶i̶c̶e̶ noodle

---
### Install required packages from system repositories

```bash
sudo pacman -S $(cat packages.sysrepo.txt | sed '/^#/d' | tr '\n' ' ')
```

---
# Thanks
