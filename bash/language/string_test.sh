#!/bin/bash

str=87654321
printf "str = "${str}"\n"
printf "str len = "${#str}"\n"
printf "str 2~5 = "${str: 2: 5}"\n"
printf "str 2~9 = "${str: 2: 9}"\n"
