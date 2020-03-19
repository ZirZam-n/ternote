# Ternote
Minimal notebook in bash terminal

This script is based on bash and I've made it in Ubuntu. But I think it can be used in any Linux distro!

## Requirements
This script currently doesn't have any requirement. It could simply run with `bash`.

## Install
Follow these steps to install and use Ternote:

* Add execute permission to setup.sh file.

```
chmod +x setup.sh
```

* Then run setup script. You can use `-h` flag to see help or use `-y` flag to avoid answering script questions. A command in this script needs sudo permission, so run this script as root or enter sudo password whenever it's asked!
```
./setup.sh
```

* Now you can run this app anywhere in terminal with the `ternote` command.

## Usage
As you can see with `ternote -h`, here's the details about running ternote:
```
Usage: ternote l: list notes
       ternote e [<note_title>]: add/edit note
       ternote p <note_title>: print note
       ternote d <note_title>: delete note
       ternote <any_thing_else>: show this help
```

## Uninstall
As simple as you installed ternote, you can uninstall it. Just run:
```
./setup.sh -u
```

## Contribution
We want this script to be as minimal as possible! But create an issue in the case you think a useful feature can be added to this script!

