# From Word to the Web in 5 Minutes or Less

# Prerequisites

1. You have a Word document that you want to convert to a web page.
2. You have a bash shell. On Windows, you can use [Git Bash](https://git-scm.com/downloads) or [Windows Subsystem for Linux (WSL)](https://docs.microsoft.com/en-us/windows/wsl/about)
3. You have [Hugo](https://gohugo.io/) installed on your computer.
4. You have [Pandoc](https://pandoc.org/) installed on your computer.
5. You have existing Hugo site.

# How to do it

1. Copy/move your Word document(s) to a temporary folder.
2. Copy the `convertWordDocToMarkdown.sh`, `cleanMarkdown.sh`, `prepend-frontmatter.sh`, `renameMarkdownFilesWithSpaces.sh`, and `main.sh` scripts to the same folder.
3. Run the `main.sh` script.
4. Update the frontmatter in the markdown file(s) to your desired content.
5. Copy the markdown file(s) from the temporary folder to your Hugo site's content folder.
6. Copy the images folder from the temporary folder to your Hugo site's content folder.
7. Issue a `hugo server -D` command to start the Hugo server.
8. Open your browser and navigate to your Hugo site's URL to test the new content.
9. After testing, issue a `hugo` command to build your Hugo site's static files.
10. Deploy your Hugo site to the hosting service/CDN of your choice.