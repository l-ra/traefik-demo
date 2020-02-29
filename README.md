# Traefik docker compose demo setup
This repository contains demo of traefik setup using Docker provider to publish several services on several domain names on a single host published at HTTPS endpoint secured by LetsEncrypt certificates.

# How to run it for the first time
Prerequisites:
* internet domain you control and where you can create hosts (mydomain234.com in the examples)
* publicly available virtual/physical host with public IP address 
* exposed ports 80 and 443 of the host

Setup:
1. create/install virtual machine with Ubuntu 18.04 LTS basic install
2. the user you will need to have sudo privilege
3. clone the repository `git clone https://github.com/l-ra/traefik-demo.git`
4. enter the repo folder `cd traefik-demo` 
5. install docker using `install-docker.sh` script
6. create `setenv` file using `cp setenv.tmpl setenv`
7. edit `setenv` file to meet your needs
8. create `traefik.yaml` file using `cp traefik.yaml.tmpl traefik.yaml`
9. edit `traefik.yaml` to change email address you want to use for Let's Encrypt account
10. start the containers using `start.sh` to run in foreground or `start-daemon.sh` to run at background


