## Getting Started with Docker

### What is Docker

Simply put, [*Docker*](http://www.docker.com) is an Open Source program that enables a Linux application and its dependencies to be packaged as a *container*.  Unlike other virtualization solution, Docker don't try to emulate the hardware. As a result, provisoning, deploying and launching docker containers is fast.
Thanks to the dockerfile, the *recipe* to provisoning a particular container can be shared, versionned (using *git* for example) and used by other dockerfiles as a dependency---hence enabling modularity---and, most importantly, is portable.  You will use the same dockerfile to deploy a container to your developer laptop as you would on a server in the cloud.


### Why should I care as an Android developer?

The Docker project was open sourced on March 2013.  In this short lapse of time, Docker managed to become immensly popular among the software development community, and is now supported by most of the major cloud plateform providers---such as Red Hat, Google, and Amazon.

But, as an Android Developer, the main advantage of using docker is that you could use it for versionning your software development environment and to distributed it. You could also version it in git to capture it's evolution, and even revert some changes if you need to.  It could anihilate completly the *but it works on my machine* syndrome by allowing you to develop, compile, test and deploy the same controlled---contained---environment over and over independently of the underlying hardware.

Another use case I see for Docker, is when a developer join an existing team. All you have to do to set her up and running is to share with her your docker repository pointing to your dockerfile.  Docker will provisionning automatically her work environment in less than minutes---yes **minutes**---not days. If she mess up her development environment somehow, she can just destroy her container and fetch a new one.

It may seem overkill right now, but you will probably thank me someday! When your hard drive fail, when you lost your laptop or if you just had a bad Friday, and want a fresh start on Monday. The overhead of running apps over a thin virtualization layer---instead on the *real machine*---is negilgeable in comparison of the hours you will save down the road.

### Setting up Docker

Setting up Docker on Linux is straight forward as long as your Linux distribution comes with a recent 64 bits kernel (version 3.10 or better).  For this book, I used Linux Mint 17 distribution (a derivative of Ubuntu) and was able to setup Docker in less than 5 minutes---your mileage may vary.

On Windows and OSX operating systems, because they don't run the Linux Kernel natively, you have to use an installer named *Boot2Docker* which consist of a small Linux virtual machine (less than 27 MB in size) running on Virtual Box with Docker pre-installed. Boot2Docker boots in 5 seconds.  I will describe the installation process using the 2 methods.

#### Linux installation

In this section, I will describe all the steps necessary to install Docker on Ubuntu.  If you happen to use other Linux distributions---such as Fedora, Arch or SUSE---please, consult the official online documentation for instructions for your particular distribution: [https://docs.docker.com/installation/#installation](https://docs.docker.com/installation/#installation)

##### Requirement

A 64 bit installation is required to run docker containers.  Your Linux distribution must also run a recent kernel (3.10 or more recent version). Older version may lack some required features needed by Docker.

To check if your version is compatible, open a Linux terminal and enter the following command: 

~~~
uname -a
~~~

That command should output something similar to this:

`Linux esavard-UX32VD 3.13.0-24-generic #47-Ubuntu SMP Fri May 2 23:30:00 UTC 2014 x86_64 x86_64 x86_64 GNU/Linux`.

Where *`3.13.0-24-generic`* is the version of the kernel, and *`x86_64`* is the architecture (in this case, Intel 64 bits processor). If you read something like *x86_32* instead and a version lower than 3.10, you might have to upgrade your linux distribution to a newer---64 bits---version that can support Docker.

For the rest of this book, we will assume that you are using at least [Ubuntu Trusty 14.04](http://www.ubuntu.com/download/desktop) or a derivative. If it's not your case, please, refer to the Docker official documentation or ask for help on the book's forum.

1) Open a terminal and type the following commands:
`sudo apt-get update`
2) Download docker binaries, and install the additional packages (if needed), do the following:
`wget -qO- https://get.docker.com/ | sh`
3) to use docker as non-root (without sudo) Do:
`sudo usermod -aG docker ```whoami``` 

4) Close your current terminal and open a new one (to reload any sripts or environment variables the Docker installation may have added).
5) Test the installation: `sudo docker run hello-world`

You should see something similar to the expected output below.

~~~~
Unable to find image 'hello-world:latest' locally
511136ea3c5a: Pull complete 
31cbccb51277: Pull complete 
e45a5af57b00: Pull complete 
hello-world:latest: The image you are pulling has been verified. 
Important: image verification is a tech preview feature and should not 
be relied on to provide security.
Status: Downloaded newer image for hello-world:latest
Hello from Docker.
This message shows that your installation appears to be working correctly.

To generate this message, Docker took the following steps:
 1. The Docker client contacted the Docker daemon.
 2. The Docker daemon pulled the "hello-world" image from the Docker Hub.
    (Assuming it was not already locally available.)
 3. The Docker daemon created a new container from that image which runs the
    executable that produces the output you are currently reading.
 4. The Docker daemon streamed that output to the Docker client, which sent it
    to your terminal.

To try something more ambitious, you can run an Ubuntu container with:
 $ docker run -it ubuntu bash
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


If instead you see something like the following message:

~~~
FATA[0000] Cannot connect to the Docker daemon.
Is 'docker -d' running on this host? 
~~~

Then you may have to restart---or start---the docker deamon using the command: `sudo service docker start` and re-run the installation test:

`sudo docker run hello-world`

If your installation was a success, proceed with the next section [Hello Docker][]. If not, as always, ask for help on the book's forum.


#### Windows installation


#### Hello Docker


#### The Docker public repository

Once you have setup your own docker project on GitHub---or fork an existing one that you have, you can ultimately make it public on the Docker's repository. You can access it from: [https://registry.hub.docker.com/](https://registry.hub.docker.com/)


### The Agile Android Software Development containers


### Going further

If you want more examples and ideas on how to use Docker, visit: http://docs.docker.com/userguide/

