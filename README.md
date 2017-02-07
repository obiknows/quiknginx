# quiknginx
a fast ass static server container. put it online really quick, edit really easy

can serve a file full of html and static files, *compiled css & js*.

# how to build

# how to use

1. from this directory, build it 

`docker build -t quiknginx .`

2. then run it (make sure to pick names & ports)

`docker run -d -p <outside_port>:80 --name [container_name] [image_name]`