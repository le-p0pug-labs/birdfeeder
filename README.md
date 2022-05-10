## General Information
Advanced multichannel file sharing web server

## Installation

Build the Docker image:

```bash
docker build -t parrot-feeder -f ./Dockerfile .
```

Run the Docker image:

```bash
docker run --rm -it -p 4200:4200 parrot-feeder
```

## Configuration

parrot-feeder also includes a telegram bot to fetch files from a remote machine.

* Open `config.py`, set your **TOKEN** (string) and **WHITELIST** (list of user IDs)
* Open `paths.py`, add aliases and paths to PATH_MAP:
```python
PATH_MAP = {
    "me": "squire.log",
    "flask": "myflaskapp/logs/errors.log",
}
```

Start the bot. You are ready to fetch files from any device, e.g.
`/fetch me` to get `squire.log`
