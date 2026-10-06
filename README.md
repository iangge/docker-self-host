# docker-self-host
My setup for self-hosting apps with docker compose files.

## Makefile
The Makefile allows you to run basic `docker compose` commands in bash without having to manually switch to every directory with the `compose.yaml` file. For example, `make portainer.up` will `cd` into `/docker/portainer` and run `docker compose up -d`. 

## portforward-wsl2-to-lan.ps1
Due to how Docker works on Windows, you need to create a port forwarding rule between the Windows host machine and the WSL2 environment port in order to access the Docker service (i.e. Hoarder) from a different device on the same local network. 
