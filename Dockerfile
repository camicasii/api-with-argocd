
FROM node:16-alpine
 
WORKDIR /user/src/app
 
COPY . .
 
# RUN yarn install --frozen-lockfile --production
RUN yarn install 


 
RUN yarn build
 
USER node
 
CMD ["npm", "run", "start:prod"]