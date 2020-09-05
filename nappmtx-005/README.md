# nappmtx

nappmtx is a https server based on node and express for serving static files.

PREREQUISITES
---
For running nodflash you need the following software components on your host system

Name           | Downloads    
-------------- | --------------- 
openssl        | [https://www.openssl.org/source/](https://www.openssl.org/source/)
docker         | [https://docs.docker.com/install/](https://docs.docker.com/install/)
node.js        | [https://nodejs.org/en/download/](https://nodejs.org/en/download/)

Setup
---
The following brief description explains how you can run nodflash

        $ cd $HOME
        $ git clone https://github.com/schneidermatix/nappmtx
        $ cd $HOME/nappmtx
        $ . ./.apprc
        $ install
        $ mkssl

Static Files
---
For instance if you have your static files (html/js/css) in a folder called '$HOME/mypublic'
then it is necessary to copy these files to '$HOME/nappmtx/public' before you can run the Docker container as it is decribed in the next step.
        
Docker
---
If everything is in place you can build the Docker image and run the Docker container with the following
commands from the command line.

        $ cd $HOME/nappmtx
        $ build
        $ serve

After a successfull installation your files should be served by nappmtx and be available under the following url

        https://localhost:8443/

Contributing
---
If you find some bugs or have any requests/suggestions don't hesitate to open an issue 
or make a pull request.
