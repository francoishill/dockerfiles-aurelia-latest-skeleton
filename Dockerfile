FROM node:5.1.0

RUN npm install -g gulp
RUN npm install -g jspm

# Setup the script to run on startup
ADD ./install_and_run_script.sh /usr/bin/install_and_run_aurelia_skeleton.sh
RUN chmod +x /usr/bin/install_and_run_aurelia_skeleton.sh

# replace this with your application's default port
EXPOSE 9000
WORKDIR /src
CMD /usr/bin/install_and_run_aurelia_skeleton.sh