#!/bin/sh

# Ensure that an argument is passed to the script
if [ -n "$1" -o "$1" = "-" ]
then
	if [ "$1" != "--help" ]
	then
		# Get the first element of each valid pair (i.e. key<TAB>value)
		location="$1"
		choices=`grep -P "\t" "$location" | cut -f 1`

		# Print the result for the user's choice from the TSV file.
		key=`echo "$choices" | dmenu`
		if [ -n "$key" ]
		then
			value=`grep -P "$key\t" "$location" | cut -f 2`
		fi
		echo "$value"
	else
		# Print help message
		echo "choisir: A small script to speed up work with dmenu."
		echo "Usage: choisir (LOCATION|--help)"
		
		echo ""

		echo "choisir takes a series of tab-separated pairs from a file specified by the user."
		echo "The first item in each pair is passed to dmenu, and the respective second item is printed to stdout."
		echo "(Currently input from stdin is not yet supported.)"

		echo ""

		echo "Flags:"
		echo "	--help: prints this help message"
	fi
else
	# Tell user to pass a command
	echo "Usage: choisir LOCATION"
	echo "Type choisir --help for more information"
	echo "(Currently stdin is not accepted as a valid input location.)"
fi
