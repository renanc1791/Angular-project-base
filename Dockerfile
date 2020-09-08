# Stage 0
FROM node as node
WORKDIR /app
COPY ./ /app
RUN npm install
ARG configuration=production
RUN npm run build --prod --configuration=${configuration}

# Stage 1
FROM nginx:alpine
COPY --from=node /app/dist/angular-project-base /usr/share/nginx/html
COPY ./nginx.conf /etc/nginx/conf.d/default.conf