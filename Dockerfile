FROM node:latest
RUN npm install -g npm@7.17.0
#RUN npm install -g 
RUN mkdir /proxy-server
WORKDIR /proxy-server
RUN npm i absolutify
RUN npm i puppeteer
COPY server.js /proxy-server/server.js
COPY package.json /proxy-server/package.json
COPY pro.sh /pro.sh
RUN chmod +x /pro.sh
CMD /pro.sh
