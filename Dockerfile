# Use the very small Nginx Alpine image as base
FROM nginx:alpine

# Metadata (Optional)
LABEL maintainer="toughIQ <toughiq@gmail.com>"
LABEL description="Conway's Game of Life - Web Container"
LABEL repository="https://github.com/toughIQ/game-of-life"

# Copy all files from the current directory to the Nginx default directory.
# This assumes you have created an 'index.html' (symlink or copy of game-of-life.html)
# in your repository so Nginx can serve it by default.
COPY . /usr/share/nginx/html

# Nginx listens on port 80 by default.
# No internal configuration change is needed.
# Port mapping (e.g., host 8080 -> container 80) is handled by the container runtime.
#
# Build command:
# Docker: docker build -t game-of-life .
# Podman: podman build -t game-of-life .
#
# Run command:
# Docker: docker run -d -p 8080:80 game-of-life
# Podman: podman run -d -p 8080:80 game-of-life
#
# After starting, access the game at: http://localhost:8080

# Document that the container listens on port 80
EXPOSE 80

# The default start command of Nginx (daemon off) is preserved,
# so no CMD instruction is needed.
