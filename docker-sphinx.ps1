# Script to build an existing mkdocs site using the Raspberry Valley Docker image

Write-Host 
"Sphinx Docker Image launcher
=============================
This script launches the Raspberry Valley Sphinx Docker image to create or build documentation 
from .RST files. Launches in the current directory.

Docker Hub : https://hub.docker.com/repository/docker/raspberryvalley/rtdsphinx
"

$param1=$args[0]

switch ($param1)
{
    "new" {
        Write-Host("Creating quickstart site in $pwd");
        $command = "docker run -it --rm -v $(pwd):/docs raspberryvalley/rtdsphinx:1.0 sphinx-quickstart";
        Invoke-Expression($command);
        Break
    }
    "make" {
        Write-Host("Building HTML Sphinx documentation in $pwd");        
        $command = "docker run --rm -v $(pwd):/docs raspberryvalley/rtdsphinx:1.0 make html";
        Invoke-Expression($command);
        Break
    }
    default {
        Write-Host("Unknown parameter - Usage: docker-mkdocs.ps1 [new|make] `n");
        Break
    }
}
