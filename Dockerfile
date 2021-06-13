FROM kalilinux-kalirolling
RUN apt update -y
RUN apt install nodejs -y 
RUN apt install yarn -y
#RUN apt install npm -y
RUN yarn add express puppeteer 
RUN mkdir /proxy-server
COPY server.js /proxy-server
COPY /proxy-server
COPY pro.sh /pro.sh
RUN chmod +x /pro.sh
CMD pro.sh
