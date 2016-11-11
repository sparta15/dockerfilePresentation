FROM node

MAINTAINER Guillermo Pastor


#RUN apt-get install -y software-properties-common python
#RUN add-apt-repository ppa:chris-lea/node.js
#RUN echo "deb http://us.archive.ubuntu.com/ubuntu/ precise universe" >> /etc/apt/sources.list
#RUN apt-get update
#RUN apt-get install -y nodejs
#RUN apt-get install -y nodejs=0.6.12~dfsg1-1ubuntu1
#RUN curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
#RUN sudo apt-get install -y nodejs
RUN mkdir /var/www

ADD app.js /var/www/app.js

CMD ["/usr/bin/node", "/var/www/app.js"]
