# 1. Start with a tiny Linux OS (Alpine is super light)
FROM alpine:latest

# 2. Create a folder inside the container to work in
WORKDIR /app

# 3. Copy your script from your laptop into the container
COPY setup_lab.sh .

# 4. Make the script executable inside the container
RUN chmod +x setup_lab.sh

# 5. Tell the container what to do when it turns on
ENTRYPOINT ["./setup_lab.sh"]
