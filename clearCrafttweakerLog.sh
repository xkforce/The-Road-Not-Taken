#!/bin/bash

# This script filters the crafttweaker.log file to only include lines with FATAL, ERROR, WARNING, or Road (Which is part of the modpack name).
# I personally use this in conjunction with the prism launcher option to execute a script after closing the game to make it easier to find relevant log entries.
touch crafttweaker.log
{
  echo "#------------------------------------------------------------------------------#"
  echo "# This is the cleaned up crafttweaker.log file.                                #"
  echo "# Everything that is not a FATAL, ERROR, WARNING,                              #"
  echo "# or a modpack related message was removed.                                    #"
  echo "#------------------------------------------------------------------------------#"
  grep -E 'FATAL|ERROR|WARNING' crafttweaker.log | grep -v 'TRNT'
} > crafttweaker.tmp
mv crafttweaker.tmp crafttweaker.log

touch crafttweaker_raw.log
{
  toilet The Road Not Taken -f pagga
  echo "#------------------------------------------------------------------------------#"
  echo "# This is the cleaned up crafttweaker_raw.log file.                            #"
  echo "# Everything that is not a FATAL, ERROR, WARNING,                              #"
  echo "# or a modpack related message was removed.                                    #"
  echo "#------------------------------------------------------------------------------#"
  grep -P '🚧|^(?!.*[🐜📫]).*$' crafttweaker_raw.log
} > crafttweaker_raw.tmp
mv crafttweaker_raw.tmp crafttweaker_raw.log

{
  echo "#------------------------------------------------------------------------------#"
  echo "# The following lines are from the crafttweaker.log file.                      #"
  echo "# These are all the errors and warnings that were printed to the log.          #"
  cat crafttweaker.log
} >> crafttweaker_raw.log

# This script will search the scripts directory for TODOs and @endermans and print them to the crafttweaker.log file.
{
  echo "#------------------------------------------------------------------------------#"
  echo "# This are the TODOs and @endermans that were found in the scripts directory.  #"
  echo "# These are not errors, but they are still worth looking at.                   #"
  echo "#------------------------------------------------------------------------------#"
  grep -rnw scripts -e 'TODO' -e '@enderman'
} >> crafttweaker_raw.log

# Clear all log archives, which just waste disk space
rm logs/*.gz
