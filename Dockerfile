# DOCKER-VERSION 1.11.1

# From Deploying Node.js Chapter 2
# Updated for current versions of software as of creation.
# Please add an issue for any out of date commands.
# See also https://docs.docker.com/engine/examples/nodejs_web_app/
# See also https://github.com/nodejs/docker-node
# See also https://nodejs.org/en/download/package-manager/#enterprise-linux-and-fedora


FROM    centos:7.2.1511

# # Enable Extra Packages for Enterprise Linux (EPEL) for CentOS
# RUN     yum install -y epel-release
# 
# # Install Node.js and npm
# RUN     yum install -y nodejs npm

RUN 	yum install -y curl
RUN     curl --silent --location https://rpm.nodesource.com/setup_6.x | bash -
RUN     yum -y install nodejs

# Bundle app source
COPY    . /src

# Install app
# ENV     NODE_ENV production
ENV     NPM_CONFIG_LOGLEVEL info

RUN     cd /src; npm install


EXPOSE  8087

# CMD ["npm", "start"]
CMD ["node", "/src/server.js"]