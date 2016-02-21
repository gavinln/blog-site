# blog-site
Blog site hosted on github implemented using Hugo, a static web site generator

[Hugo][10] is a static web site engine that is written in the [Go][20]
language.

[10]: https://gohugo.io/
[20]: https://golang.org/

## Create a Hugo site

The [instructions][30] below can be used to create a Hugo web site.

[30]: http://gohugo.io/overview/introduction

1. Create a new hugo site
    ```
    hugo new site --format yaml hugo
    ```

2. Change to the site
    ```
    cd hugo/
    ```

3. Clone a theme
    ```
    git submodule add https://github.com/spf13/hyde.git themes/hyde
    ```

4. Add the following line to config.yaml to use yaml
    ```
    metadataformat: "yaml"
    ```

5. Create a new post
    ```
    hugo new post/welcome.md
    ```

6. Add some text to the post
    ```
    echo 'hello, world' >> content/post/welcome.md
    ```

7. Change the post so it is no longer a draft by deleting the "draft" line

8. Use the theme by adding the line to config.yaml
    ```
    theme: "hyde"
    ```

9. Run the server
    ```
    hugo server -w -b 192.168.33.10 --bind 0.0.0.0
    ```

## Initial blog creation on github

The static blog created by Hugo can be hosted on Github using
[Github pages][40]

[40]: http://gohugo.io/tutorials/github-pages-blog/#find-a-home-for-your-files

1. Clone a github repository for your blog site
    ```
    git clone git@github.com:gavinln/blog-site.git
    ```

2. Create a new orphand branch (no commit history) named gh-pages
    ```
    git checkout --orphan gh-pages
    ```

3. Unstage all files
    ```
    git rm --cached $(git ls-files)
    ```

4. Grab one file from the master branch so we can make a commit
    ```
    git checkout master README.md
    ```

5. Add and commit that file
    ```
    git add .
    git commit -m "INIT: initial commit on gh-pages branch"
    ```

6. Push to remote gh-pages branch
    ```
    git push origin gh-pages
    ```

7. Return to master branch
    ```
    git checkout master
    ```

8. Remove the public folder to make room for the gh-pages subtree
    ```
    rm -rf public
    ```

9. Add the gh-pages branch of the repository. It will look like a folder named public
    ```
    git subtree add --prefix=public git@github.com:gavinln/blog-site.git gh-pages --squash
    ```

10. Pull down the file we just committed. This helps avoid merge conflicts
    ```
    git subtree pull --prefix=public git@github.com:gavinln/blog-site.git gh-pages
    ```

11. Run hugo. Generated site will be placed in public directory
    ```
    hugo
    ```

12. Add everything
    ```
    git add -A
    ```

13. Commit and push to master
    ```
    git commit -m "Updating site" && git push origin master
    ```

14. Push the public subtree to the gh-pages branch
    ```
    git subtree push --prefix=public git@github.com:gavinln/blog-site.git gh-pages
    ```

## Access your blog

The blog will be available at `<http://gavinln.github.io/blog-site>`
