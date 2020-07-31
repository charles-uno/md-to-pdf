# Markdown to PDF Engine

Use Pandoc to compile a Markdown source file to PDF. Dependencies are all bundled into the Docker container. Provided you have Docker installed, you can build the example `src/dummy.md` to `out/dummy.pdf` via:

```
make dummy
```

Build recipes are dynamic based on the contents of `src`, so no finagling with the `Makefile` should be necessary as new files are added.

Document parameters can be modified via the YAML header in the source document, where author and title are set. For example, to Widen the narrow LaTeX margins, use:

```
geometry: margin=1in
```

Or to use a two-column format, use:

```
classoption: twocolumn
```

It's also possible to do headers and footers. For more information, see [here](https://tex.stackexchange.com/questions/139139/adding-headers-and-footers-using-pandoc).
