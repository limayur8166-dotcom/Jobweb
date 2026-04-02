FROM node:18

WORKDIR /app

# Copy only package files first (important for caching)
COPY package*.json ./

# Install dependencies inside container
RUN npm install

# Copy rest of app
COPY . .

EXPOSE 3000

CMD ["npm", "start"]