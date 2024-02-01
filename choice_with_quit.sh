#!/bin/bash

# Similar to "choice.sh" this scripts prompts the user for parameters and returns their corresponding exponential result or takes a
# single parameter and returns its factorial result. This script however, can also take an option 'q' which will quit the program.

opt=""

until [[ $opt == "-q" ]]; do
  # Prompt for an option
  read -p "Enter an option (-q to quit): " $opt

  # Process the option
  case $opt in
  -e)
    if [ $# -eq 3 ]; then
      source ./exponent.sh $2 $3
    else
      echo Error: Invalid entries
    fi
    ;;

  -f)
    if [ $# -eq 2 ]; then
      source ./factorial.sh $OPTARG
    else
      echo Error: Invalid entries
    fi
    ;;
  -q)
    echo Exiting program...
    break
    ;;
  *)
    echo Error: Invalid option.
    ;;
  esac
done
