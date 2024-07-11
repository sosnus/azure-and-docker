# COMMAND
How to push docker image to registry hosted on OVH?
## Build (on dev machine)
``` bash
# 1
docker login ?????.container-registry.ovh.net
# login: ???
# pass: ?????
# (provide login, provie pass)

# 2
git clone https://github.com/sosnus/azure-and-docker.git

# 3
cd azure-and-docker/app/

# 4
docker build --tag ?????.container-registry.ovh.net/wt-project/yourname .

# 5
docker push ?????.container-registry.ovh.net/wt-project/yourname

```

## Run (on target machine Engicam SMARC)
``` bash
# 1
docker login ?????.container-registry.ovh.net
# login: ???
# pass: ?????
# (provide login, provie pass)

# 2
docker pull ?????.container-registry.ovh.net/wt-project/yourname

```