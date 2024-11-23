FROM node:18

WORKDIR /src

COPY package*.json ./

RUN npm install

COPY . .

ENV PORT=4291

ENV MODEL_URL=https://storage.googleapis.com/model-bucket-daddiyan/model-ml/model.json

CMD ["npm", "start"]