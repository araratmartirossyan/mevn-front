FROM node:14

# даем права скаченному файлу wait и устанавливаем глобально nodemon и yarn 
RUN npm install --global yarn --force

WORKDIR /usr/src/app/mevn-front

COPY package*.json ./

# запускаем установку модулей с командой yarn
RUN yarn

EXPOSE 8080

CMD yarn serve