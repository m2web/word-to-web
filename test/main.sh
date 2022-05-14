#!/bin/bash
echo "Start the main script."
./renameMarkdownFilesWithSpaces.sh
./convertWordDocToMarkdown.sh
./cleanMarkdown.sh
./prepend-frontmatter.sh
echo "End the main script."