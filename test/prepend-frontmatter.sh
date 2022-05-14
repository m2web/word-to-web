#!/bin/bash

for file in *.md
do
    # echo $file
    
    theDate=$(date '+%Y-%m-%dT%H:%M:%S-4:00')
	
	#replace '_' with space in file name for post title
	theTitle=${file//_/ }
	
# Prepend front-matter to files
TEMPLATE="---
title: \"$theTitle\"
date: $theDate
draft: true
---
"

    echo "$TEMPLATE" | cat - "$file" > temp && mv temp "$file"
done