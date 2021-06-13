FROM node:latest
RUN npm install -g yarn
RUN mkdir /proxy-server
WORKDIR /proxy-server
RUN yarn add puppeteer -y
COPY server.js /proxy-server/server.js
COPY package.json /proxy-server/package.json
COPY pro.sh /pro.sh
RUN chmod +x /pro.sh
CMD /pro.sh
