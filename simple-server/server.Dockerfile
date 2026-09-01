FROM ubuntu:latest
RUN apt update
RUN apt install -y python3

WORKDIR /server-stuff
COPY server-files/index.md .

# using RUN here would cause the image building never to finish: you must use the CMD syntax where the command is run only in the living container
# RUN python3 -m http.server 8000
CMD ["python3", "-m", "http.server", "8000"]

