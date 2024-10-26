# 1. Which base image do you want to use?
FROM node:latest

# 2. Set the working directory inside the container.
WORKDIR /src/app

# 3. Copy Package.json 
COPY package.json ./

# 4. Install dependencies 
RUN npm install

# 5. Copy your source code file to the working directory inside the container.
COPY server.js . 

# 6. Expose the port that app runs on
EXPOSE 3000

# 6. Define the command to run the container starts.
CMD ["node", "/src/app/server.js"]
