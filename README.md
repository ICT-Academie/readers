# Readers
We'll have the Software Development readers stored in Markdown in the repository.

## Advantages
- Every change can be reviewed through pull requests
- Version control on the actual content
- Single source of truth for all readers.
- Easy export to PDF through Pandoc

## Getting started
There are a few prerequisites to building a reader. We use Pandoc with Xelatex to build the readers, and have Open Sans as the font.

### Prerequisites
1. Install the font
Get the Open Sans font from [here](https://fonts.google.com/specimen/Open+Sans) and install it on your system.

2. Install Pandoc
Follow the installation instructions [here](https://pandoc.org/installing.html), or on Mac you can do:
```bash
brew install pandoc
```

3. Install xelatex
On Mac you can install it through mactex:
```bash
brew install mactex
sudo tlmgr install latexmk
```

The Windows equivalent is supposedly [MikTex](https://miktex.org/download) but it hasn't been tested yet.

### Build a reader
Building a reader:
```bash
make reader=versie-beheer build
```

Building a reader and opening it immediately after:
```bash
make reader=versie-beheer buildopen
```

The different readers you can build:
```bash
make reader=versie-beheer buildopen
make reader=javascript buildopen
```


### Distribution
For now we'll keep the generated readers in the dist folder and commit them in Git. That way we'll have a single source of truth. We can figure out a better way for versioning and storing assets later.
