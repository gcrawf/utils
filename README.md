# utils
A collection of small (and possibly pointless) scripts I wrote to speed up repetitive tasks.

## `choisir.sh`
A short script designed to aid in creating more user-friendly dmenu prompts.
Parses a series of tab separated pairs from a file, prompts the user with the keys and prints the respective value to stdout.
Calling the script with the flag `--help` gives a brief help message describing its function.
(At present input cannot be read from stdin; will be improved/reworked in the next update.)

**Usage**: `./choisir.sh (LOCATION|--help)`
