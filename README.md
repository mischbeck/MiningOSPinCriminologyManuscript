# Introduction

This repository contains the quarto project for the article "[Mining Transparency: Assessing Open Science Practices in Crime Research Over Time Using Machine Learning](https://doi.org/10.31235/osf.io/ah2cv_v2)".

This project only contains the replication files for the manuscript. The scraping, metadata download and classifier code is available in the method report which can be found in the OSF repository.

## How to run

On linux:

```bash
git clone https://github.com/mischbeck/MiningOSPinCriminologyManuscript
cd MiningOSPinCriminologyManuscript
/opt/R/4.5.3/bin/R
```

In R:

```R
install.packages("renv")
renv::restore()
q()
```

Build using the makefile:

```bash
make all
```

Windows:

```bash
install linux, follow the above instructions
```

## Technical Requirements

The method report requires rather intense calculations, this manuscript should run on a simpler machine. The project was written and tested on a linux machine but should also run on windows and macOS. The project is set up to run in a virtual R environment using the `renv` package, which ensures that all necessary packages and their specific versions are installed for the project to run correctly. The project also relies on Quarto for rendering the documents.

### Dependencies

- R (4.5.3)
- renv R-library
- Quarto
- pandoc

There are two packages that might need to be installed beforehand:

- [gtsummary](https://www.danieldsjoberg.com/gtsummary/)
- [ggthemr](https://github.com/Mikata-Project/ggthemr)

For the R package `gtsummary`, you'll need to install the `libv8` library manually if on linux. Windows installation should work right away, sefer to the [manual](https://www.danieldsjoberg.com/gtsummary/).  See `globals.R` for more info and all necessary packages that should (!) be automatically installed when you run the `renv::restore()` command. More info on how to install on arch can be found [here](https://aur.archlinux.org/packages/v8-r). Alternatively, the environment variable `DOWNLOAD_STATIC_LIBV8` can be set to "1". For more on requirements and how to install, see the info in the `globals.R` file.

ggplot plots are generated using ggthemr. ggthemr can be installed using devtools. the installation is explained in the [git repository](https://github.com/Mikata-Project/ggthemr) of `ggthemr`.

> [!WARNING]
> It is important to install the dependencies of gtsummary as well as the R packages devtools and ggthemr before restoring the virtual R environment.

It is also important to note that a full run of the document requires environment variables to be set in the `.Renviron` file. Here is an example:

```{bash}
❯ cat ~/.Renviron 
OPENAI_API_KEY = "sk-proj--[...]"
DOWNLOAD_STATIC_LIBV8=1
RENV_CONFIG_SANDBOX_ENABLED = FALSE
```

`OPENAI_API_KEY` has to contain the api-key for the OpenAI API, `DOWNLOAD_STATIC_LIBV8` is set to 1 for a quicker install of `libv8` (see the installation instructions of `gtsummary` on linux) and `RENV_CONFIG_SANDBOX_ENABLED` is enabled simply to reduce warnings. The latter can be left out with no negative effect except some warnings during all steps involving multiprocessing.

Quarto Extensions:

- [kapsner/authors-block](https://github.com/kapsner/authors-block): brings the capability to add an author-related header block when rendering docx-documents with Quarto.

## License
This work is licensed under a [Creative Commons Attribution-ShareAlike 4.0 International License](https://creativecommons.org/licenses/by-sa/4.0/).

