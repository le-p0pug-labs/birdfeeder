## General Information
Advanced multichannel file sharing web server

https://hub.docker.com/r/lep0puglabs/parrot-feeder

https://pypi.org/project/parrot-feeder/

## Installation

Build the Docker image:

```bash
docker build -t parrot-feeder -f ./Dockerfile .
```

Run the Docker image:

```bash
docker run --rm -it -p 4200:4200 parrot-feeder
```

After starting the server, you can navigate to the following URLs:

- / - for seeing the listing
- /api/upload - for access the API for uploading files
