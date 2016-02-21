---
date: 2016-02-20T11:09:21-08:00
title: Welcome
---

This web site is created using [Hugo][10] a static web site generator.

[10]: https://gohugo.io/

<img src="/img/hugo/hugo-logo.png" width="200" height="226"/>

## Hyde Theme

Hyde is an elegant open source and mobile first theme for Hugo. [Hyde][20] a
two column theme that was ported from the theme of the same name made for
[Jekyll][30] another static web site generator writen in [Ruby][40].

[20]: https://github.com/spf13/hyde
[30]: https://jekyllrb.com/
[40]: https://www.ruby-lang.org/

## Making a post using Hugo

The content in Hugo is organized in sections. To make a new content file called
`welcome.html` in the section `post` run the following.

```bash
hugo new post/welcome.md
```

## Adding images

To add an image to a markdown document you can use the following three options.

1. Markdown syntax

    ```
    ![Hugo](/img/hugo/hugo-logo_small.png)
    ```

2. HTML syntax

    {{< highlight html >}}<img src="/img/hugo/hugo-logo.png" width="200" height="226"/>{{< /highlight >}}

3. Hugo [shortcodes](https://gohugo.io/extras/shortcodes/)

    {{\<figure src="/img/hugo/hugo-logo.png" width="200" height="226"\>}}






