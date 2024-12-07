
# Docker Commands

## Docker Basics
- `docker --version` - Check Docker version.
- `docker info` - Display system-wide information about Docker.
- `docker login` - Log in to a Docker registry.
- `docker logout` - Log out from a Docker registry.

## Working with Images
- `docker images` - List all images on the system.
- `docker pull <image>` - Download an image from a Docker registry.
- `docker build -t <name> .` - Build an image from a Dockerfile.
- `docker rmi <image>` - Remove an image.

## Managing Containers
- `docker ps` - List running containers.
- `docker ps -a` - List all containers (including stopped ones).
- `docker run <image>` - Create and start a container from an image.
- `docker run -it <image>` - Run a container interactively.
- `docker stop <container>` - Stop a running container.
- `docker start <container>` - Start a stopped container.
- `docker restart <container>` - Restart a container.
- `docker rm <container>` - Remove a container.
- `docker logs <container>` - View logs of a container.

## Networking
- `docker network ls` - List all Docker networks.
- `docker network create <name>` - Create a network.
- `docker network rm <name>` - Remove a network.
- `docker network inspect <name>` - View details of a network.

## Volumes
- `docker volume ls` - List all volumes.
- `docker volume create <name>` - Create a volume.
- `docker volume rm <name>` - Remove a volume.
- `docker volume inspect <name>` - View details of a volume.

## Docker Compose
- `docker-compose up` - Start services defined in a `docker-compose.yml` file.
- `docker-compose down` - Stop and remove containers, networks, and volumes.
- `docker-compose ps` - List containers managed by Docker Compose.

## Docker System
- `docker system df` - Show Docker disk usage.
- `docker system prune` - Remove unused data (stopped containers, unused networks, dangling images).
- `docker stats` - Display resource usage of containers.

## Additional Commands
- `docker exec -it <container> <command>` - Execute a command inside a running container.
- `docker inspect <object>` - View detailed information about a container, image, or network.
- `docker save -o <file>.tar <image>` - Save an image to a tar archive.
- `docker load -i <file>.tar` - Load an image from a tar archive.

---
_This file lists essential Docker commands for reference._
