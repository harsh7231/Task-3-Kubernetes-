FROM node:14-alpine
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 3000
CMD [ "npm", "start" ]
docker build -t my-app:1.0.0 .
minikube start --driver=docker
helm install my-mongodb stable/mongodb
kubectl apply -f my-app.yaml
