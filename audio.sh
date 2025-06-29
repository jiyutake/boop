#!/bin/sh

# Very poor thing to make so i can actually have working audio.
pipewire &;disown
pipewire-pulse &;disown
wireplumber &;disown
