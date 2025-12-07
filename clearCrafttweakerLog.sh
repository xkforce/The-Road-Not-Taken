#!/bin/bash

# This script filters the crafttweaker.log file to only include lines with FATAL, ERROR, WARNING, or Road (Which is part of the modpack name).
# I personally use this in conjunction with the prism launcher option to execute a script after closing the game to make it easier to find relevant log entries.
grep -E 'FATAL|ERROR|WARNING|Road' crafttweaker.log > crafttweaker.tmp
mv crafttweaker.tmp crafttweaker.log