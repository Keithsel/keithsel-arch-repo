# Keithsel's Arch Repo

## Setup

To add Keithsel's Arch Repo to your system, follow these steps:

1. Import and trust key

```bash
curl -fsSL https://keithsel.github.io/arch-repo/keithsel.gpg | sudo pacman-key --add -
sudo pacman-key --lsign-key 28E82396
```

2. Add the repository

Edit your `/etc/pacman.conf` file and add the following lines at the end:

```conf
[keithsel]
SigLevel = Required DatabaseOptional
Server = https://keithsel.github.io/arch-repo/x86_64
```

3. Update the package database

```bash
sudo pacman -Syy
```

### Automated Setup

You can also run the following command to automate the entire setup process:

```bash
curl -fsSL https://keithsel.github.io/arch-repo/setup.sh | bash
```
