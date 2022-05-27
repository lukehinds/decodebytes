# Choose the ghost version
FROM ghost:latest
LABEL maintainer="lukehinds"

# Set the working directory.
WORKDIR /var/lib/ghost

RUN ghost config url http://localhost:3102

EXPOSE 2368
