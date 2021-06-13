FROM node:latest
#RUN npm install -g 
RUN mkdir /proxy-server
WORKDIR /proxy-server
RUN npm i absolutify
RUN yarn add express puppeteer -y
COPY server.js /proxy-server/server.js
COPY package.json /proxy-server/package.json
COPY pro.sh /pro.sh
RUN chmod +x /pro.sh
CMD /pro.sh
