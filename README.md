# docker-self-host
My setup for self-hosting services with docker compose files. These are mainly web apps and game servers I found to practice getting more comfortable with docker. The sources of the `compose.yaml` files and scripts are linked in the comments. Any additional configurations needed for the services (mainly env variables) are also commented.   

## Makefile
The Makefile allows you to run basic `docker compose` commands in bash without having to manually switch to every directory with a `compose.yaml` file. For example, `make portainer.up` will `cd` into `/docker/portainer` and run `docker compose up -d`. 

## portforward-wsl2-to-lan.ps1
Due to how Docker works on Windows, you need to create a port forwarding rule between the Windows host machine and the WSL2 environment port in order to access the Docker service (i.e. Hoarder) from a different device on the same local network. 
