# Traefik docker compose demo setup
This repository contains demo of traefik setup using Docker provider to publish several services on several domain names on a single host.

# How to run it for the first time
Prerequisites:
* internet domain you control and where you can create hosts (mydomain234.com in the examples)
* publicly available virtual/physical host with public IP address 

Setup:
1. create/install virtual machine with Ubuntu 18.04 LTS basic install
2. the user you will need to have sudo privilege
3. install docker using `install-docker.sh` script
4. create `setenv` file using `cp setenv.tmpl setenv`
5. edit `setenv` file to meet your needs
6. edit traefik.yaml to change email address you want to use for letsencrypt account
7.    