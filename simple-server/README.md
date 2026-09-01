### Simple server
goal: create two containers using docker-compose.yml; one will be an extremely simple server, the other simple client; make the client fetch index.md from the server and print it

steps:
- create the Dockerfiles for the two images
    - both must update apt, server will then install python, client curl
    - copy the index.md file to server
    - start running the server using python -m
    
- create the docker-compose.yml file
    - set up dependency of client on server
    - set up the network

- docker compose up -d --build
- start the interactive shell from client
- use curl manually to test
