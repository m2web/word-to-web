# From Word to the Web in 5 Minutes or Less

## Prerequisites

1. You have a Word document or documents that you want to convert to a web page(s).
2. You have a bash shell. On Windows, you can use [Git Bash](https://git-scm.com/downloads) or [Windows Subsystem for Linux (WSL)](https://docs.microsoft.com/en-us/windows/wsl/about)
3. You have [Hugo](https://gohugo.io/) installed on your computer.
4. You have [Pandoc](https://pandoc.org/) installed on your computer.
5. You have existing Hugo site.

## How to do it

1. Copy/move your Word document(s) to a temporary folder.
2. Copy the `convertWordDocToMarkdown.sh`, `cleanMarkdown.sh`, `prepend-frontmatter.sh`, `renameMarkdownFilesWithSpaces.sh`, and `main.sh` scripts to the same folder.
3. Run the `main.sh` script.
4. Update the frontmatter in the markdown file(s) to your desired content.
5. Copy the markdown file(s) from the temporary folder to your Hugo site's content folder.
6. Copy the images folder from the temporary folder to your Hugo site's static folder.
7. Within the markdown files, update the path to the images folder. For example, if the images folder is `images`, then update the path to `/images`.
8. Issue a `hugo server -D` command to start the Hugo server.
9. Open your browser and navigate to your Hugo site's URL to test the new content.
10. After testing, issue a `hugo` command to build your Hugo site's static files.
11. Deploy your Hugo site to the hosting service/CDN of your choice.
