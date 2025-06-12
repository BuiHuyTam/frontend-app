FROM oven/bun:1 

WORKDIR /app

# Copy only the frontend package.json
COPY package.json ./

# Install dependencies for the frontend only
RUN bun install

# Copy frontend files
COPY . .

EXPOSE 3000

CMD ["bun", "run", "dev"] 