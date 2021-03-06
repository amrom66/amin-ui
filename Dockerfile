FROM node:14 as build-stage

WORKDIR /app
ADD . .
RUN npm install -f
RUN npm run build:prod

FROM nginx
COPY --from=build-stage /app/dist /usr/share/nginx/html

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
