# Sweetpie

Discordia discord bot written in luvit

Takes a few things from [Musicord](https://github.com/truemedian/musicord).

Designed for audio/voice channels, but also supports some other commands

# Some attributes

* Shell script to start the bot
* Token file, doesn't read from env
* Configurable
* Voice chat support, joining, leaving, moving, etc.
* Audio playback support, stopping, playing, skipping, pausing, resuming, etc.
* Audio queue (kind of a hackjob)

### Limitations

* Command parsing is based on spacing only, meaning no `!vc join` etc.
* May be difficult to containerize
* Audio fetching is pretty slow on bad hardware
* The audio fetching picks the 2nd output and hopes it's the right one, this seems to break often
* No keyring support

## Commands

[see the config file for the help command](src/config.lua)

# Setting it up

You can use this bot yourself if you'd like:

* Make sure you have luvit, luvi, and lit all installed and in your $PATH, or otherwise accesible.

* Clone this repository, i.e: `git clone https://github.com/CozzyBro2/sweetpie`
* `cd sweetpie`, then `lit install` to get all the dependencies.

* create a file named `.SECRET` and make it a single line with your token on it.

* If you want to use voice / audio, make sure you have:
    * `libsodium`
    * `libopus`
    * `ffmpeg`
    * `yt-dlp`

* The steps to get those depencies working may vary from installing to moving .dll's/.so's to the working directory. 

Here are the docs that helped me get them working:
    * [Discordia](https://github.com/SinisterRectus/Discordia/wiki/Voice#acquiring-audio-libraries), 
    * [Musicord](https://github.com/truemedian/musicord/blob/master/README.md)

* To run the bot just run `luvit src/main.lua`. (must be cd'd into working directory)

On POSIX, use the `start.sh` file included. (Make sure the file has execute permissions)
