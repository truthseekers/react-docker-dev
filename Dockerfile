FROM node:13.12.0-alpine

#set working directory
WORKDIR /app

ENV PATH /app/node_modules/.bin:$PATH

# add app
COPY ./ui ./

RUN npm install
RUN npm install react-scripts@3.4.1 -g

#start app
CMD ["npm", "start"]
