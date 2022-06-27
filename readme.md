# From Word to the Web in 5 Minutes or Less

![Readme Banner](/readme_images/WordToWebReadmeBanner.png)

## Prerequisites

1. You have a Word document or documents that you want to convert to a web page(s).
2. You have a bash shell. On Windows, you can use [Git Bash](https://git-scm.com/downloads) or [Windows Subsystem for Linux (WSL)](https://docs.microsoft.com/en-us/windows/wsl/about)
3. You have [Hugo](https://gohugo.io/) installed on your computer.
4. You have [Pandoc](https://pandoc.org/) installed on your computer.
5. You have existing Hugo site.

## How to do it

1. Copy/move your Word document(s) to a temporary folder.
2. Copy the `createMarkdownFromWord.sh`, `cleanMarkdown.sh`, `prepend-frontmatter.sh`, `renameMarkdownFilesWithSpaces.sh`, and `main.sh` scripts to the same folder.
3. Run the `main.sh` script.
4. Update the frontmatter in the markdown file(s) to your desired content. For example, update the title.
5. Copy the markdown file(s) from the temporary folder to your Hugo site's `content\posts` folder. In this repo's case:

```bash
cp *.md ../w2wdemo/content/posts/
```

6. Copy the images folder from the temporary folder to your Hugo site's `static` folder. In this repo's case:

```bash
cp images/ ../w2wdemo/static/ -r
```

7. Issue a `hugo serve` command in your hugo site folder to start the Hugo server. Note that from within this repo when testing, the image path in the markdown will need to be changed from `/images` to `./images` for the images to be visible.
8. Open your browser and navigate to your Hugo site's URL to test the new content. Typically, `http://localhost:1313/`.
9. After testing, commit and push your code to your remote repo (GitHub, GitLab, Bitbucket, etc.) to invoke a CI/CD pipeline to deploy your Hugo site to the hosting service/CDN of your choice.
