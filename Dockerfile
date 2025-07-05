FROM node:20-alpine

# Install dependencies
RUN npm install -g serve

# Create app directory
WORKDIR /app

# Copy code files
COPY . .

EXPOSE 80

# Serve index.html with serve
CMD ["serve", ".", "-l", "80"]
