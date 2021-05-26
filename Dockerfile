# my sphinx


# Raspberry Valley image for Sphinx, based on the official docker image of Sphinx. Extended with the
# ReadtheDocs theme (https://github.com/readthedocs/sphinx_rtd_theme)
# To learn more, visit our github repository: https://github.com/raspberryvalley/docker-rtd-sphinx
# Image available on Docker Hub: https://hub.docker.com/repository/docker/raspberryvalley/rtdsphinx
#
# Raspberry Valley is a makerspace in Sweden, Karlskrona. You can visit our sites and check what's developing: 
# * Knowledge base: https://raspberry-valley.azurewebsites.net
# * Github pages: https://github.com/raspberryvalley
# * Docker hub: https://hub.docker.com/u/raspberryvalley
# * Follow on Twitter: https://twitter.com/RaspberryValley

FROM sphinxdoc/sphinx

LABEL maintainer = "raspberryvalley@outlook.com"

WORKDIR /docs
RUN pip3 install sphinx-rtd-theme
