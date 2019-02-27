
# Markdown to PDF Engine

Wraps up Pandoc and all its dependencies in a Docker container, so you can 


Uses Pandoc to compile a source file `source.md` to `out.pdf`. The dependencies are all wrapped up in





Dependencies are wrapped up in the build container, so as long as you have Docker installed, you should be good to go with:

```
make
```

For two columns, use `--variable classoption=twocolumn` ([source](https://gist.github.com/maxogden/97190db73ac19fc6c1d9beee1a6e4fc8)).

To adjust the margins, put (for example) `geometry: margin=1in` in the YAML header at the top of `source.pdf`.

More information on getting headers and footers [here](https://tex.stackexchange.com/questions/139139/adding-headers-and-footers-using-pandoc). Also points out `--number-sections`.
