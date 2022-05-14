# From Word to the Web in 5 Minutes or Less

# Prerequisites

1. You have a Word document that you want to convert to a web page.
2. You have [Hugo](https://gohugo.io/) installed on your computer.
3. You have [Pandoc](https://pandoc.org/) installed on your computer.
4. You have created a new Hugo site and applied a [Hugo Theme](https://themes.gohugo.io/)

# How to do it

1. Copy/move your Word document(s) to a temporary folder.
2. Copy the convertWordDocToMarkdown.sh, cleanMarkdown.sh, and prepend-frontmatter.sh scripts to the same folder.
3. Run the convertWordDocToMarkdown.sh script.
4. Run the cleanMarkdown.sh script.
5. Run the prepend-frontmatter.sh script.
6. Update the frontmatter in the markdown file(s) to your desired content.
7. Copy the markdown file(s) from the temporary folder to your Hugo site's content folder.
8. Copy the images folder from the temporary folder to your Hugo site's content folder.
9. Issue a `hugo server -D` command to start the Hugo server.
10. Open your browser and navigate to your Hugo site's URL to test your converted Word document(s).
11. After testing, issue a `hugo` command to build your Hugo site's static files.
12. Deploy your Hugo site to the hosting service/CDN of your choice.