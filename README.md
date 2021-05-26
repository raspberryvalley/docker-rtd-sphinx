# Sphinx docker image with RTD Theme

This is yet another Sphinx image for use in our makerspace. It contains the official Sphinx configuration together with the Read the Docs - [RTD Sphinx theme](https://github.com/readthedocs/sphinx_rtd_theme).

## Docker Image

Our Docker image is based on the official [Sphinx image](https://hub.docker.com/r/sphinxdoc/sphinx). It contains a trivial installation step to install the RTD theme.

## Getting the Sphinx Image

You can pull the image from our [Raspberry Valley Docker Hub](https://cloud.docker.com/u/raspberryvalley/repository/docker/raspberryvalley/rtdsphinx). Simply type the following:

```bash
docker pull raspberryvalley/rtdsphinx:1.0
```

## Running the image

Running the image from CLI is well described in the official documentation. Below is a copy, for your convenience.

**Creating a Sphinx project**:

```bash
docker run -it --rm -v /path/to/document:/docs raspberryvalley/rtdsphinx:1.0 sphinx-quickstart
```

**Building documentation**:

```bash
# build HTML
docker run --rm -v /path/to/document:/docs raspberryvalley/rtdsphinx:1.0 make html

# or build EPUB
docker run --rm -v /path/to/document:/docs raspberryvalley/rtdsphinx:1.0 make epub
```

## Running the image with our PowerShell script

You can also simplify your life, by running our PowerShell script ```docker-sphinx.ps1```. Simply grab the file, put it somewhere on the Path, and navigate to the folder where you documentation sits (or where you want to create a new document).

```bash
C:mydocs> docker-sphinx.ps1

Sphinx Docker Image launcher
=============================
This script launches the Raspberry Valley Sphinx Docker image to create or build documentation
from .RST files. Launches in the current directory.

Docker Hub : https://hub.docker.com/repository/docker/raspberryvalley/rtdsphinx

Unknown parameter - Usage: docker-mkdocs.ps1 [new|make]

# create new, sample repo
C:mydocs> docker-sphinx.ps1 new

# or build HTML documentation
C:mydocs> docker-sphinx.ps1 make
```

## Building your own

If you don't want to use our pre-made image, simply build your own. This is a sign of sanity: be careful about using 3rd party images: a bit of paranoia helps.

To build your own image, follow the steps below:

* clone this repository
* Open up PowerShell (or the command prompt) and navigate to the repository build folder (where the Dockerfile is located)
* Update/modify the Dockerfile to your liking, then invoke the build command:

```bash
docker build -t "raspberryvalley/rtdsphinx:1.0" .
```

## About

Raspberry Valley is a maker community in Karlskrona, Sweden, sponsored by [Dynapac](https://dynapac.com/en). We run makerspaces every week, working with Raspberry Pis, Arduinos and other interesting hardware.

This repository is here to support our community of makers. A lot of our achievements are based and inspired by the community at large. We wish to pay back and share our experiences and lessons learned. Join us!

You can find our pages here: [Raspberry Valley](https://raspberry-valley.azurewebsites.net). You can also join us on [Twitter](https://twitter.com/RaspberryValley) or check [Docker Hub](https://hub.docker.com/r/raspberryvalley/) for images of interest.

## Links

Raspberry Valley makerspace links

* [Raspberry Valley](https://raspberry-valley.azurewebsites.net) - Other things we make and do
* [Raspberry Valley on Twitter](https://twitter.com/RaspberryValley)
* [Raspberry Valley on Github](https://github.com/raspberryvalley)
* [Raspberry Valley Docker Hub Images](hub.docker.com/r/raspberryvalley/)
