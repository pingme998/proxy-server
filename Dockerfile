FROM kalilinux/kali-rolling
RUN apt update -y
WORKDIR /proxy-server
RUN apt install nodejs -y 
#npm install --global yarn
RUN apt install wget -y
RUN apt remove cmdtest -y
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get update
RUN apt-get update -y
RUN apt-get install yarn -y
#RUN apt install npm -y
RUN yarn add puppeteer -y
RUN mkdir /proxy-server
COPY server.js /proxy-server/server.js
COPY package.json /proxy-server/package.json
COPY pro.sh /pro.sh
RUN chmod +x /pro.sh
CMD /pro.sh
