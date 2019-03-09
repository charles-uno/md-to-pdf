
# Markdown to PDF Engine

Uses Pandoc to compile a source file `source.md` to `out.pdf`. The dependencies are all wrapped up in a Docker container. As long as you have Docker installed, you should be good to go with:

```
make
```

Pandoc uses LaTeX for typesetting, which uses pretty wide margins. If that's not your jam, add the following line to the YAML header in `source.md` (up there with the author name and title):

```
geometry: margin=1in
```

Alternatively, to get two columns, use:

```
classoption: twocolumn
```

It's possible to do headers and footers as well. For more information, see [here](https://tex.stackexchange.com/questions/139139/adding-headers-and-footers-using-pandoc).
