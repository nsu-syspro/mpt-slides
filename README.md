# Presentation template

Sample template to get you started with Pandoc + Beamer presentations.

Fork this repository to bootstrap your presentation.

Source markdown files located at [src](src) directory.
Result is published at [publish](publish) directory.

Sample: [src/sample.md](src/sample.md)  
Result: [publish/sample.pdf](publish/sample.pdf)

## Building

Following command builds your presentations into `.pdf`:

```
make
```

## Publishing

To "publish" the final `.pdf` you can use the following command which builds and copies `src/*.pdf` into `publish/*.pdf`
which can then be committed to the repo:

```
make publish
```

## Variations

More specialized use cases can be found as separate branches:

- Support for cyrillic characters: [lang/cyrillic](https://github.com/liontiger23/presentation-template/tree/lang/cyrillic)
