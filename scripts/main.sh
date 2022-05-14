#!/bin/bash
echo "Start the main script."
./convertWordDocToMarkdown.sh
./cleanMarkdown.sh
./prepend-frontmatter.sh
./renameMarkdownFilesWithSpaces.sh
echo "End the main script."