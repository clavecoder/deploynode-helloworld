# deploynode-helloworld

Updated implementation of the "Hello World" Docker image from [Deploying Node.js].

## Background

Developed from the [jalidev] Ubuntu environment, which currently targets Vagrant on Windows 10.

In `jalidev`, the installation of Docker is not yet automated. Please see the jalidev [Vagrantfile] for more information.

## Run

Currently, `jalidev` assumes your git repositories are rooted at `C:\git`.

1. Clone jalidev and this repo from `C:\git`.
1. Start `jalidev`
   ```bat
   cd C:\git\latticework\jalidev
   vagrant up
   ```
   Ubuntu will start.
1. In Ubuntu, start a Terminal.
1. In the Terminal, navigate to `deploynode-helloworld`
   ```bash
   cd /git/clavecode/deploynode-helloworld
   ```
1. Build Docker image
   ```bash
   sudo docker build -t docker/example
   ```
1. Run 2 Docker containers
   ```bash
   sudo docker run -p 49001:8087 -d docker/example
   sudo docker run -p 49002:8087 -d docker/example
   ```
1. From FireFox in Ubuntu, in two separate tabs, navigate to each service:
   `https://localhost:49001` and `https://localhost:49002` 

[Deploying Node.js]: http://www.amazon.com/Deploying-Node-js-Sandro-Pasquali/dp/1783981407
[jalidev]: https://github.com/latticework/jalidev
[Vagrantfile]: https://github.com/latticework/jalidev/blob/master/Vagrantfile
